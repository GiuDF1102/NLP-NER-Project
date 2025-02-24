path_source_embeddings="embeddings/embeddings_legal1.pt"
path_source_labels="embeddings/labels_legal1.pt"
path_source_val_embeddings="embeddings/embeddings_legal1_val.pt"
path_source_val_labels="embeddings/labels_legal1_val.pt"
path_target_embeddings="embeddings/embeddings_def_train.pt"
path_target_labels="embeddings/labels_def_train.pt"
path_target_val_embeddings="embeddings/embeddings_def_val.pt"
path_target_val_labels="embeddings/labels_def_val.pt"
path_config="domain_adaptation/config/gridsearch.yaml"

tensorboard --logdir=runs &

python3 domain_adaptation/train.py --action gridsearch --path_source_embeddings "$path_source_embeddings" --path_source_labels "$path_source_labels" --path_target_embeddings "$path_target_embeddings" --path_target_labels "$path_target_labels" --path_target_val_embeddings "$path_target_val_embeddings" --path_target_val_labels "$path_target_val_labels" --path_source_val_embeddings "$path_source_val_embeddings" --path_source_val_labels "$path_source_val_labels"