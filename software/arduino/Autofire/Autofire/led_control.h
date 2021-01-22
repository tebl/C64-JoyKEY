void init_led();

bool is_pwr_on();
void set_pwr(int value);
void set_pwr(bool value);
void fade_pwr();
void flash_pwr(int num_flashes);

bool is_sys_on();
void set_sys(bool value);
void set_sys(int value);
void fade_sys();
void flash_sys(int num_flashes);

void set_underglow(int value);
void set_underglow(bool value);
void fade_underglow();
void fade_underglow(const int minimum);
void boost_underglow();
void flash_underglow(int num_flashes);
