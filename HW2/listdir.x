const MAXLEN = 255;
typedef string nametype<MAXLEN>;
typedef struct namenode* namelist;

struct namenode{
  nametype name;
  namelist next;
};

union readdir_ret switch (int err) {
  case 0:
    namelist list;
  default:
    void;
};

program DIR_LIST_PROG {
  version DIR_LIST_VERS {
    readdir_ret READDIR(nametype) = 1;
  } = 1;
} = 0x32320776;
