.class public Lcom/google/android/ytremote/util/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B

.field static final synthetic c:Z

.field private static final d:[B

.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, -0x5

    const/16 v4, -0x9

    .line 42
    const-class v0, Lcom/google/android/ytremote/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_4fc

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/google/android/ytremote/util/Base64;->c:Z

    .line 61
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_500

    .line 60
    sput-object v0, Lcom/google/android/ytremote/util/Base64;->a:[B

    .line 81
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_524

    .line 80
    sput-object v0, Lcom/google/android/ytremote/util/Base64;->b:[B

    .line 99
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v2, 0x0

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

    .line 100
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 101
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 102
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 103
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

    .line 104
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

    .line 105
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 106
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

    .line 107
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2c

    .line 108
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 109
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x30

    .line 110
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

    .line 111
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 112
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 113
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 114
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

    .line 115
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

    .line 116
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

    .line 117
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

    .line 118
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

    .line 119
    aput-byte v4, v0, v2

    const/16 v2, 0x7c

    aput-byte v4, v0, v2

    const/16 v2, 0x7d

    aput-byte v4, v0, v2

    const/16 v2, 0x7e

    aput-byte v4, v0, v2

    const/16 v2, 0x7f

    aput-byte v4, v0, v2

    .line 99
    sput-object v0, Lcom/google/android/ytremote/util/Base64;->d:[B

    .line 134
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v2, 0x0

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

    .line 135
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 136
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 137
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 138
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

    .line 139
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

    .line 140
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 141
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

    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    .line 142
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2e

    .line 143
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 144
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

    .line 145
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 146
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 147
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 148
    aput-byte v1, v0, v2

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 149
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 150
    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    .line 151
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 152
    aput-byte v4, v0, v1

    const/16 v1, 0x61

    .line 153
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 154
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 155
    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    .line 133
    sput-object v0, Lcom/google/android/ytremote/util/Base64;->e:[B

    return-void

    .line 42
    :cond_4fc
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 61
    nop

    :array_500
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

    .line 81
    :array_524
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
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 15
    .parameter

    .prologue
    const/16 v13, 0xa

    const v12, 0x7fffffff

    const/16 v11, 0x3d

    const/4 v1, 0x0

    .line 252
    array-length v5, p0

    sget-object v6, Lcom/google/android/ytremote/util/Base64;->a:[B

    add-int/lit8 v0, v5, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    div-int v2, v0, v12

    add-int/2addr v0, v2

    new-array v7, v0, [B

    add-int/lit8 v8, v5, -0x2

    move v4, v1

    move v2, v1

    move v3, v1

    :goto_1b
    if-lt v3, v8, :cond_5f

    if-ge v3, v5, :cond_52

    add-int v8, v3, v1

    sub-int/2addr v5, v3

    if-lez v5, :cond_b0

    aget-byte v0, p0, v8

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    move v3, v0

    :goto_2b
    const/4 v0, 0x1

    if-le v5, v0, :cond_b3

    add-int/lit8 v0, v8, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x10

    :goto_36
    or-int/2addr v3, v0

    const/4 v0, 0x2

    if-le v5, v0, :cond_b5

    add-int/lit8 v0, v8, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :goto_42
    or-int/2addr v0, v3

    packed-switch v5, :pswitch_data_11c

    :goto_46
    add-int/lit8 v0, v4, 0x4

    if-ne v0, v12, :cond_50

    add-int/lit8 v0, v2, 0x4

    aput-byte v13, v7, v0

    add-int/lit8 v2, v2, 0x1

    :cond_50
    add-int/lit8 v2, v2, 0x4

    :cond_52
    sget-boolean v0, Lcom/google/android/ytremote/util/Base64;->c:Z

    if-nez v0, :cond_115

    array-length v0, v7

    if-eq v2, v0, :cond_115

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5f
    add-int v0, v3, v1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v9, v3, 0x1

    add-int/2addr v9, v1

    aget-byte v9, p0, v9

    shl-int/lit8 v9, v9, 0x18

    ushr-int/lit8 v9, v9, 0x10

    or-int/2addr v0, v9

    add-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v1

    aget-byte v9, p0, v9

    shl-int/lit8 v9, v9, 0x18

    ushr-int/lit8 v9, v9, 0x18

    or-int/2addr v0, v9

    ushr-int/lit8 v9, v0, 0x12

    aget-byte v9, v6, v9

    aput-byte v9, v7, v2

    add-int/lit8 v9, v2, 0x1

    ushr-int/lit8 v10, v0, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v6, v10

    aput-byte v10, v7, v9

    add-int/lit8 v9, v2, 0x2

    ushr-int/lit8 v10, v0, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v6, v10

    aput-byte v10, v7, v9

    add-int/lit8 v9, v2, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v9

    add-int/lit8 v0, v4, 0x4

    if-ne v0, v12, :cond_a9

    add-int/lit8 v0, v2, 0x4

    aput-byte v13, v7, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    :cond_a9
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x4

    move v4, v0

    goto/16 :goto_1b

    :cond_b0
    move v3, v1

    goto/16 :goto_2b

    :cond_b3
    move v0, v1

    goto :goto_36

    :cond_b5
    move v0, v1

    goto :goto_42

    :pswitch_b7
    ushr-int/lit8 v3, v0, 0x12

    aget-byte v3, v6, v3

    aput-byte v3, v7, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v3

    add-int/lit8 v3, v2, 0x2

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v3

    add-int/lit8 v3, v2, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v3

    goto/16 :goto_46

    :pswitch_db
    ushr-int/lit8 v3, v0, 0x12

    aget-byte v3, v6, v3

    aput-byte v3, v7, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v3

    add-int/lit8 v3, v2, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v3

    add-int/lit8 v0, v2, 0x3

    aput-byte v11, v7, v0

    goto/16 :goto_46

    :pswitch_fb
    ushr-int/lit8 v3, v0, 0x12

    aget-byte v3, v6, v3

    aput-byte v3, v7, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v3

    add-int/lit8 v0, v2, 0x2

    aput-byte v11, v7, v0

    add-int/lit8 v0, v2, 0x3

    aput-byte v11, v7, v0

    goto/16 :goto_46

    :cond_115
    array-length v0, v7

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_fb
        :pswitch_db
        :pswitch_b7
    .end packed-switch
.end method
