model_item=gpt_auto_stage2
dp_degree=16
mp_degree=1
pp_degree=1
bs_item=128
fp_item=o2
run_mode=DP16-MP1-PP1
device_num=N2C16
sharding_degree=16
sharding_stage=2
hidden_size=4096

model=gpt
micro_bs=8

cd ./benchmarks
bash ./test_tipc/gpt/static/auto_parallel/benchmark_common/prepare.sh
# run
bash ./test_tipc/gpt/static/auto_parallel/benchmark_common/run_benchmark.sh ${model_item} ${fp_item} ${dp_degree} ${mp_degree} ${pp_degree} ${micro_bs} ${bs_item} ${run_mode} ${device_num} \
${sharding_degree} ${sharding_stage} ${hidden_size} 2>&1;
