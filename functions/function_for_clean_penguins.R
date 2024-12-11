# This file contains a function for cleaning the raw penguin data
cleaning_penguins_function <- function(raw_data) {
  raw_data %>%
    remove_empty(c("rows", "cols")) %>% 
    clean_names() %>%
    drop_na(culmen_length_mm, body_mass_g) %>%
    mutate(species = case_when(
      species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
    )) 
}