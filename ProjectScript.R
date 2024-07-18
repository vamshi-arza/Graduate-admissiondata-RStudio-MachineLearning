FLAGS <- flags(
  flag_numeric("nodes", 128),
  flag_numeric("nodes2", 32),
  flag_numeric("batch_size", 100),
  flag_string("activation", "relu"),
  flag_string("activation2", "relu"),
  flag_numeric("learning_rate", 0.01),
  flag_numeric("epochs", 30),
  flag_numeric("dropout", 0.3),
  flag_numeric("dropout2", 0.3)
) 

model =keras_model_sequential() 
model %>%
  layer_dense(units = FLAGS$nodes, activation = FLAGS$activation) %>%
  layer_dropout(FLAGS$dropout)%>%
  layer_dense(units = FLAGS$nodes2, activation = FLAGS$activation2)%>%
  layer_dropout(FLAGS$dropout2)%>%
  layer_dense(units=1)


model %>% compile(
  optimizer = optimizer_sgd(lr=FLAGS$learning_rate), 
  loss = 'mse',
  metrics = list("mae"))

model %>% fit(
  as.matrix(new_train_trim), grad_train1y, epochs = FLAGS$epochs
  ,batch_size= FLAGS$batch_size, 
  validation_data=list(as.matrix(new_val_trim), grad_valy ))