.class Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;
.super Lcom/infraware/common/util/text/CharsetRecog_sbcs;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_windows_1256"
.end annotation


# static fields
.field private static byteMap:[B

.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x64

    const/16 v6, 0x63

    const/16 v5, 0x62

    const/16 v4, 0x61

    const/16 v3, 0x20

    .line 948
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_4de

    sput-object v0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->ngrams:[I

    .line 955
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 956
    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    .line 957
    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    .line 958
    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    .line 959
    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    .line 960
    aput-byte v3, v0, v3

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    .line 961
    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    const/16 v1, 0x30

    .line 962
    aput-byte v3, v0, v1

    const/16 v1, 0x31

    aput-byte v3, v0, v1

    const/16 v1, 0x32

    aput-byte v3, v0, v1

    const/16 v1, 0x33

    aput-byte v3, v0, v1

    const/16 v1, 0x34

    aput-byte v3, v0, v1

    const/16 v1, 0x35

    aput-byte v3, v0, v1

    const/16 v1, 0x36

    aput-byte v3, v0, v1

    const/16 v1, 0x37

    aput-byte v3, v0, v1

    const/16 v1, 0x38

    .line 963
    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v3, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    .line 964
    aput-byte v3, v0, v1

    const/16 v1, 0x41

    aput-byte v4, v0, v1

    const/16 v1, 0x42

    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    .line 965
    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    .line 966
    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    .line 967
    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    .line 968
    aput-byte v3, v0, v1

    aput-byte v4, v0, v4

    aput-byte v5, v0, v5

    aput-byte v6, v0, v6

    aput-byte v7, v0, v7

    const/16 v1, 0x65

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    .line 969
    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    .line 970
    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    .line 971
    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    const/16 v1, 0x80

    .line 972
    aput-byte v3, v0, v1

    const/16 v1, 0x81

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    aput-byte v3, v0, v1

    const/16 v1, 0x83

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    aput-byte v3, v0, v1

    const/16 v1, 0x85

    aput-byte v3, v0, v1

    const/16 v1, 0x86

    aput-byte v3, v0, v1

    const/16 v1, 0x87

    aput-byte v3, v0, v1

    const/16 v1, 0x88

    .line 973
    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    aput-byte v3, v0, v1

    const/16 v1, 0x8a

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    aput-byte v3, v0, v1

    const/16 v1, 0x8c

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    .line 974
    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    aput-byte v3, v0, v1

    const/16 v1, 0x94

    aput-byte v3, v0, v1

    const/16 v1, 0x95

    aput-byte v3, v0, v1

    const/16 v1, 0x96

    aput-byte v3, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    .line 975
    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    aput-byte v3, v0, v1

    const/16 v1, 0x9a

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    aput-byte v3, v0, v1

    const/16 v1, 0x9e

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    .line 976
    aput-byte v3, v0, v1

    const/16 v1, 0xa1

    aput-byte v3, v0, v1

    const/16 v1, 0xa2

    aput-byte v3, v0, v1

    const/16 v1, 0xa3

    aput-byte v3, v0, v1

    const/16 v1, 0xa4

    aput-byte v3, v0, v1

    const/16 v1, 0xa5

    aput-byte v3, v0, v1

    const/16 v1, 0xa6

    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    aput-byte v3, v0, v1

    const/16 v1, 0xa8

    .line 977
    aput-byte v3, v0, v1

    const/16 v1, 0xa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaa

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v3, v0, v1

    const/16 v1, 0xad

    aput-byte v3, v0, v1

    const/16 v1, 0xae

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb0

    .line 978
    aput-byte v3, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    aput-byte v3, v0, v1

    const/16 v1, 0xb3

    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    aput-byte v3, v0, v1

    const/16 v1, 0xb5

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    aput-byte v3, v0, v1

    const/16 v1, 0xb8

    .line 979
    aput-byte v3, v0, v1

    const/16 v1, 0xb9

    aput-byte v3, v0, v1

    const/16 v1, 0xba

    aput-byte v3, v0, v1

    const/16 v1, 0xbb

    aput-byte v3, v0, v1

    const/16 v1, 0xbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbe

    aput-byte v3, v0, v1

    const/16 v1, 0xbf

    aput-byte v3, v0, v1

    const/16 v1, 0xc0

    .line 980
    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    .line 981
    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    .line 982
    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    .line 983
    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    .line 984
    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    .line 985
    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    .line 986
    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    aput-byte v3, v0, v1

    const/16 v1, 0xf2

    aput-byte v3, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    const/16 v1, 0xf8

    .line 987
    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 955
    sput-object v0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->byteMap:[B

    .line 946
    return-void

    .line 948
    :array_4de
    .array-data 0x4
        0xe1t 0xc7t 0x20t 0x0t
        0xe4t 0xc7t 0x20t 0x0t
        0xc7t 0xc8t 0x20t 0x0t
        0xe1t 0xdat 0x20t 0x0t
        0xedt 0xddt 0x20t 0x0t
        0xe1t 0xe1t 0x20t 0x0t
        0xe4t 0xe3t 0x20t 0x0t
        0xc7t 0xe6t 0x20t 0x0t
        0xc7t 0x20t 0xc7t 0x0t
        0x20t 0xc1t 0xc7t 0x0t
        0x20t 0xcat 0xc7t 0x0t
        0x20t 0xd1t 0xc7t 0x0t
        0x20t 0xe1t 0xc7t 0x0t
        0xc3t 0xe1t 0xc7t 0x0t
        0xc7t 0xe1t 0xc7t 0x0t
        0xc8t 0xe1t 0xc7t 0x0t
        0xcat 0xe1t 0xc7t 0x0t
        0xcct 0xe1t 0xc7t 0x0t
        0xcdt 0xe1t 0xc7t 0x0t
        0xcft 0xe1t 0xc7t 0x0t
        0xd3t 0xe1t 0xc7t 0x0t
        0xdat 0xe1t 0xc7t 0x0t
        0xdet 0xe1t 0xc7t 0x0t
        0xe3t 0xe1t 0xc7t 0x0t
        0xe6t 0xe1t 0xc7t 0x0t
        0xedt 0xe1t 0xc7t 0x0t
        0x20t 0xe3t 0xc7t 0x0t
        0x20t 0xe4t 0xc7t 0x0t
        0xcat 0xe4t 0xc7t 0x0t
        0xc7t 0x20t 0xc8t 0x0t
        0xc7t 0x20t 0xc9t 0x0t
        0xddt 0x20t 0xc9t 0x0t
        0xe1t 0x20t 0xc9t 0x0t
        0xe3t 0x20t 0xc9t 0x0t
        0xe6t 0x20t 0xc9t 0x0t
        0xc7t 0x20t 0xcat 0x0t
        0xc7t 0x20t 0xcft 0x0t
        0x20t 0xc9t 0xcft 0x0t
        0xc7t 0x20t 0xd1t 0x0t
        0x20t 0xc9t 0xd1t 0x0t
        0xc7t 0x20t 0xd3t 0x0t
        0xc7t 0x20t 0xdat 0x0t
        0xect 0xe1t 0xdat 0x0t
        0x20t 0xedt 0xddt 0x0t
        0xc7t 0x20t 0xe1t 0x0t
        0x20t 0xc9t 0xe1t 0x0t
        0x20t 0xect 0xe1t 0x0t
        0x20t 0xedt 0xe1t 0x0t
        0xc7t 0x20t 0xe3t 0x0t
        0x20t 0xc7t 0xe3t 0x0t
        0x20t 0xc9t 0xe3t 0x0t
        0x20t 0xe4t 0xe3t 0x0t
        0xc7t 0x20t 0xe4t 0x0t
        0xc7t 0x20t 0xe5t 0x0t
        0x20t 0xc7t 0xe5t 0x0t
        0xe1t 0xc7t 0xe6t 0x0t
        0x20t 0xe4t 0xe6t 0x0t
        0xc7t 0x20t 0xect 0x0t
        0xc7t 0x20t 0xedt 0x0t
        0xe3t 0x20t 0xedt 0x0t
        0xe6t 0x20t 0xedt 0x0t
        0x20t 0xc9t 0xedt 0x0t
        0x20t 0xd1t 0xedt 0x0t
        0x20t 0xe4t 0xedt 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_sbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 997
    const-string v0, "ar"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 992
    const-string v0, "windows-1256"

    return-object v0
.end method

.method public match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 4
    .parameter "det"

    .prologue
    .line 1002
    sget-object v0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->ngrams:[I

    sget-object v1, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->byteMap:[B

    invoke-virtual {p0, p1, v0, v1}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->match(Lcom/infraware/common/util/text/CharsetDetector;[I[B)I

    move-result v0

    return v0
.end method
