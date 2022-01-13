from paddlenlp.transformers import AutoTokenizer
from paddlenlp.transformers import AutoModel

model_name = "bert-wwm-ext-chinese"

model = AutoModel.from_pretrained(model_name)
tokenizer = AutoTokenizer.from_pretrained(model_name)

print("model should be downloaded")
