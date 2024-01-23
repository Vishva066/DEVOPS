import mongoose from "mongoose";

const dataSchema = new mongoose.Schema({
    key: {
        type: String,
        default: "store",
    },
    data: {
        type: String,
        required: true,
    }
});

const DataModel = mongoose.model("datastore", dataSchema);

export default DataModel;