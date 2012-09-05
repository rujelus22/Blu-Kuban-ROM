.class public Lcom/sprint/smps/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/smps/util/Base64$InputStream;,
        Lcom/sprint/smps/util/Base64$OutputStream;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, -0x5

    const/16 v4, -0x9

    .line 147
    const-class v0, Lcom/sprint/smps/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_d75

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/sprint/smps/util/Base64;->$assertionsDisabled:Z

    .line 219
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_d78

    sput-object v0, Lcom/sprint/smps/util/Base64;->_STANDARD_ALPHABET:[B

    .line 237
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 238
    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 239
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 240
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 241
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 242
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 243
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 244
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 245
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 246
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2c

    .line 247
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 248
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x30

    .line 249
    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 250
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 251
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 252
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 253
    aput-byte v1, v0, v2

    const/16 v2, 0x43

    aput-byte v6, v0, v2

    const/16 v2, 0x44

    aput-byte v7, v0, v2

    const/16 v2, 0x45

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    const/16 v2, 0x46

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x47

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x48

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    const/16 v2, 0x4f

    .line 254
    const/16 v3, 0xe

    aput-byte v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x12

    aput-byte v3, v0, v2

    const/16 v2, 0x54

    const/16 v3, 0x13

    aput-byte v3, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x14

    aput-byte v3, v0, v2

    const/16 v2, 0x56

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/16 v2, 0x58

    const/16 v3, 0x17

    aput-byte v3, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x18

    aput-byte v3, v0, v2

    const/16 v2, 0x5a

    const/16 v3, 0x19

    aput-byte v3, v0, v2

    const/16 v2, 0x5b

    .line 255
    aput-byte v4, v0, v2

    const/16 v2, 0x5c

    aput-byte v4, v0, v2

    const/16 v2, 0x5d

    aput-byte v4, v0, v2

    const/16 v2, 0x5e

    aput-byte v4, v0, v2

    const/16 v2, 0x5f

    aput-byte v4, v0, v2

    const/16 v2, 0x60

    aput-byte v4, v0, v2

    const/16 v2, 0x61

    .line 256
    const/16 v3, 0x1a

    aput-byte v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x1b

    aput-byte v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x1c

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x1d

    aput-byte v3, v0, v2

    const/16 v2, 0x65

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    const/16 v2, 0x66

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    const/16 v2, 0x67

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x68

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/16 v2, 0x69

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/16 v2, 0x6a

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/16 v2, 0x6b

    const/16 v3, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x6c

    const/16 v3, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x6d

    const/16 v3, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x6e

    .line 257
    const/16 v3, 0x27

    aput-byte v3, v0, v2

    const/16 v2, 0x6f

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, 0x70

    const/16 v3, 0x29

    aput-byte v3, v0, v2

    const/16 v2, 0x71

    const/16 v3, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x72

    const/16 v3, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x73

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x74

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x75

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x76

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x77

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/16 v2, 0x78

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/16 v2, 0x79

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/16 v2, 0x7a

    const/16 v3, 0x33

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    .line 258
    aput-byte v4, v0, v2

    const/16 v2, 0x7c

    aput-byte v4, v0, v2

    const/16 v2, 0x7d

    aput-byte v4, v0, v2

    const/16 v2, 0x7e

    aput-byte v4, v0, v2

    const/16 v2, 0x7f

    aput-byte v4, v0, v2

    const/16 v2, 0x80

    .line 259
    aput-byte v4, v0, v2

    const/16 v2, 0x81

    aput-byte v4, v0, v2

    const/16 v2, 0x82

    aput-byte v4, v0, v2

    const/16 v2, 0x83

    aput-byte v4, v0, v2

    const/16 v2, 0x84

    aput-byte v4, v0, v2

    const/16 v2, 0x85

    aput-byte v4, v0, v2

    const/16 v2, 0x86

    aput-byte v4, v0, v2

    const/16 v2, 0x87

    aput-byte v4, v0, v2

    const/16 v2, 0x88

    aput-byte v4, v0, v2

    const/16 v2, 0x89

    aput-byte v4, v0, v2

    const/16 v2, 0x8a

    aput-byte v4, v0, v2

    const/16 v2, 0x8b

    aput-byte v4, v0, v2

    const/16 v2, 0x8c

    .line 260
    aput-byte v4, v0, v2

    const/16 v2, 0x8d

    aput-byte v4, v0, v2

    const/16 v2, 0x8e

    aput-byte v4, v0, v2

    const/16 v2, 0x8f

    aput-byte v4, v0, v2

    const/16 v2, 0x90

    aput-byte v4, v0, v2

    const/16 v2, 0x91

    aput-byte v4, v0, v2

    const/16 v2, 0x92

    aput-byte v4, v0, v2

    const/16 v2, 0x93

    aput-byte v4, v0, v2

    const/16 v2, 0x94

    aput-byte v4, v0, v2

    const/16 v2, 0x95

    aput-byte v4, v0, v2

    const/16 v2, 0x96

    aput-byte v4, v0, v2

    const/16 v2, 0x97

    aput-byte v4, v0, v2

    const/16 v2, 0x98

    aput-byte v4, v0, v2

    const/16 v2, 0x99

    .line 261
    aput-byte v4, v0, v2

    const/16 v2, 0x9a

    aput-byte v4, v0, v2

    const/16 v2, 0x9b

    aput-byte v4, v0, v2

    const/16 v2, 0x9c

    aput-byte v4, v0, v2

    const/16 v2, 0x9d

    aput-byte v4, v0, v2

    const/16 v2, 0x9e

    aput-byte v4, v0, v2

    const/16 v2, 0x9f

    aput-byte v4, v0, v2

    const/16 v2, 0xa0

    aput-byte v4, v0, v2

    const/16 v2, 0xa1

    aput-byte v4, v0, v2

    const/16 v2, 0xa2

    aput-byte v4, v0, v2

    const/16 v2, 0xa3

    aput-byte v4, v0, v2

    const/16 v2, 0xa4

    aput-byte v4, v0, v2

    const/16 v2, 0xa5

    aput-byte v4, v0, v2

    const/16 v2, 0xa6

    .line 262
    aput-byte v4, v0, v2

    const/16 v2, 0xa7

    aput-byte v4, v0, v2

    const/16 v2, 0xa8

    aput-byte v4, v0, v2

    const/16 v2, 0xa9

    aput-byte v4, v0, v2

    const/16 v2, 0xaa

    aput-byte v4, v0, v2

    const/16 v2, 0xab

    aput-byte v4, v0, v2

    const/16 v2, 0xac

    aput-byte v4, v0, v2

    const/16 v2, 0xad

    aput-byte v4, v0, v2

    const/16 v2, 0xae

    aput-byte v4, v0, v2

    const/16 v2, 0xaf

    aput-byte v4, v0, v2

    const/16 v2, 0xb0

    aput-byte v4, v0, v2

    const/16 v2, 0xb1

    aput-byte v4, v0, v2

    const/16 v2, 0xb2

    aput-byte v4, v0, v2

    const/16 v2, 0xb3

    .line 263
    aput-byte v4, v0, v2

    const/16 v2, 0xb4

    aput-byte v4, v0, v2

    const/16 v2, 0xb5

    aput-byte v4, v0, v2

    const/16 v2, 0xb6

    aput-byte v4, v0, v2

    const/16 v2, 0xb7

    aput-byte v4, v0, v2

    const/16 v2, 0xb8

    aput-byte v4, v0, v2

    const/16 v2, 0xb9

    aput-byte v4, v0, v2

    const/16 v2, 0xba

    aput-byte v4, v0, v2

    const/16 v2, 0xbb

    aput-byte v4, v0, v2

    const/16 v2, 0xbc

    aput-byte v4, v0, v2

    const/16 v2, 0xbd

    aput-byte v4, v0, v2

    const/16 v2, 0xbe

    aput-byte v4, v0, v2

    const/16 v2, 0xbf

    aput-byte v4, v0, v2

    const/16 v2, 0xc0

    .line 264
    aput-byte v4, v0, v2

    const/16 v2, 0xc1

    aput-byte v4, v0, v2

    const/16 v2, 0xc2

    aput-byte v4, v0, v2

    const/16 v2, 0xc3

    aput-byte v4, v0, v2

    const/16 v2, 0xc4

    aput-byte v4, v0, v2

    const/16 v2, 0xc5

    aput-byte v4, v0, v2

    const/16 v2, 0xc6

    aput-byte v4, v0, v2

    const/16 v2, 0xc7

    aput-byte v4, v0, v2

    const/16 v2, 0xc8

    aput-byte v4, v0, v2

    const/16 v2, 0xc9

    aput-byte v4, v0, v2

    const/16 v2, 0xca

    aput-byte v4, v0, v2

    const/16 v2, 0xcb

    aput-byte v4, v0, v2

    const/16 v2, 0xcc

    aput-byte v4, v0, v2

    const/16 v2, 0xcd

    .line 265
    aput-byte v4, v0, v2

    const/16 v2, 0xce

    aput-byte v4, v0, v2

    const/16 v2, 0xcf

    aput-byte v4, v0, v2

    const/16 v2, 0xd0

    aput-byte v4, v0, v2

    const/16 v2, 0xd1

    aput-byte v4, v0, v2

    const/16 v2, 0xd2

    aput-byte v4, v0, v2

    const/16 v2, 0xd3

    aput-byte v4, v0, v2

    const/16 v2, 0xd4

    aput-byte v4, v0, v2

    const/16 v2, 0xd5

    aput-byte v4, v0, v2

    const/16 v2, 0xd6

    aput-byte v4, v0, v2

    const/16 v2, 0xd7

    aput-byte v4, v0, v2

    const/16 v2, 0xd8

    aput-byte v4, v0, v2

    const/16 v2, 0xd9

    aput-byte v4, v0, v2

    const/16 v2, 0xda

    .line 266
    aput-byte v4, v0, v2

    const/16 v2, 0xdb

    aput-byte v4, v0, v2

    const/16 v2, 0xdc

    aput-byte v4, v0, v2

    const/16 v2, 0xdd

    aput-byte v4, v0, v2

    const/16 v2, 0xde

    aput-byte v4, v0, v2

    const/16 v2, 0xdf

    aput-byte v4, v0, v2

    const/16 v2, 0xe0

    aput-byte v4, v0, v2

    const/16 v2, 0xe1

    aput-byte v4, v0, v2

    const/16 v2, 0xe2

    aput-byte v4, v0, v2

    const/16 v2, 0xe3

    aput-byte v4, v0, v2

    const/16 v2, 0xe4

    aput-byte v4, v0, v2

    const/16 v2, 0xe5

    aput-byte v4, v0, v2

    const/16 v2, 0xe6

    aput-byte v4, v0, v2

    const/16 v2, 0xe7

    .line 267
    aput-byte v4, v0, v2

    const/16 v2, 0xe8

    aput-byte v4, v0, v2

    const/16 v2, 0xe9

    aput-byte v4, v0, v2

    const/16 v2, 0xea

    aput-byte v4, v0, v2

    const/16 v2, 0xeb

    aput-byte v4, v0, v2

    const/16 v2, 0xec

    aput-byte v4, v0, v2

    const/16 v2, 0xed

    aput-byte v4, v0, v2

    const/16 v2, 0xee

    aput-byte v4, v0, v2

    const/16 v2, 0xef

    aput-byte v4, v0, v2

    const/16 v2, 0xf0

    aput-byte v4, v0, v2

    const/16 v2, 0xf1

    aput-byte v4, v0, v2

    const/16 v2, 0xf2

    aput-byte v4, v0, v2

    const/16 v2, 0xf3

    aput-byte v4, v0, v2

    const/16 v2, 0xf4

    .line 268
    aput-byte v4, v0, v2

    const/16 v2, 0xf5

    aput-byte v4, v0, v2

    const/16 v2, 0xf6

    aput-byte v4, v0, v2

    const/16 v2, 0xf7

    aput-byte v4, v0, v2

    const/16 v2, 0xf8

    aput-byte v4, v0, v2

    const/16 v2, 0xf9

    aput-byte v4, v0, v2

    const/16 v2, 0xfa

    aput-byte v4, v0, v2

    const/16 v2, 0xfb

    aput-byte v4, v0, v2

    const/16 v2, 0xfc

    aput-byte v4, v0, v2

    const/16 v2, 0xfd

    aput-byte v4, v0, v2

    const/16 v2, 0xfe

    aput-byte v4, v0, v2

    const/16 v2, 0xff

    aput-byte v4, v0, v2

    .line 237
    sput-object v0, Lcom/sprint/smps/util/Base64;->_STANDARD_DECODABET:[B

    .line 279
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_d9c

    sput-object v0, Lcom/sprint/smps/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 295
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 296
    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 297
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 298
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 299
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 300
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 301
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 302
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 303
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 304
    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    .line 305
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    .line 306
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2e

    .line 307
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 308
    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 309
    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 310
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 311
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 312
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 313
    aput-byte v1, v0, v2

    const/16 v2, 0x43

    aput-byte v6, v0, v2

    const/16 v2, 0x44

    aput-byte v7, v0, v2

    const/16 v2, 0x45

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    const/16 v2, 0x46

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x47

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x48

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    const/16 v2, 0x4f

    .line 314
    const/16 v3, 0xe

    aput-byte v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x12

    aput-byte v3, v0, v2

    const/16 v2, 0x54

    const/16 v3, 0x13

    aput-byte v3, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x14

    aput-byte v3, v0, v2

    const/16 v2, 0x56

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/16 v2, 0x58

    const/16 v3, 0x17

    aput-byte v3, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x18

    aput-byte v3, v0, v2

    const/16 v2, 0x5a

    const/16 v3, 0x19

    aput-byte v3, v0, v2

    const/16 v2, 0x5b

    .line 315
    aput-byte v4, v0, v2

    const/16 v2, 0x5c

    aput-byte v4, v0, v2

    const/16 v2, 0x5d

    aput-byte v4, v0, v2

    const/16 v2, 0x5e

    aput-byte v4, v0, v2

    const/16 v2, 0x5f

    .line 316
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x60

    .line 317
    aput-byte v4, v0, v2

    const/16 v2, 0x61

    .line 318
    const/16 v3, 0x1a

    aput-byte v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x1b

    aput-byte v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x1c

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x1d

    aput-byte v3, v0, v2

    const/16 v2, 0x65

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    const/16 v2, 0x66

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    const/16 v2, 0x67

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x68

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/16 v2, 0x69

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/16 v2, 0x6a

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/16 v2, 0x6b

    const/16 v3, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x6c

    const/16 v3, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x6d

    const/16 v3, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x6e

    .line 319
    const/16 v3, 0x27

    aput-byte v3, v0, v2

    const/16 v2, 0x6f

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, 0x70

    const/16 v3, 0x29

    aput-byte v3, v0, v2

    const/16 v2, 0x71

    const/16 v3, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x72

    const/16 v3, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x73

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x74

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x75

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x76

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x77

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/16 v2, 0x78

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/16 v2, 0x79

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/16 v2, 0x7a

    const/16 v3, 0x33

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    .line 320
    aput-byte v4, v0, v2

    const/16 v2, 0x7c

    aput-byte v4, v0, v2

    const/16 v2, 0x7d

    aput-byte v4, v0, v2

    const/16 v2, 0x7e

    aput-byte v4, v0, v2

    const/16 v2, 0x7f

    aput-byte v4, v0, v2

    const/16 v2, 0x80

    .line 321
    aput-byte v4, v0, v2

    const/16 v2, 0x81

    aput-byte v4, v0, v2

    const/16 v2, 0x82

    aput-byte v4, v0, v2

    const/16 v2, 0x83

    aput-byte v4, v0, v2

    const/16 v2, 0x84

    aput-byte v4, v0, v2

    const/16 v2, 0x85

    aput-byte v4, v0, v2

    const/16 v2, 0x86

    aput-byte v4, v0, v2

    const/16 v2, 0x87

    aput-byte v4, v0, v2

    const/16 v2, 0x88

    aput-byte v4, v0, v2

    const/16 v2, 0x89

    aput-byte v4, v0, v2

    const/16 v2, 0x8a

    aput-byte v4, v0, v2

    const/16 v2, 0x8b

    aput-byte v4, v0, v2

    const/16 v2, 0x8c

    .line 322
    aput-byte v4, v0, v2

    const/16 v2, 0x8d

    aput-byte v4, v0, v2

    const/16 v2, 0x8e

    aput-byte v4, v0, v2

    const/16 v2, 0x8f

    aput-byte v4, v0, v2

    const/16 v2, 0x90

    aput-byte v4, v0, v2

    const/16 v2, 0x91

    aput-byte v4, v0, v2

    const/16 v2, 0x92

    aput-byte v4, v0, v2

    const/16 v2, 0x93

    aput-byte v4, v0, v2

    const/16 v2, 0x94

    aput-byte v4, v0, v2

    const/16 v2, 0x95

    aput-byte v4, v0, v2

    const/16 v2, 0x96

    aput-byte v4, v0, v2

    const/16 v2, 0x97

    aput-byte v4, v0, v2

    const/16 v2, 0x98

    aput-byte v4, v0, v2

    const/16 v2, 0x99

    .line 323
    aput-byte v4, v0, v2

    const/16 v2, 0x9a

    aput-byte v4, v0, v2

    const/16 v2, 0x9b

    aput-byte v4, v0, v2

    const/16 v2, 0x9c

    aput-byte v4, v0, v2

    const/16 v2, 0x9d

    aput-byte v4, v0, v2

    const/16 v2, 0x9e

    aput-byte v4, v0, v2

    const/16 v2, 0x9f

    aput-byte v4, v0, v2

    const/16 v2, 0xa0

    aput-byte v4, v0, v2

    const/16 v2, 0xa1

    aput-byte v4, v0, v2

    const/16 v2, 0xa2

    aput-byte v4, v0, v2

    const/16 v2, 0xa3

    aput-byte v4, v0, v2

    const/16 v2, 0xa4

    aput-byte v4, v0, v2

    const/16 v2, 0xa5

    aput-byte v4, v0, v2

    const/16 v2, 0xa6

    .line 324
    aput-byte v4, v0, v2

    const/16 v2, 0xa7

    aput-byte v4, v0, v2

    const/16 v2, 0xa8

    aput-byte v4, v0, v2

    const/16 v2, 0xa9

    aput-byte v4, v0, v2

    const/16 v2, 0xaa

    aput-byte v4, v0, v2

    const/16 v2, 0xab

    aput-byte v4, v0, v2

    const/16 v2, 0xac

    aput-byte v4, v0, v2

    const/16 v2, 0xad

    aput-byte v4, v0, v2

    const/16 v2, 0xae

    aput-byte v4, v0, v2

    const/16 v2, 0xaf

    aput-byte v4, v0, v2

    const/16 v2, 0xb0

    aput-byte v4, v0, v2

    const/16 v2, 0xb1

    aput-byte v4, v0, v2

    const/16 v2, 0xb2

    aput-byte v4, v0, v2

    const/16 v2, 0xb3

    .line 325
    aput-byte v4, v0, v2

    const/16 v2, 0xb4

    aput-byte v4, v0, v2

    const/16 v2, 0xb5

    aput-byte v4, v0, v2

    const/16 v2, 0xb6

    aput-byte v4, v0, v2

    const/16 v2, 0xb7

    aput-byte v4, v0, v2

    const/16 v2, 0xb8

    aput-byte v4, v0, v2

    const/16 v2, 0xb9

    aput-byte v4, v0, v2

    const/16 v2, 0xba

    aput-byte v4, v0, v2

    const/16 v2, 0xbb

    aput-byte v4, v0, v2

    const/16 v2, 0xbc

    aput-byte v4, v0, v2

    const/16 v2, 0xbd

    aput-byte v4, v0, v2

    const/16 v2, 0xbe

    aput-byte v4, v0, v2

    const/16 v2, 0xbf

    aput-byte v4, v0, v2

    const/16 v2, 0xc0

    .line 326
    aput-byte v4, v0, v2

    const/16 v2, 0xc1

    aput-byte v4, v0, v2

    const/16 v2, 0xc2

    aput-byte v4, v0, v2

    const/16 v2, 0xc3

    aput-byte v4, v0, v2

    const/16 v2, 0xc4

    aput-byte v4, v0, v2

    const/16 v2, 0xc5

    aput-byte v4, v0, v2

    const/16 v2, 0xc6

    aput-byte v4, v0, v2

    const/16 v2, 0xc7

    aput-byte v4, v0, v2

    const/16 v2, 0xc8

    aput-byte v4, v0, v2

    const/16 v2, 0xc9

    aput-byte v4, v0, v2

    const/16 v2, 0xca

    aput-byte v4, v0, v2

    const/16 v2, 0xcb

    aput-byte v4, v0, v2

    const/16 v2, 0xcc

    aput-byte v4, v0, v2

    const/16 v2, 0xcd

    .line 327
    aput-byte v4, v0, v2

    const/16 v2, 0xce

    aput-byte v4, v0, v2

    const/16 v2, 0xcf

    aput-byte v4, v0, v2

    const/16 v2, 0xd0

    aput-byte v4, v0, v2

    const/16 v2, 0xd1

    aput-byte v4, v0, v2

    const/16 v2, 0xd2

    aput-byte v4, v0, v2

    const/16 v2, 0xd3

    aput-byte v4, v0, v2

    const/16 v2, 0xd4

    aput-byte v4, v0, v2

    const/16 v2, 0xd5

    aput-byte v4, v0, v2

    const/16 v2, 0xd6

    aput-byte v4, v0, v2

    const/16 v2, 0xd7

    aput-byte v4, v0, v2

    const/16 v2, 0xd8

    aput-byte v4, v0, v2

    const/16 v2, 0xd9

    aput-byte v4, v0, v2

    const/16 v2, 0xda

    .line 328
    aput-byte v4, v0, v2

    const/16 v2, 0xdb

    aput-byte v4, v0, v2

    const/16 v2, 0xdc

    aput-byte v4, v0, v2

    const/16 v2, 0xdd

    aput-byte v4, v0, v2

    const/16 v2, 0xde

    aput-byte v4, v0, v2

    const/16 v2, 0xdf

    aput-byte v4, v0, v2

    const/16 v2, 0xe0

    aput-byte v4, v0, v2

    const/16 v2, 0xe1

    aput-byte v4, v0, v2

    const/16 v2, 0xe2

    aput-byte v4, v0, v2

    const/16 v2, 0xe3

    aput-byte v4, v0, v2

    const/16 v2, 0xe4

    aput-byte v4, v0, v2

    const/16 v2, 0xe5

    aput-byte v4, v0, v2

    const/16 v2, 0xe6

    aput-byte v4, v0, v2

    const/16 v2, 0xe7

    .line 329
    aput-byte v4, v0, v2

    const/16 v2, 0xe8

    aput-byte v4, v0, v2

    const/16 v2, 0xe9

    aput-byte v4, v0, v2

    const/16 v2, 0xea

    aput-byte v4, v0, v2

    const/16 v2, 0xeb

    aput-byte v4, v0, v2

    const/16 v2, 0xec

    aput-byte v4, v0, v2

    const/16 v2, 0xed

    aput-byte v4, v0, v2

    const/16 v2, 0xee

    aput-byte v4, v0, v2

    const/16 v2, 0xef

    aput-byte v4, v0, v2

    const/16 v2, 0xf0

    aput-byte v4, v0, v2

    const/16 v2, 0xf1

    aput-byte v4, v0, v2

    const/16 v2, 0xf2

    aput-byte v4, v0, v2

    const/16 v2, 0xf3

    aput-byte v4, v0, v2

    const/16 v2, 0xf4

    .line 330
    aput-byte v4, v0, v2

    const/16 v2, 0xf5

    aput-byte v4, v0, v2

    const/16 v2, 0xf6

    aput-byte v4, v0, v2

    const/16 v2, 0xf7

    aput-byte v4, v0, v2

    const/16 v2, 0xf8

    aput-byte v4, v0, v2

    const/16 v2, 0xf9

    aput-byte v4, v0, v2

    const/16 v2, 0xfa

    aput-byte v4, v0, v2

    const/16 v2, 0xfb

    aput-byte v4, v0, v2

    const/16 v2, 0xfc

    aput-byte v4, v0, v2

    const/16 v2, 0xfd

    aput-byte v4, v0, v2

    const/16 v2, 0xfe

    aput-byte v4, v0, v2

    const/16 v2, 0xff

    aput-byte v4, v0, v2

    .line 295
    sput-object v0, Lcom/sprint/smps/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 342
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_dc0

    sput-object v0, Lcom/sprint/smps/util/Base64;->_ORDERED_ALPHABET:[B

    .line 360
    const/16 v0, 0x101

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 361
    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 362
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 363
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 364
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 365
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 366
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 367
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 368
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 369
    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    .line 370
    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    .line 372
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 373
    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 374
    aput-byte v1, v0, v2

    const/16 v1, 0x31

    aput-byte v6, v0, v1

    const/16 v1, 0x32

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 375
    aput-byte v4, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v4, v0, v1

    const/16 v1, 0x3d

    .line 376
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 377
    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

    const/16 v1, 0x41

    .line 378
    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    .line 379
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 380
    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    .line 381
    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 382
    aput-byte v4, v0, v1

    const/16 v1, 0x61

    .line 383
    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 384
    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 385
    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    const/16 v1, 0x80

    .line 386
    aput-byte v4, v0, v1

    const/16 v1, 0x81

    aput-byte v4, v0, v1

    const/16 v1, 0x82

    aput-byte v4, v0, v1

    const/16 v1, 0x83

    aput-byte v4, v0, v1

    const/16 v1, 0x84

    aput-byte v4, v0, v1

    const/16 v1, 0x85

    aput-byte v4, v0, v1

    const/16 v1, 0x86

    aput-byte v4, v0, v1

    const/16 v1, 0x87

    aput-byte v4, v0, v1

    const/16 v1, 0x88

    aput-byte v4, v0, v1

    const/16 v1, 0x89

    aput-byte v4, v0, v1

    const/16 v1, 0x8a

    aput-byte v4, v0, v1

    const/16 v1, 0x8b

    aput-byte v4, v0, v1

    const/16 v1, 0x8c

    aput-byte v4, v0, v1

    const/16 v1, 0x8d

    .line 387
    aput-byte v4, v0, v1

    const/16 v1, 0x8e

    aput-byte v4, v0, v1

    const/16 v1, 0x8f

    aput-byte v4, v0, v1

    const/16 v1, 0x90

    aput-byte v4, v0, v1

    const/16 v1, 0x91

    aput-byte v4, v0, v1

    const/16 v1, 0x92

    aput-byte v4, v0, v1

    const/16 v1, 0x93

    aput-byte v4, v0, v1

    const/16 v1, 0x94

    aput-byte v4, v0, v1

    const/16 v1, 0x95

    aput-byte v4, v0, v1

    const/16 v1, 0x96

    aput-byte v4, v0, v1

    const/16 v1, 0x97

    aput-byte v4, v0, v1

    const/16 v1, 0x98

    aput-byte v4, v0, v1

    const/16 v1, 0x99

    aput-byte v4, v0, v1

    const/16 v1, 0x9a

    .line 388
    aput-byte v4, v0, v1

    const/16 v1, 0x9b

    aput-byte v4, v0, v1

    const/16 v1, 0x9c

    aput-byte v4, v0, v1

    const/16 v1, 0x9d

    aput-byte v4, v0, v1

    const/16 v1, 0x9e

    aput-byte v4, v0, v1

    const/16 v1, 0x9f

    aput-byte v4, v0, v1

    const/16 v1, 0xa0

    aput-byte v4, v0, v1

    const/16 v1, 0xa1

    aput-byte v4, v0, v1

    const/16 v1, 0xa2

    aput-byte v4, v0, v1

    const/16 v1, 0xa3

    aput-byte v4, v0, v1

    const/16 v1, 0xa4

    aput-byte v4, v0, v1

    const/16 v1, 0xa5

    aput-byte v4, v0, v1

    const/16 v1, 0xa6

    aput-byte v4, v0, v1

    const/16 v1, 0xa7

    .line 389
    aput-byte v4, v0, v1

    const/16 v1, 0xa8

    aput-byte v4, v0, v1

    const/16 v1, 0xa9

    aput-byte v4, v0, v1

    const/16 v1, 0xaa

    aput-byte v4, v0, v1

    const/16 v1, 0xab

    aput-byte v4, v0, v1

    const/16 v1, 0xac

    aput-byte v4, v0, v1

    const/16 v1, 0xad

    aput-byte v4, v0, v1

    const/16 v1, 0xae

    aput-byte v4, v0, v1

    const/16 v1, 0xaf

    aput-byte v4, v0, v1

    const/16 v1, 0xb0

    aput-byte v4, v0, v1

    const/16 v1, 0xb1

    aput-byte v4, v0, v1

    const/16 v1, 0xb2

    aput-byte v4, v0, v1

    const/16 v1, 0xb3

    aput-byte v4, v0, v1

    const/16 v1, 0xb4

    .line 390
    aput-byte v4, v0, v1

    const/16 v1, 0xb5

    aput-byte v4, v0, v1

    const/16 v1, 0xb6

    aput-byte v4, v0, v1

    const/16 v1, 0xb7

    aput-byte v4, v0, v1

    const/16 v1, 0xb8

    aput-byte v4, v0, v1

    const/16 v1, 0xb9

    aput-byte v4, v0, v1

    const/16 v1, 0xba

    aput-byte v4, v0, v1

    const/16 v1, 0xbb

    aput-byte v4, v0, v1

    const/16 v1, 0xbc

    aput-byte v4, v0, v1

    const/16 v1, 0xbd

    aput-byte v4, v0, v1

    const/16 v1, 0xbe

    aput-byte v4, v0, v1

    const/16 v1, 0xbf

    aput-byte v4, v0, v1

    const/16 v1, 0xc0

    aput-byte v4, v0, v1

    const/16 v1, 0xc1

    .line 391
    aput-byte v4, v0, v1

    const/16 v1, 0xc2

    aput-byte v4, v0, v1

    const/16 v1, 0xc3

    aput-byte v4, v0, v1

    const/16 v1, 0xc4

    aput-byte v4, v0, v1

    const/16 v1, 0xc5

    aput-byte v4, v0, v1

    const/16 v1, 0xc6

    aput-byte v4, v0, v1

    const/16 v1, 0xc7

    aput-byte v4, v0, v1

    const/16 v1, 0xc8

    aput-byte v4, v0, v1

    const/16 v1, 0xc9

    aput-byte v4, v0, v1

    const/16 v1, 0xca

    aput-byte v4, v0, v1

    const/16 v1, 0xcb

    aput-byte v4, v0, v1

    const/16 v1, 0xcc

    aput-byte v4, v0, v1

    const/16 v1, 0xcd

    aput-byte v4, v0, v1

    const/16 v1, 0xce

    .line 392
    aput-byte v4, v0, v1

    const/16 v1, 0xcf

    aput-byte v4, v0, v1

    const/16 v1, 0xd0

    aput-byte v4, v0, v1

    const/16 v1, 0xd1

    aput-byte v4, v0, v1

    const/16 v1, 0xd2

    aput-byte v4, v0, v1

    const/16 v1, 0xd3

    aput-byte v4, v0, v1

    const/16 v1, 0xd4

    aput-byte v4, v0, v1

    const/16 v1, 0xd5

    aput-byte v4, v0, v1

    const/16 v1, 0xd6

    aput-byte v4, v0, v1

    const/16 v1, 0xd7

    aput-byte v4, v0, v1

    const/16 v1, 0xd8

    aput-byte v4, v0, v1

    const/16 v1, 0xd9

    aput-byte v4, v0, v1

    const/16 v1, 0xda

    aput-byte v4, v0, v1

    const/16 v1, 0xdb

    .line 393
    aput-byte v4, v0, v1

    const/16 v1, 0xdc

    aput-byte v4, v0, v1

    const/16 v1, 0xdd

    aput-byte v4, v0, v1

    const/16 v1, 0xde

    aput-byte v4, v0, v1

    const/16 v1, 0xdf

    aput-byte v4, v0, v1

    const/16 v1, 0xe0

    aput-byte v4, v0, v1

    const/16 v1, 0xe1

    aput-byte v4, v0, v1

    const/16 v1, 0xe2

    aput-byte v4, v0, v1

    const/16 v1, 0xe3

    aput-byte v4, v0, v1

    const/16 v1, 0xe4

    aput-byte v4, v0, v1

    const/16 v1, 0xe5

    aput-byte v4, v0, v1

    const/16 v1, 0xe6

    aput-byte v4, v0, v1

    const/16 v1, 0xe7

    aput-byte v4, v0, v1

    const/16 v1, 0xe8

    .line 394
    aput-byte v4, v0, v1

    const/16 v1, 0xe9

    aput-byte v4, v0, v1

    const/16 v1, 0xea

    aput-byte v4, v0, v1

    const/16 v1, 0xeb

    aput-byte v4, v0, v1

    const/16 v1, 0xec

    aput-byte v4, v0, v1

    const/16 v1, 0xed

    aput-byte v4, v0, v1

    const/16 v1, 0xee

    aput-byte v4, v0, v1

    const/16 v1, 0xef

    aput-byte v4, v0, v1

    const/16 v1, 0xf0

    aput-byte v4, v0, v1

    const/16 v1, 0xf1

    aput-byte v4, v0, v1

    const/16 v1, 0xf2

    aput-byte v4, v0, v1

    const/16 v1, 0xf3

    aput-byte v4, v0, v1

    const/16 v1, 0xf4

    aput-byte v4, v0, v1

    const/16 v1, 0xf5

    .line 395
    aput-byte v4, v0, v1

    const/16 v1, 0xf6

    aput-byte v4, v0, v1

    const/16 v1, 0xf7

    aput-byte v4, v0, v1

    const/16 v1, 0xf8

    aput-byte v4, v0, v1

    const/16 v1, 0xf9

    aput-byte v4, v0, v1

    const/16 v1, 0xfa

    aput-byte v4, v0, v1

    const/16 v1, 0xfb

    aput-byte v4, v0, v1

    const/16 v1, 0xfc

    aput-byte v4, v0, v1

    const/16 v1, 0xfd

    aput-byte v4, v0, v1

    const/16 v1, 0xfe

    aput-byte v4, v0, v1

    const/16 v1, 0xff

    aput-byte v4, v0, v1

    const/16 v1, 0x100

    aput-byte v4, v0, v1

    .line 360
    sput-object v0, Lcom/sprint/smps/util/Base64;->_ORDERED_DECODABET:[B

    return-void

    .line 147
    :cond_d75
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 219
    :array_d78
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 279
    :array_d9c
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 342
    :array_dc0
    .array-data 0x1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)[B
    .registers 2
    .parameter

    .prologue
    .line 427
    invoke-static {p0}, Lcom/sprint/smps/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1([BII[BII)[B
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-static/range {p0 .. p5}, Lcom/sprint/smps/util/Base64;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2([BI[BII)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1027
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sprint/smps/util/Base64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$3([B[BII)[B
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    invoke-static {p0, p1, p2, p3}, Lcom/sprint/smps/util/Base64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1221
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sprint/smps/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 19
    .parameter "s"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1239
    if-nez p0, :cond_a

    .line 1240
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "Input string was null."

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1245
    :cond_a
    :try_start_a
    const-string v14, "US-ASCII"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_11} :catch_68

    move-result-object v6

    .line 1253
    .local v6, bytes:[B
    :goto_12
    const/4 v14, 0x0

    array-length v15, v6

    move/from16 v0, p1

    invoke-static {v6, v14, v15, v0}, Lcom/sprint/smps/util/Base64;->decode([BIII)[B

    move-result-object v6

    .line 1257
    and-int/lit8 v14, p1, 0x4

    if-eqz v14, :cond_6e

    const/4 v7, 0x1

    .line 1258
    .local v7, dontGunzip:Z
    :goto_1f
    if-eqz v6, :cond_67

    array-length v14, v6

    const/4 v15, 0x4

    if-lt v14, v15, :cond_67

    if-nez v7, :cond_67

    .line 1260
    const/4 v14, 0x0

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x1

    aget-byte v15, v6, v15

    shl-int/lit8 v15, v15, 0x8

    const v16, 0xff00

    and-int v15, v15, v16

    or-int v11, v14, v15

    .line 1261
    .local v11, head:I
    const v14, 0x8b1f

    if-ne v14, v11, :cond_67

    .line 1262
    const/4 v1, 0x0

    .line 1263
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    const/4 v9, 0x0

    .line 1264
    .local v9, gzis:Ljava/util/zip/GZIPInputStream;
    const/4 v3, 0x0

    .line 1265
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x800

    new-array v5, v14, [B

    .line 1266
    .local v5, buffer:[B
    const/4 v12, 0x0

    .line 1269
    .local v12, length:I
    :try_start_45
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_88
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_af

    .line 1270
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_4a
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_b1

    .line 1271
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .local v2, bais:Ljava/io/ByteArrayInputStream;
    :try_start_4f
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v10, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_54} :catch_b4

    .line 1273
    .end local v9           #gzis:Ljava/util/zip/GZIPInputStream;
    .local v10, gzis:Ljava/util/zip/GZIPInputStream;
    :goto_54
    :try_start_54
    invoke-virtual {v10, v5}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v12

    if-gez v12, :cond_70

    .line 1278
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5d} :catch_75

    move-result-object v6

    .line 1286
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_9d

    .line 1287
    :goto_61
    :try_start_61
    invoke-virtual {v10}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_9f

    .line 1288
    :goto_64
    :try_start_64
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_a1

    .line 1294
    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #buffer:[B
    .end local v10           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v11           #head:I
    .end local v12           #length:I
    :cond_67
    :goto_67
    return-object v6

    .line 1247
    .end local v6           #bytes:[B
    .end local v7           #dontGunzip:Z
    :catch_68
    move-exception v13

    .line 1248
    .local v13, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .restart local v6       #bytes:[B
    goto :goto_12

    .line 1257
    .end local v13           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_6e
    const/4 v7, 0x0

    goto :goto_1f

    .line 1274
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #buffer:[B
    .restart local v7       #dontGunzip:Z
    .restart local v10       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v11       #head:I
    .restart local v12       #length:I
    :cond_70
    const/4 v14, 0x0

    :try_start_71
    invoke-virtual {v4, v5, v14, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_54

    .line 1281
    :catch_75
    move-exception v8

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v9       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .line 1282
    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .local v8, e:Ljava/io/IOException;
    :goto_79
    :try_start_79
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_88

    .line 1286
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_93

    .line 1287
    :goto_7f
    :try_start_7f
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_95

    .line 1288
    :goto_82
    :try_start_82
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_67

    :catch_86
    move-exception v14

    goto :goto_67

    .line 1285
    .end local v8           #e:Ljava/io/IOException;
    :catchall_88
    move-exception v14

    .line 1286
    :goto_89
    :try_start_89
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_97

    .line 1287
    :goto_8c
    :try_start_8c
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_99

    .line 1288
    :goto_8f
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_9b

    .line 1289
    :goto_92
    throw v14

    .line 1286
    .restart local v8       #e:Ljava/io/IOException;
    :catch_93
    move-exception v14

    goto :goto_7f

    .line 1287
    :catch_95
    move-exception v14

    goto :goto_82

    .line 1286
    .end local v8           #e:Ljava/io/IOException;
    :catch_97
    move-exception v15

    goto :goto_8c

    .line 1287
    :catch_99
    move-exception v15

    goto :goto_8f

    .line 1288
    :catch_9b
    move-exception v15

    goto :goto_92

    .line 1286
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #gzis:Ljava/util/zip/GZIPInputStream;
    :catch_9d
    move-exception v14

    goto :goto_61

    .line 1287
    :catch_9f
    move-exception v14

    goto :goto_64

    .line 1288
    :catch_a1
    move-exception v14

    goto :goto_67

    .line 1285
    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .end local v10           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v9       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_a3
    move-exception v14

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_89

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_a6
    move-exception v14

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_89

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_aa
    move-exception v14

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v9       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_89

    .line 1281
    :catch_af
    move-exception v8

    goto :goto_79

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_b1
    move-exception v8

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_79

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_b4
    move-exception v8

    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_79
.end method

.method public static decode([B)[B
    .registers 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1117
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1119
    .local v0, decoded:[B
    array-length v1, p0

    invoke-static {p0, v2, v1, v2}, Lcom/sprint/smps/util/Base64;->decode([BIII)[B

    move-result-object v0

    .line 1123
    return-object v0
.end method

.method public static decode([BIII)[B
    .registers 20
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1149
    if-nez p0, :cond_a

    .line 1150
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "Cannot decode null source array."

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1152
    :cond_a
    if-ltz p1, :cond_13

    add-int v11, p1, p2

    move-object/from16 v0, p0

    array-length v12, v0

    if-le v11, v12, :cond_3a

    .line 1153
    :cond_13
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .line 1154
    const-string v12, "Source array with length %d cannot have offset of %d and process %d bytes."

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    array-length v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1153
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1157
    :cond_3a
    if-nez p2, :cond_40

    .line 1158
    const/4 v11, 0x0

    new-array v7, v11, [B

    .line 1205
    :goto_3f
    return-object v7

    .line 1159
    :cond_40
    const/4 v11, 0x4

    move/from16 v0, p2

    if-ge v0, v11, :cond_5c

    .line 1160
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .line 1161
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1160
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1164
    :cond_5c
    invoke-static/range {p3 .. p3}, Lcom/sprint/smps/util/Base64;->getDecodabet(I)[B

    move-result-object v1

    .line 1166
    .local v1, DECODABET:[B
    mul-int/lit8 v11, p2, 0x3

    div-int/lit8 v6, v11, 0x4

    .line 1167
    .local v6, len34:I
    new-array v8, v6, [B

    .line 1168
    .local v8, outBuff:[B
    const/4 v9, 0x0

    .line 1170
    .local v9, outBuffPosn:I
    const/4 v11, 0x4

    new-array v2, v11, [B

    .line 1171
    .local v2, b4:[B
    const/4 v3, 0x0

    .line 1172
    .local v3, b4Posn:I
    const/4 v5, 0x0

    .line 1173
    .local v5, i:I
    const/4 v10, 0x0

    .line 1175
    .local v10, sbiDecode:B
    move/from16 v5, p1

    move v4, v3

    .end local v3           #b4Posn:I
    .local v4, b4Posn:I
    :goto_70
    add-int v11, p1, p2

    if-lt v5, v11, :cond_7d

    move v3, v4

    .line 1203
    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    :cond_75
    new-array v7, v9, [B

    .line 1204
    .local v7, out:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v11, v7, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3f

    .line 1177
    .end local v3           #b4Posn:I
    .end local v7           #out:[B
    .restart local v4       #b4Posn:I
    :cond_7d
    aget-byte v11, p0, v5

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v1, v11

    .line 1182
    const/4 v11, -0x5

    if-lt v10, v11, :cond_a5

    .line 1183
    const/4 v11, -0x1

    if-lt v10, v11, :cond_c6

    .line 1184
    add-int/lit8 v3, v4, 0x1

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    aget-byte v11, p0, v5

    aput-byte v11, v2, v4

    .line 1185
    const/4 v11, 0x3

    if-le v3, v11, :cond_a1

    .line 1186
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {v2, v11, v8, v9, v0}, Lcom/sprint/smps/util/Base64;->decode4to3([BI[BII)I

    move-result v11

    add-int/2addr v9, v11

    .line 1187
    const/4 v3, 0x0

    .line 1190
    aget-byte v11, p0, v5

    const/16 v12, 0x3d

    if-eq v11, v12, :cond_75

    .line 1175
    :cond_a1
    :goto_a1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    goto :goto_70

    .line 1198
    :cond_a5
    new-instance v11, Ljava/io/IOException;

    .line 1199
    const-string v12, "Bad Base64 input character decimal %d in array position %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-byte v15, p0, v5

    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1198
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_c6
    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_a1
.end method

.method private static decode4to3([BI[BII)I
    .registers 13
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v6, 0x3d

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1032
    if-nez p0, :cond_f

    .line 1033
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Source array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1035
    :cond_f
    if-nez p2, :cond_19

    .line 1036
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Destination array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1038
    :cond_19
    if-ltz p1, :cond_20

    add-int/lit8 v4, p1, 0x3

    array-length v5, p0

    if-lt v4, v5, :cond_3b

    .line 1039
    :cond_20
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 1040
    const-string v5, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v3, v3, [Ljava/lang/Object;

    array-length v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1039
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1042
    :cond_3b
    if-ltz p3, :cond_42

    add-int/lit8 v4, p3, 0x2

    array-length v5, p2

    if-lt v4, v5, :cond_5d

    .line 1043
    :cond_42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 1044
    const-string v5, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v3, v3, [Ljava/lang/Object;

    array-length v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1043
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1048
    :cond_5d
    invoke-static {p4}, Lcom/sprint/smps/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 1051
    .local v0, DECODABET:[B
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    if-ne v4, v6, :cond_81

    .line 1055
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    .line 1056
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    .line 1055
    or-int v1, v3, v4

    .line 1058
    .local v1, outBuff:I
    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 1094
    :goto_80
    return v2

    .line 1063
    .end local v1           #outBuff:I
    :cond_81
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v6, :cond_b4

    .line 1068
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    .line 1069
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    .line 1068
    or-int/2addr v2, v4

    .line 1070
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    .line 1068
    or-int v1, v2, v4

    .line 1072
    .restart local v1       #outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1073
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    move v2, v3

    .line 1074
    goto :goto_80

    .line 1084
    .end local v1           #outBuff:I
    :cond_b4
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    .line 1085
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    .line 1084
    or-int/2addr v2, v3

    .line 1086
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    .line 1084
    or-int/2addr v2, v3

    .line 1087
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1084
    or-int v1, v2, v3

    .line 1090
    .restart local v1       #outBuff:I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1091
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1092
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 1094
    const/4 v2, 0x3

    goto :goto_80
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "infile"
    .parameter "outfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1609
    invoke-static {p0}, Lcom/sprint/smps/util/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1610
    .local v0, decoded:[B
    const/4 v2, 0x0

    .line 1612
    .local v2, out:Ljava/io/OutputStream;
    :try_start_5
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1613
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1612
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_16

    .line 1614
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_f
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_24

    .line 1620
    :try_start_12
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1f

    .line 1623
    :goto_15
    return-void

    .line 1616
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_16
    move-exception v1

    .line 1617
    .local v1, e:Ljava/io/IOException;
    :goto_17
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 1619
    .end local v1           #e:Ljava/io/IOException;
    :catchall_18
    move-exception v4

    .line 1620
    :goto_19
    :try_start_19
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 1622
    :goto_1c
    throw v4

    .line 1621
    :catch_1d
    move-exception v5

    goto :goto_1c

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_1f
    move-exception v4

    goto :goto_15

    .line 1619
    :catchall_21
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_19

    .line 1616
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_24
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_17
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .registers 13
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1475
    check-cast v3, [B

    .line 1476
    .local v3, decodedData:[B
    const/4 v0, 0x0

    .line 1480
    .local v0, bis:Lcom/sprint/smps/util/Base64$InputStream;
    :try_start_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1481
    .local v5, file:Ljava/io/File;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 1482
    .local v2, buffer:[B
    const/4 v6, 0x0

    .line 1483
    .local v6, length:I
    const/4 v7, 0x0

    .line 1486
    .local v7, numBytes:I
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_3f

    .line 1488
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File is too big for this convenience method ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_38} :catch_38

    .line 1507
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :catch_38
    move-exception v4

    .line 1508
    .local v4, e:Ljava/io/IOException;
    :goto_39
    :try_start_39
    throw v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 1510
    .end local v4           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v8

    .line 1511
    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Lcom/sprint/smps/util/Base64$InputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_6b

    .line 1512
    :goto_3e
    throw v8

    .line 1490
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :cond_3f
    :try_start_3f
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 1493
    new-instance v1, Lcom/sprint/smps/util/Base64$InputStream;

    .line 1494
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 1495
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1494
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1495
    const/4 v9, 0x0

    .line 1493
    invoke-direct {v1, v8, v9}, Lcom/sprint/smps/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_56} :catch_38

    .line 1498
    .end local v0           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .local v1, bis:Lcom/sprint/smps/util/Base64$InputStream;
    :goto_56
    const/16 v8, 0x1000

    :try_start_58
    invoke-virtual {v1, v2, v6, v8}, Lcom/sprint/smps/util/Base64$InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_69

    .line 1503
    new-array v3, v6, [B

    .line 1504
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_6f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_65} :catch_72

    .line 1511
    :try_start_65
    invoke-virtual {v1}, Lcom/sprint/smps/util/Base64$InputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_6d

    .line 1514
    :goto_68
    return-object v3

    .line 1499
    :cond_69
    add-int/2addr v6, v7

    goto :goto_56

    .line 1511
    .end local v1           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    :catch_6b
    move-exception v9

    goto :goto_3e

    .end local v0           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v1       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_6d
    move-exception v8

    goto :goto_68

    .line 1510
    :catchall_6f
    move-exception v8

    move-object v0, v1

    .end local v1           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v0       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    goto :goto_3b

    .line 1507
    .end local v0           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v1       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    :catch_72
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v0       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    goto :goto_39
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "dataToDecode"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1440
    const/4 v0, 0x0

    .line 1442
    .local v0, bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :try_start_1
    new-instance v1, Lcom/sprint/smps/util/Base64$OutputStream;

    .line 1443
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1442
    invoke-direct {v1, v3, v4}, Lcom/sprint/smps/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_19

    .line 1444
    .end local v0           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .local v1, bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :try_start_c
    const-string v3, "US-ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sprint/smps/util/Base64$OutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_24
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_27

    .line 1450
    :try_start_15
    invoke-virtual {v1}, Lcom/sprint/smps/util/Base64$OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_22

    .line 1453
    :goto_18
    return-void

    .line 1446
    .end local v1           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v0       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :catch_19
    move-exception v2

    .line 1447
    .local v2, e:Ljava/io/IOException;
    :goto_1a
    :try_start_1a
    throw v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    .line 1449
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1b
    move-exception v3

    .line 1450
    :goto_1c
    :try_start_1c
    invoke-virtual {v0}, Lcom/sprint/smps/util/Base64$OutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 1451
    :goto_1f
    throw v3

    .line 1450
    :catch_20
    move-exception v4

    goto :goto_1f

    .end local v0           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v1       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :catch_22
    move-exception v3

    goto :goto_18

    .line 1449
    :catchall_24
    move-exception v3

    move-object v0, v1

    .end local v1           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v0       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    goto :goto_1c

    .line 1446
    .end local v0           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v1       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :catch_27
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v0       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    goto :goto_1a
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "encodedObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1313
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sprint/smps/util/Base64;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 12
    .parameter "encodedObject"
    .parameter "options"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1338
    invoke-static {p0, p1}, Lcom/sprint/smps/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1340
    .local v4, objBytes:[B
    const/4 v0, 0x0

    .line 1341
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 1342
    .local v5, ois:Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 1345
    .local v3, obj:Ljava/lang/Object;
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_28
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_c} :catch_30

    .line 1348
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    if-nez p2, :cond_1f

    .line 1349
    :try_start_e
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .local v6, ois:Ljava/io/ObjectInputStream;
    move-object v5, v6

    .line 1369
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :goto_14
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_17} :catch_3d

    move-result-object v3

    .line 1378
    :try_start_18
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_36

    .line 1379
    :goto_1b
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_38

    .line 1382
    :goto_1e
    return-object v3

    .line 1355
    :cond_1f
    :try_start_1f
    new-instance v6, Lcom/sprint/smps/util/Base64$1;

    invoke-direct {v6, v1, p2}, Lcom/sprint/smps/util/Base64$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_24} :catch_3d

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    goto :goto_14

    .line 1371
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :catch_26
    move-exception v2

    .line 1372
    .local v2, e:Ljava/io/IOException;
    :goto_27
    :try_start_27
    throw v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 1377
    .end local v2           #e:Ljava/io/IOException;
    :catchall_28
    move-exception v7

    .line 1378
    :goto_29
    :try_start_29
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_32

    .line 1379
    :goto_2c
    :try_start_2c
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_34

    .line 1380
    :goto_2f
    throw v7

    .line 1374
    :catch_30
    move-exception v2

    .line 1375
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :goto_31
    :try_start_31
    throw v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_28

    .line 1378
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_32
    move-exception v8

    goto :goto_2c

    .line 1379
    :catch_34
    move-exception v8

    goto :goto_2f

    .line 1378
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_36
    move-exception v7

    goto :goto_1b

    .line 1379
    :catch_38
    move-exception v7

    goto :goto_1e

    .line 1377
    :catchall_3a
    move-exception v7

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_29

    .line 1374
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_3d
    move-exception v2

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_31

    .line 1371
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_40
    move-exception v2

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_27
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 8
    .parameter "raw"
    .parameter "encoded"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 555
    new-array v1, v5, [B

    .line 556
    .local v1, raw3:[B
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 558
    .local v0, enc4:[B
    :goto_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_e

    .line 564
    return-void

    .line 559
    :cond_e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 560
    .local v2, rem:I
    invoke-virtual {p0, v1, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 561
    invoke-static {v0, v1, v2, v4}, Lcom/sprint/smps/util/Base64;->encode3to4([B[BII)[B

    .line 562
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_7
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .registers 10
    .parameter "raw"
    .parameter "encoded"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 579
    new-array v2, v6, [B

    .line 580
    .local v2, raw3:[B
    new-array v0, v7, [B

    .line 582
    .local v0, enc4:[B
    :cond_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_e

    .line 590
    return-void

    .line 583
    :cond_e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 584
    .local v3, rem:I
    invoke-virtual {p0, v2, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 585
    invoke-static {v0, v2, v3, v5}, Lcom/sprint/smps/util/Base64;->encode3to4([B[BII)[B

    .line 586
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v7, :cond_7

    .line 587
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method private static encode3to4([BII[BII)[B
    .registers 12
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 496
    invoke-static {p5}, Lcom/sprint/smps/util/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 509
    .local v0, ALPHABET:[B
    if-lez p2, :cond_2d

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    .line 510
    :goto_10
    const/4 v3, 0x1

    if-le p2, v3, :cond_2f

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    .line 509
    :goto_1b
    or-int/2addr v3, v4

    .line 511
    const/4 v4, 0x2

    if-le p2, v4, :cond_27

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    .line 509
    :cond_27
    or-int v1, v3, v2

    .line 513
    .local v1, inBuff:I
    packed-switch p2, :pswitch_data_8c

    .line 537
    :goto_2c
    return-object p3

    .end local v1           #inBuff:I
    :cond_2d
    move v4, v2

    .line 509
    goto :goto_10

    :cond_2f
    move v3, v2

    .line 510
    goto :goto_1b

    .line 516
    .restart local v1       #inBuff:I
    :pswitch_31
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 517
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 518
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 519
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2c

    .line 523
    :pswitch_54
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 524
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 525
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 526
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2c

    .line 530
    :pswitch_73
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 531
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 532
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 533
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2c

    .line 513
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_73
        :pswitch_54
        :pswitch_31
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .registers 10
    .parameter "b4"
    .parameter "threeBytes"
    .parameter "numSigBytes"
    .parameter "options"

    .prologue
    const/4 v1, 0x0

    .line 464
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sprint/smps/util/Base64;->encode3to4([BII[BII)[B

    .line 465
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .registers 6
    .parameter "source"

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 717
    .local v0, encoded:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_2
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sprint/smps/util/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_14

    move-result-object v0

    .line 721
    :cond_8
    sget-boolean v2, Lcom/sprint/smps/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_23

    if-nez v0, :cond_23

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 718
    :catch_14
    move-exception v1

    .line 719
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v2, Lcom/sprint/smps/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 722
    .end local v1           #ex:Ljava/io/IOException;
    :cond_23
    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .registers 4
    .parameter "source"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/sprint/smps/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .registers 7
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 785
    .local v0, encoded:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, p1, p2, v2}, Lcom/sprint/smps/util/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_12

    move-result-object v0

    .line 789
    :cond_6
    sget-boolean v2, Lcom/sprint/smps/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_21

    if-nez v0, :cond_21

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 786
    :catch_12
    move-exception v1

    .line 787
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v2, Lcom/sprint/smps/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 790
    .end local v1           #ex:Ljava/io/IOException;
    :cond_21
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .registers 8
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-static {p0, p1, p2, p3}, Lcom/sprint/smps/util/Base64;->encodeBytesToBytes([BIII)[B

    move-result-object v0

    .line 832
    .local v0, encoded:[B
    :try_start_4
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_c

    .line 835
    :goto_b
    return-object v2

    .line 834
    :catch_c
    move-exception v1

    .line 835
    .local v1, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_b
.end method

.method public static encodeBytesToBytes([B)[B
    .registers 6
    .parameter "source"

    .prologue
    .line 855
    const/4 v0, 0x0

    check-cast v0, [B

    .line 857
    .local v0, encoded:[B
    const/4 v2, 0x0

    :try_start_4
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/sprint/smps/util/Base64;->encodeBytesToBytes([BIII)[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 861
    :cond_a
    return-object v0

    .line 858
    :catch_b
    move-exception v1

    .line 859
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v2, Lcom/sprint/smps/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOExceptions only come from GZipping, which is turned off: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static encodeBytesToBytes([BIII)[B
    .registers 27
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    if-nez p0, :cond_a

    .line 886
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Cannot serialize a null array."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 889
    :cond_a
    if-gez p1, :cond_23

    .line 890
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot have negative offset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 893
    :cond_23
    if-gez p2, :cond_3c

    .line 894
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot have length offset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 897
    :cond_3c
    add-int v4, p1, p2

    move-object/from16 v0, p0

    array-length v5, v0

    if-le v4, v5, :cond_6c

    .line 898
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 899
    const-string v5, "Cannot have offset of %d and length of %d with array of length %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    const/4 v9, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    const/4 v9, 0x2

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 898
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 905
    :cond_6c
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_b0

    .line 906
    const/4 v12, 0x0

    .line 907
    .local v12, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    .line 908
    .local v18, gzos:Ljava/util/zip/GZIPOutputStream;
    const/4 v10, 0x0

    .line 912
    .local v10, b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    :try_start_74
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_a3

    .line 913
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .local v13, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_79
    new-instance v11, Lcom/sprint/smps/util/Base64$OutputStream;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v11, v13, v4}, Lcom/sprint/smps/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_12f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_80} :catch_13f

    .line 914
    .end local v10           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .local v11, b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    :try_start_80
    new-instance v19, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_133
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_87} :catch_143

    .line 916
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v19, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_87
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 917
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_95
    .catchall {:try_start_87 .. :try_end_95} :catchall_138
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_95} :catch_148

    .line 925
    :try_start_95
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_126

    .line 926
    :goto_98
    :try_start_98
    invoke-virtual {v11}, Lcom/sprint/smps/util/Base64$OutputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_129

    .line 927
    :goto_9b
    :try_start_9b
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_12c

    .line 930
    :goto_9e
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 985
    .end local v11           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_a2
    return-object v17

    .line 919
    .restart local v10       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_a3
    move-exception v8

    .line 922
    .local v8, e:Ljava/io/IOException;
    :goto_a4
    :try_start_a4
    throw v8
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    .line 924
    .end local v8           #e:Ljava/io/IOException;
    :catchall_a5
    move-exception v4

    .line 925
    :goto_a6
    :try_start_a6
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_120

    .line 926
    :goto_a9
    :try_start_a9
    invoke-virtual {v10}, Lcom/sprint/smps/util/Base64$OutputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_122

    .line 927
    :goto_ac
    :try_start_ac
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_124

    .line 928
    :goto_af
    throw v4

    .line 935
    .end local v10           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    :cond_b0
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_f6

    const/4 v14, 0x1

    .line 944
    .local v14, breakLines:Z
    :goto_b5
    div-int/lit8 v4, p2, 0x3

    mul-int/lit8 v5, v4, 0x4

    rem-int/lit8 v4, p2, 0x3

    if-lez v4, :cond_f8

    const/4 v4, 0x4

    :goto_be
    add-int v16, v5, v4

    .line 945
    .local v16, encLen:I
    if-eqz v14, :cond_c6

    .line 946
    div-int/lit8 v4, v16, 0x4c

    add-int v16, v16, v4

    .line 948
    :cond_c6
    move/from16 v0, v16

    new-array v7, v0, [B

    .line 951
    .local v7, outBuff:[B
    const/4 v15, 0x0

    .line 952
    .local v15, d:I
    const/4 v8, 0x0

    .line 953
    .local v8, e:I
    add-int/lit8 v20, p2, -0x2

    .line 954
    .local v20, len2:I
    const/16 v21, 0x0

    .line 955
    .local v21, lineLength:I
    :goto_d0
    move/from16 v0, v20

    if-lt v15, v0, :cond_fa

    .line 967
    move/from16 v0, p2

    if-ge v15, v0, :cond_e5

    .line 968
    add-int v5, v15, p1

    sub-int v6, p2, v15

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/sprint/smps/util/Base64;->encode3to4([BII[BII)[B

    .line 969
    add-int/lit8 v8, v8, 0x4

    .line 974
    :cond_e5
    array-length v4, v7

    add-int/lit8 v4, v4, -0x1

    if-gt v8, v4, :cond_11d

    .line 979
    new-array v0, v8, [B

    move-object/from16 v17, v0

    .line 980
    .local v17, finalOut:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v7, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a2

    .line 935
    .end local v7           #outBuff:[B
    .end local v8           #e:I
    .end local v14           #breakLines:Z
    .end local v15           #d:I
    .end local v16           #encLen:I
    .end local v17           #finalOut:[B
    .end local v20           #len2:I
    .end local v21           #lineLength:I
    :cond_f6
    const/4 v14, 0x0

    goto :goto_b5

    .line 944
    .restart local v14       #breakLines:Z
    :cond_f8
    const/4 v4, 0x0

    goto :goto_be

    .line 956
    .restart local v7       #outBuff:[B
    .restart local v8       #e:I
    .restart local v15       #d:I
    .restart local v16       #encLen:I
    .restart local v20       #len2:I
    .restart local v21       #lineLength:I
    :cond_fa
    add-int v5, v15, p1

    const/4 v6, 0x3

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/sprint/smps/util/Base64;->encode3to4([BII[BII)[B

    .line 958
    add-int/lit8 v21, v21, 0x4

    .line 959
    if-eqz v14, :cond_118

    const/16 v4, 0x4c

    move/from16 v0, v21

    if-lt v0, v4, :cond_118

    .line 961
    add-int/lit8 v4, v8, 0x4

    const/16 v5, 0xa

    aput-byte v5, v7, v4

    .line 962
    add-int/lit8 v8, v8, 0x1

    .line 963
    const/16 v21, 0x0

    .line 955
    :cond_118
    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v8, v8, 0x4

    goto :goto_d0

    :cond_11d
    move-object/from16 v17, v7

    .line 985
    goto :goto_a2

    .line 925
    .end local v7           #outBuff:[B
    .end local v8           #e:I
    .end local v14           #breakLines:Z
    .end local v15           #d:I
    .end local v16           #encLen:I
    .end local v20           #len2:I
    .end local v21           #lineLength:I
    .restart local v10       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_120
    move-exception v5

    goto :goto_a9

    .line 926
    :catch_122
    move-exception v5

    goto :goto_ac

    .line 927
    :catch_124
    move-exception v5

    goto :goto_af

    .line 925
    .end local v10           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_126
    move-exception v4

    goto/16 :goto_98

    .line 926
    :catch_129
    move-exception v4

    goto/16 :goto_9b

    .line 927
    :catch_12c
    move-exception v4

    goto/16 :goto_9e

    .line 924
    .end local v11           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v10       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_12f
    move-exception v4

    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a6

    .end local v10           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_133
    move-exception v4

    move-object v10, v11

    .end local v11           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v10       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a6

    .end local v10           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_138
    move-exception v4

    move-object v10, v11

    .end local v11           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v10       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    move-object/from16 v18, v19

    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a6

    .line 919
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_13f
    move-exception v8

    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a4

    .end local v10           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_143
    move-exception v8

    move-object v10, v11

    .end local v11           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v10       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a4

    .end local v10           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_148
    move-exception v8

    move-object v10, v11

    .end local v11           #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v10       #b64os:Lcom/sprint/smps/util/Base64$OutputStream;
    move-object/from16 v18, v19

    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a4
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "infile"
    .parameter "outfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1581
    invoke-static {p0}, Lcom/sprint/smps/util/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1582
    .local v1, encoded:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1584
    .local v2, out:Ljava/io/OutputStream;
    :try_start_5
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1585
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1584
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1c

    .line 1586
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_f
    const-string v4, "US-ASCII"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_27
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_2a

    .line 1592
    :try_start_18
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_25

    .line 1595
    :goto_1b
    return-void

    .line 1588
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_1c
    move-exception v0

    .line 1589
    .local v0, e:Ljava/io/IOException;
    :goto_1d
    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 1591
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1e
    move-exception v4

    .line 1592
    :goto_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    .line 1594
    :goto_22
    throw v4

    .line 1593
    :catch_23
    move-exception v5

    goto :goto_22

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_25
    move-exception v4

    goto :goto_1b

    .line 1591
    :catchall_27
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1f

    .line 1588
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_2a
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1d
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1536
    const/4 v4, 0x0

    .line 1537
    .local v4, encodedData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1541
    .local v0, bis:Lcom/sprint/smps/util/Base64$InputStream;
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1542
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x3ff6666666666666L

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    add-double/2addr v8, v10

    double-to-int v8, v8

    const/16 v9, 0x28

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-array v2, v8, [B

    .line 1543
    .local v2, buffer:[B
    const/4 v6, 0x0

    .line 1544
    .local v6, length:I
    const/4 v7, 0x0

    .line 1547
    .local v7, numBytes:I
    new-instance v1, Lcom/sprint/smps/util/Base64$InputStream;

    .line 1548
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 1549
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1548
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1549
    const/4 v9, 0x1

    .line 1547
    invoke-direct {v1, v8, v9}, Lcom/sprint/smps/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_48
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_30} :catch_46

    .line 1552
    .end local v0           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .local v1, bis:Lcom/sprint/smps/util/Base64$InputStream;
    :goto_30
    const/16 v8, 0x1000

    :try_start_32
    invoke-virtual {v1, v2, v6, v8}, Lcom/sprint/smps/util/Base64$InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_44

    .line 1557
    new-instance v4, Ljava/lang/String;

    .end local v4           #encodedData:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "US-ASCII"

    invoke-direct {v4, v2, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_51
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_40} :catch_54

    .line 1564
    .restart local v4       #encodedData:Ljava/lang/String;
    :try_start_40
    invoke-virtual {v1}, Lcom/sprint/smps/util/Base64$InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_4f

    .line 1567
    :goto_43
    return-object v4

    .line 1553
    :cond_44
    add-int/2addr v6, v7

    goto :goto_30

    .line 1560
    .end local v1           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    :catch_46
    move-exception v3

    .line 1561
    .end local v4           #encodedData:Ljava/lang/String;
    .local v3, e:Ljava/io/IOException;
    :goto_47
    :try_start_47
    throw v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 1563
    .end local v3           #e:Ljava/io/IOException;
    :catchall_48
    move-exception v8

    .line 1564
    :goto_49
    :try_start_49
    invoke-virtual {v0}, Lcom/sprint/smps/util/Base64$InputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 1565
    :goto_4c
    throw v8

    .line 1564
    :catch_4d
    move-exception v9

    goto :goto_4c

    .end local v0           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v1       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #encodedData:Ljava/lang/String;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_4f
    move-exception v8

    goto :goto_43

    .line 1563
    .end local v4           #encodedData:Ljava/lang/String;
    :catchall_51
    move-exception v8

    move-object v0, v1

    .end local v1           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v0       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    goto :goto_49

    .line 1560
    .end local v0           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v1       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    :catch_54
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Lcom/sprint/smps/util/Base64$InputStream;
    .restart local v0       #bis:Lcom/sprint/smps/util/Base64$InputStream;
    goto :goto_47
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 2
    .parameter "serializableObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sprint/smps/util/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .registers 15
    .parameter "serializableObject"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    if-nez p0, :cond_a

    .line 653
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "Cannot serialize a null object."

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 657
    :cond_a
    const/4 v2, 0x0

    .line 658
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 659
    .local v0, b64os:Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 660
    .local v5, gzos:Ljava/util/zip/GZIPOutputStream;
    const/4 v7, 0x0

    .line 665
    .local v7, oos:Ljava/io/ObjectOutputStream;
    :try_start_e
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_4c

    .line 666
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_13
    new-instance v1, Lcom/sprint/smps/util/Base64$OutputStream;

    or-int/lit8 v10, p1, 0x1

    invoke-direct {v1, v3, v10}, Lcom/sprint/smps/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_77
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_83

    .line 667
    .end local v0           #b64os:Ljava/io/OutputStream;
    .local v1, b64os:Ljava/io/OutputStream;
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_45

    .line 669
    :try_start_1e
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_86

    .line 670
    .end local v5           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v6, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_23
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_8a

    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .local v8, oos:Ljava/io/ObjectOutputStream;
    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .line 675
    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_2a
    :try_start_2a
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_86

    .line 683
    :try_start_2d
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_6f

    .line 684
    :goto_30
    :try_start_30
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_71

    .line 685
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_73

    .line 686
    :goto_36
    :try_start_36
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_75

    .line 691
    :goto_39
    :try_start_39
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const-string v12, "US-ASCII"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_39 .. :try_end_44} :catch_5c

    .line 695
    :goto_44
    return-object v10

    .line 673
    :cond_45
    :try_start_45
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_86

    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_2a

    .line 677
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_4c
    move-exception v4

    .line 680
    .local v4, e:Ljava/io/IOException;
    :goto_4d
    :try_start_4d
    throw v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 682
    .end local v4           #e:Ljava/io/IOException;
    :catchall_4e
    move-exception v10

    .line 683
    :goto_4f
    :try_start_4f
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_67

    .line 684
    :goto_52
    :try_start_52
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_69

    .line 685
    :goto_55
    :try_start_55
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_6b

    .line 686
    :goto_58
    :try_start_58
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_6d

    .line 687
    :goto_5b
    throw v10

    .line 693
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_5c
    move-exception v9

    .line 695
    .local v9, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    goto :goto_44

    .line 683
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #uue:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_67
    move-exception v11

    goto :goto_52

    .line 684
    :catch_69
    move-exception v11

    goto :goto_55

    .line 685
    :catch_6b
    move-exception v11

    goto :goto_58

    .line 686
    :catch_6d
    move-exception v11

    goto :goto_5b

    .line 683
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_6f
    move-exception v10

    goto :goto_30

    .line 684
    :catch_71
    move-exception v10

    goto :goto_33

    .line 685
    :catch_73
    move-exception v10

    goto :goto_36

    .line 686
    :catch_75
    move-exception v10

    goto :goto_39

    .line 682
    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    :catchall_77
    move-exception v10

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4f

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_7a
    move-exception v10

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4f

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_7e
    move-exception v10

    move-object v5, v6

    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4f

    .line 677
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_83
    move-exception v4

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4d

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_86
    move-exception v4

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4d

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_8a
    move-exception v4

    move-object v5, v6

    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4d
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .registers 7
    .parameter "dataToEncode"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1404
    if-nez p0, :cond_a

    .line 1405
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Data to encode was null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1408
    :cond_a
    const/4 v0, 0x0

    .line 1410
    .local v0, bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :try_start_b
    new-instance v1, Lcom/sprint/smps/util/Base64$OutputStream;

    .line 1411
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1410
    invoke-direct {v1, v3, v4}, Lcom/sprint/smps/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_1d

    .line 1412
    .end local v0           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .local v1, bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :try_start_16
    invoke-virtual {v1, p0}, Lcom/sprint/smps/util/Base64$OutputStream;->write([B)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_28
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2b

    .line 1418
    :try_start_19
    invoke-virtual {v1}, Lcom/sprint/smps/util/Base64$OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_26

    .line 1421
    :goto_1c
    return-void

    .line 1414
    .end local v1           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v0       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :catch_1d
    move-exception v2

    .line 1415
    .local v2, e:Ljava/io/IOException;
    :goto_1e
    :try_start_1e
    throw v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 1417
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1f
    move-exception v3

    .line 1418
    :goto_20
    :try_start_20
    invoke-virtual {v0}, Lcom/sprint/smps/util/Base64$OutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    .line 1419
    :goto_23
    throw v3

    .line 1418
    :catch_24
    move-exception v4

    goto :goto_23

    .end local v0           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v1       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :catch_26
    move-exception v3

    goto :goto_1c

    .line 1417
    :catchall_28
    move-exception v3

    move-object v0, v1

    .end local v1           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v0       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    goto :goto_20

    .line 1414
    .end local v0           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v1       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    :catch_2b
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    .restart local v0       #bos:Lcom/sprint/smps/util/Base64$OutputStream;
    goto :goto_1e
.end method

.method private static final getAlphabet(I)[B
    .registers 3
    .parameter "options"

    .prologue
    .line 410
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 411
    sget-object v0, Lcom/sprint/smps/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 415
    :goto_8
    return-object v0

    .line 412
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 413
    sget-object v0, Lcom/sprint/smps/util/Base64;->_ORDERED_ALPHABET:[B

    goto :goto_8

    .line 415
    :cond_12
    sget-object v0, Lcom/sprint/smps/util/Base64;->_STANDARD_ALPHABET:[B

    goto :goto_8
.end method

.method private static final getDecodabet(I)[B
    .registers 3
    .parameter "options"

    .prologue
    .line 428
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 429
    sget-object v0, Lcom/sprint/smps/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 433
    :goto_8
    return-object v0

    .line 430
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 431
    sget-object v0, Lcom/sprint/smps/util/Base64;->_ORDERED_DECODABET:[B

    goto :goto_8

    .line 433
    :cond_12
    sget-object v0, Lcom/sprint/smps/util/Base64;->_STANDARD_DECODABET:[B

    goto :goto_8
.end method
