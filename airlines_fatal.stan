data {
  int miles; //miles_flown
}

generated quantities {
real theta = gamma_rng(13,100);
int y = poisson_rng(theta*miles);
}


