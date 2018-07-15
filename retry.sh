export BUCKET=newtpu
cd tpu/models/official/mobilenet
python mobilenet.py --alsologtostderr --master=$TPU_WORKER \
--data_dir=gs://$BUCKET/tfRecords --model_dir=gs://$BUCKET/models/mobilenet/v0 --num_shards=8 \
--batch_size=1024 --use_tpu=1
