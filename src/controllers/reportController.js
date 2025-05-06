const PDFDocument = require("pdfkit");
const alunoModel = require("../models/alunoModel");

const exportAlunoPDF = async (req, res) => {
    try {
        const alunos = await alunoModel.getAlunos();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=alunos.pdf");

        const doc = new PDFDocument({ margin: 50 });
        doc.pipe(res);

        doc.fontSize(20).text("Relatório de Alunos", { align: "center", underline: true });
        doc.moveDown(2);

        doc.fontSize(12).font("Helvetica-Bold");
        doc.text("Id", 50, doc.y);
        doc.text("Nome do Aluno", 100, doc.y);
        doc.text("", 250, doc.y);
        doc.moveDown(0.5);


        alunos.forEach((aluno) => {
            doc.fontSize(10).font("Helvetica");
            const currentY = doc.y;

            doc.text(aluno.id.toString(), 50, currentY, { width: 40 });
            doc.text(aluno.aluno_name, 100, currentY, { width: 180 });
            doc.text(aluno.aluno_idade, 100, currentY, { width: 180 });
            doc.text(aluno.editor_name, 300, currentY, { width: 200 });
            doc.text(aluno.editor_idade, 300, currentY, { width: 200 });

            doc.moveDown();
        });

        doc.end();
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: "Erro ao gerar o PDF" });
    }
};

module.exports = { exportAlunoPDF };