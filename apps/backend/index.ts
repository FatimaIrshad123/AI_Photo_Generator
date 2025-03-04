import express from "express";
import { TrainModel, GenerateImage, GenerateImagesFromPack } from "common/types"
import { prismaClient } from "db";

const PORT = process.env.PORT || 3000;

const app = express();

app.post("ai/training", (req, res) => {

})

app.post("ai/generate", (req, res) => {
    
})

app.post("pack/generate", (req, res) => {
    
})

app.get("pack/bulk", (req, res) => {
    
})

app.get("/image", (req,res) => {
    
})

app.listen(PORT, () => {
    console.log("Hi there")
})