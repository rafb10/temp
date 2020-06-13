data {
  int y; //passenger deaths in a given year
  int miles; //miles flown in a given year
}

parameters {
  real<lower=0> theta;//estimated passenger death parameters
}
transformed parameters {
  real<lower=0> lambda= miles * theta;
}

model {
  theta ~ gamma(13,100);
  y ~ poisson(lambda);
}

generated quantities {
  int y_sim=0;
  y_sim = poisson_rng(lambda);
}


