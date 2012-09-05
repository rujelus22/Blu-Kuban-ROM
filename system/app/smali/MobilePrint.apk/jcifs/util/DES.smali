.class public Ljcifs/util/DES;
.super Ljava/lang/Object;
.source "DES.java"


# static fields
.field private static SP1:[I

.field private static SP2:[I

.field private static SP3:[I

.field private static SP4:[I

.field private static SP5:[I

.field private static SP6:[I

.field private static SP7:[I

.field private static SP8:[I

.field private static bigbyte:[I

.field private static bytebit:[B

.field private static pc1:[B

.field private static pc2:[B

.field private static totrot:[I


# instance fields
.field private decryptKeys:[I

.field private encryptKeys:[I

.field private tempInts:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x10

    .line 344
    new-array v0, v7, [B

    fill-array-data v0, :array_e4e

    sput-object v0, Ljcifs/util/DES;->bytebit:[B

    .line 348
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_e56

    sput-object v0, Ljcifs/util/DES;->bigbyte:[I

    .line 356
    const/16 v0, 0x38

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 357
    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v1, v0, v4

    const/16 v1, 0x28

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v7, v0, v1

    .line 358
    const/16 v1, 0x39

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    .line 359
    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v4, v0, v1

    const/16 v1, 0x3a

    aput-byte v1, v0, v3

    const/16 v1, 0x11

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    .line 360
    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    .line 361
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    .line 362
    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    .line 363
    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    .line 364
    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v6, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 356
    sput-object v0, Ljcifs/util/DES;->pc1:[B

    .line 366
    new-array v0, v3, [I

    fill-array-data v0, :array_e8a

    sput-object v0, Ljcifs/util/DES;->totrot:[I

    .line 370
    const/16 v0, 0x30

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 371
    const/16 v2, 0xd

    aput-byte v2, v0, v1

    aput-byte v3, v0, v4

    const/16 v1, 0xa

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v6, v0, v1

    const/4 v1, 0x6

    .line 372
    aput-byte v5, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    .line 373
    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    aput-byte v1, v0, v3

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    .line 374
    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v4, v0, v1

    const/16 v1, 0x18

    .line 375
    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    .line 376
    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    .line 377
    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    .line 378
    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    .line 370
    sput-object v0, Ljcifs/util/DES;->pc2:[B

    .line 381
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 382
    const v2, 0x1010400

    aput v2, v0, v1

    const/high16 v1, 0x1

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x1010404

    aput v2, v0, v1

    .line 383
    const v1, 0x1010004

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x10404

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x1

    aput v2, v0, v1

    .line 384
    const/16 v1, 0x400

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 385
    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x1010004

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v6, v0, v1

    .line 386
    const/16 v1, 0x404

    aput v1, v0, v3

    const/16 v1, 0x11

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 387
    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x101

    aput v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x101

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 388
    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 389
    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 390
    const/high16 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0x22

    aput v6, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x101

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 391
    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x26

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 392
    const v2, 0x1010004

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 393
    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x2d

    aput v6, v0, v1

    const/16 v1, 0x2e

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 394
    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x101

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 395
    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 396
    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 397
    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x1010004

    aput v2, v0, v1

    .line 381
    sput-object v0, Ljcifs/util/DES;->SP1:[I

    .line 399
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 400
    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const v1, -0x7fff8000

    aput v1, v0, v4

    const v1, 0x8000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x108020

    aput v2, v0, v1

    .line 401
    const/high16 v1, 0x10

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x20

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    .line 402
    const v1, -0x7fffffe0

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0xb

    const/high16 v2, -0x8000

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 403
    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x7fefffe0

    aput v2, v0, v1

    .line 404
    const v1, 0x108000

    aput v1, v0, v3

    const/16 v1, 0x11

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 405
    const/high16 v2, -0x8000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, -0x7ff0

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 406
    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x108000

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 407
    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, -0x7ff0

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 408
    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 409
    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, -0x7ff0

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 410
    const/high16 v2, -0x7ff0

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 411
    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, -0x8000

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 412
    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 413
    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 414
    const v2, 0x108000

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 415
    const/high16 v2, -0x8000

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x108000

    aput v2, v0, v1

    .line 399
    sput-object v0, Ljcifs/util/DES;->SP2:[I

    .line 417
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 418
    const/16 v2, 0x208

    aput v2, v0, v1

    const v1, 0x8020200

    aput v1, v0, v4

    const/4 v1, 0x3

    const v2, 0x8020008

    aput v2, v0, v1

    .line 419
    const v1, 0x8000200

    aput v1, v0, v6

    const/4 v1, 0x6

    const v2, 0x20208

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x8000200

    aput v2, v0, v1

    .line 420
    const v1, 0x20008

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0xb

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 421
    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x208

    aput v2, v0, v1

    .line 422
    const/high16 v1, 0x800

    aput v1, v0, v3

    const/16 v1, 0x11

    aput v7, v0, v1

    const/16 v1, 0x12

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 423
    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 424
    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 425
    aput v7, v0, v1

    const/16 v1, 0x1d

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 426
    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x21

    const/high16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 427
    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x8000200

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 428
    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x8000200

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 429
    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 430
    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x31

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 431
    aput v7, v0, v1

    const/16 v1, 0x35

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 432
    const/high16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/high16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 433
    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x3d

    aput v7, v0, v1

    const/16 v1, 0x3e

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x20200

    aput v2, v0, v1

    .line 417
    sput-object v0, Ljcifs/util/DES;->SP3:[I

    .line 435
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 436
    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x2081

    aput v1, v0, v4

    const/16 v1, 0x2081

    aput v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x80

    aput v2, v0, v1

    .line 437
    const v1, 0x802080

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x800081

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x800001

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 438
    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 439
    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x800001

    aput v2, v0, v1

    .line 440
    aput v4, v0, v3

    const/16 v1, 0x11

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 441
    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 442
    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v4, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 443
    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x802080

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 444
    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x800001

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 445
    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 446
    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x2b

    aput v4, v0, v1

    const/16 v1, 0x2c

    .line 447
    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2081

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2081

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 448
    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x32

    aput v4, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 449
    const v2, 0x800001

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x802080

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 450
    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 451
    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x802080

    aput v2, v0, v1

    .line 435
    sput-object v0, Ljcifs/util/DES;->SP4:[I

    .line 453
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 454
    const/16 v2, 0x100

    aput v2, v0, v1

    const v1, 0x2080100

    aput v1, v0, v4

    const/high16 v1, 0x208

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x42000100

    aput v2, v0, v1

    .line 455
    const/high16 v1, 0x8

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x4000

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x208

    aput v2, v0, v1

    .line 456
    const v1, 0x40080100

    aput v1, v0, v7

    const/16 v1, 0x9

    const/high16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 457
    const v2, 0x42000100

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x4208

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0xf

    const/high16 v2, 0x4000

    aput v2, v0, v1

    .line 458
    const/high16 v1, 0x200

    aput v1, v0, v3

    const/16 v1, 0x11

    const/high16 v2, 0x4008

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x4008

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 459
    const v2, 0x40000100

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 460
    const/high16 v2, 0x4208

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x40000100

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/high16 v2, 0x4200

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 461
    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x4200

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 462
    const/high16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x42000100

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 463
    const/high16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x42000100

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 464
    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/high16 v2, 0x4208

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 465
    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, 0x4208

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 466
    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x4200

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 467
    const/high16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x36

    const/high16 v2, 0x4008

    aput v2, v0, v1

    const/16 v1, 0x37

    const/high16 v2, 0x4200

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 468
    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x40000100

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/high16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 469
    const/high16 v2, 0x4008

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x40000100

    aput v2, v0, v1

    .line 453
    sput-object v0, Ljcifs/util/DES;->SP5:[I

    .line 471
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 472
    const v2, 0x20000010

    aput v2, v0, v1

    const/high16 v1, 0x2040

    aput v1, v0, v4

    const/16 v1, 0x4000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x20404010

    aput v2, v0, v1

    .line 473
    const/high16 v1, 0x2040

    aput v1, v0, v6

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const v2, 0x20404010

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x40

    aput v2, v0, v1

    .line 474
    const v1, 0x20004000

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0xa

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 475
    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 476
    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 477
    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v3, v0, v1

    const/16 v1, 0x17

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 478
    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 479
    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 480
    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0x21

    aput v3, v0, v1

    const/16 v1, 0x22

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 481
    const v2, 0x20404010

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 482
    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 483
    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x20404010

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, 0x2040

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 484
    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 485
    aput v3, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x36

    const/high16 v2, 0x2040

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 486
    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 487
    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x20004010

    aput v2, v0, v1

    .line 471
    sput-object v0, Ljcifs/util/DES;->SP6:[I

    .line 489
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 490
    const/high16 v2, 0x20

    aput v2, v0, v1

    const v1, 0x4200002

    aput v1, v0, v4

    const v1, 0x4000802

    aput v1, v0, v5

    .line 491
    const/16 v1, 0x800

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x4000802

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x200802

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x4200800

    aput v2, v0, v1

    .line 492
    const v1, 0x4200802

    aput v1, v0, v7

    const/16 v1, 0x9

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 493
    aput v5, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x802

    aput v2, v0, v1

    .line 494
    const v1, 0x4000800

    aput v1, v0, v3

    const/16 v1, 0x11

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x4000800

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 495
    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 496
    const/high16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 497
    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x1d

    aput v5, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 498
    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x22

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x4000802

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 499
    const v2, 0x4000802

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v5, v0, v1

    const/16 v1, 0x28

    .line 500
    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x4000800

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 501
    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 502
    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x33

    const/high16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 503
    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x36

    aput v5, v0, v1

    const/16 v1, 0x37

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 504
    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/high16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 505
    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x4000800

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x200002

    aput v2, v0, v1

    .line 489
    sput-object v0, Ljcifs/util/DES;->SP7:[I

    .line 507
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 508
    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x1000

    aput v1, v0, v4

    const/high16 v1, 0x4

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x10041040

    aput v2, v0, v1

    .line 509
    const/high16 v1, 0x1000

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x10001040

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x1000

    aput v2, v0, v1

    .line 510
    const v1, 0x40040

    aput v1, v0, v7

    const/16 v1, 0x9

    const/high16 v2, 0x1004

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 511
    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x40

    aput v2, v0, v1

    .line 512
    const/high16 v1, 0x1004

    aput v1, v0, v3

    const/16 v1, 0x11

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 513
    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 514
    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 515
    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 516
    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x21

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 517
    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 518
    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/high16 v2, 0x1004

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 519
    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/high16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 520
    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 521
    const/high16 v2, 0x1004

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 522
    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 523
    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/high16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x10041000

    aput v2, v0, v1

    .line 507
    sput-object v0, Ljcifs/util/DES;->SP8:[I

    .line 73
    return-void

    .line 344
    nop

    :array_e4e
    .array-data 0x1
        0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data

    .line 348
    :array_e56
    .array-data 0x4
        0x0t 0x0t 0x80t 0x0t
        0x0t 0x0t 0x40t 0x0t
        0x0t 0x0t 0x20t 0x0t
        0x0t 0x0t 0x10t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 366
    :array_e8a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x20

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-array v0, v1, [I

    iput-object v0, p0, Ljcifs/util/DES;->encryptKeys:[I

    .line 77
    new-array v0, v1, [I

    iput-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    .line 84
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .parameter "key"

    .prologue
    const/16 v2, 0x20

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-array v1, v2, [I

    iput-object v1, p0, Ljcifs/util/DES;->encryptKeys:[I

    .line 77
    new-array v1, v2, [I

    iput-object v1, p0, Ljcifs/util/DES;->decryptKeys:[I

    .line 79
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Ljcifs/util/DES;->tempInts:[I

    .line 88
    array-length v1, p1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_21

    .line 89
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 90
    .local v0, key8:[B
    invoke-static {p1, v0}, Ljcifs/util/DES;->makeSMBKey([B[B)V

    .line 91
    invoke-virtual {p0, v0}, Ljcifs/util/DES;->setKey([B)V

    .line 95
    .end local v0           #key8:[B
    :goto_20
    return-void

    .line 93
    :cond_21
    invoke-virtual {p0, p1}, Ljcifs/util/DES;->setKey([B)V

    goto :goto_20
.end method

.method private cookey([I[I)V
    .registers 13
    .parameter "raw"
    .parameter "KnL"

    .prologue
    const/high16 v9, 0xfc

    const v8, 0x3f000

    .line 174
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v4, 0x0

    .local v4, rawi:I
    const/4 v0, 0x0

    .local v0, KnLi:I
    move v5, v4

    .end local v4           #rawi:I
    .local v5, rawi:I
    :goto_9
    const/16 v6, 0x10

    if-lt v1, v6, :cond_e

    .line 188
    return-void

    .line 175
    :cond_e
    add-int/lit8 v4, v5, 0x1

    .end local v5           #rawi:I
    .restart local v4       #rawi:I
    aget v2, p1, v5

    .line 176
    .local v2, raw0:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #rawi:I
    .restart local v5       #rawi:I
    aget v3, p1, v4

    .line 177
    .local v3, raw1:I
    and-int v6, v2, v9

    shl-int/lit8 v6, v6, 0x6

    aput v6, p2, v0

    .line 178
    aget v6, p2, v0

    and-int/lit16 v7, v2, 0xfc0

    shl-int/lit8 v7, v7, 0xa

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 179
    aget v6, p2, v0

    and-int v7, v3, v9

    ushr-int/lit8 v7, v7, 0xa

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 180
    aget v6, p2, v0

    and-int/lit16 v7, v3, 0xfc0

    ushr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    and-int v6, v2, v8

    shl-int/lit8 v6, v6, 0xc

    aput v6, p2, v0

    .line 183
    aget v6, p2, v0

    and-int/lit8 v7, v2, 0x3f

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 184
    aget v6, p2, v0

    and-int v7, v3, v8

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 185
    aget v6, p2, v0

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private decrypt([BI[BI)V
    .registers 10
    .parameter "cipherText"
    .parameter "cipherOff"
    .parameter "clearText"
    .parameter "clearOff"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {p1, p2, v0, v3, v4}, Ljcifs/util/DES;->squashBytesToInts([BI[III)V

    .line 203
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object v1, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object v2, p0, Ljcifs/util/DES;->decryptKeys:[I

    invoke-direct {p0, v0, v1, v2}, Ljcifs/util/DES;->des([I[I[I)V

    .line 204
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {v0, v3, p3, p4, v4}, Ljcifs/util/DES;->spreadIntsToBytes([II[BII)V

    .line 205
    return-void
.end method

.method private des([I[I[I)V
    .registers 13
    .parameter "inInts"
    .parameter "outInts"
    .parameter "keys"

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, keysi:I
    const/4 v7, 0x0

    aget v3, p1, v7

    .line 215
    .local v3, leftt:I
    const/4 v7, 0x1

    aget v4, p1, v7

    .line 217
    .local v4, right:I
    ushr-int/lit8 v7, v3, 0x4

    xor-int/2addr v7, v4

    const v8, 0xf0f0f0f

    and-int v6, v7, v8

    .line 218
    .local v6, work:I
    xor-int/2addr v4, v6

    .line 219
    shl-int/lit8 v7, v6, 0x4

    xor-int/2addr v3, v7

    .line 221
    ushr-int/lit8 v7, v3, 0x10

    xor-int/2addr v7, v4

    const v8, 0xffff

    and-int v6, v7, v8

    .line 222
    xor-int/2addr v4, v6

    .line 223
    shl-int/lit8 v7, v6, 0x10

    xor-int/2addr v3, v7

    .line 225
    ushr-int/lit8 v7, v4, 0x2

    xor-int/2addr v7, v3

    const v8, 0x33333333

    and-int v6, v7, v8

    .line 226
    xor-int/2addr v3, v6

    .line 227
    shl-int/lit8 v7, v6, 0x2

    xor-int/2addr v4, v7

    .line 229
    ushr-int/lit8 v7, v4, 0x8

    xor-int/2addr v7, v3

    const v8, 0xff00ff

    and-int v6, v7, v8

    .line 230
    xor-int/2addr v3, v6

    .line 231
    shl-int/lit8 v7, v6, 0x8

    xor-int/2addr v4, v7

    .line 232
    shl-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v8, v4, 0x1f

    and-int/lit8 v8, v8, 0x1

    or-int v4, v7, v8

    .line 234
    xor-int v7, v3, v4

    const v8, -0x55555556

    and-int v6, v7, v8

    .line 235
    xor-int/2addr v3, v6

    .line 236
    xor-int/2addr v4, v6

    .line 237
    shl-int/lit8 v7, v3, 0x1

    ushr-int/lit8 v8, v3, 0x1f

    and-int/lit8 v8, v8, 0x1

    or-int v3, v7, v8

    .line 239
    const/4 v5, 0x0

    .local v5, round:I
    move v2, v1

    .end local v1           #keysi:I
    .local v2, keysi:I
    :goto_52
    const/16 v7, 0x8

    if-lt v5, v7, :cond_a2

    .line 266
    shl-int/lit8 v7, v4, 0x1f

    ushr-int/lit8 v8, v4, 0x1

    or-int v4, v7, v8

    .line 267
    xor-int v7, v3, v4

    const v8, -0x55555556

    and-int v6, v7, v8

    .line 268
    xor-int/2addr v3, v6

    .line 269
    xor-int/2addr v4, v6

    .line 270
    shl-int/lit8 v7, v3, 0x1f

    ushr-int/lit8 v8, v3, 0x1

    or-int v3, v7, v8

    .line 271
    ushr-int/lit8 v7, v3, 0x8

    xor-int/2addr v7, v4

    const v8, 0xff00ff

    and-int v6, v7, v8

    .line 272
    xor-int/2addr v4, v6

    .line 273
    shl-int/lit8 v7, v6, 0x8

    xor-int/2addr v3, v7

    .line 274
    ushr-int/lit8 v7, v3, 0x2

    xor-int/2addr v7, v4

    const v8, 0x33333333

    and-int v6, v7, v8

    .line 275
    xor-int/2addr v4, v6

    .line 276
    shl-int/lit8 v7, v6, 0x2

    xor-int/2addr v3, v7

    .line 277
    ushr-int/lit8 v7, v4, 0x10

    xor-int/2addr v7, v3

    const v8, 0xffff

    and-int v6, v7, v8

    .line 278
    xor-int/2addr v3, v6

    .line 279
    shl-int/lit8 v7, v6, 0x10

    xor-int/2addr v4, v7

    .line 280
    ushr-int/lit8 v7, v4, 0x4

    xor-int/2addr v7, v3

    const v8, 0xf0f0f0f

    and-int v6, v7, v8

    .line 281
    xor-int/2addr v3, v6

    .line 282
    shl-int/lit8 v7, v6, 0x4

    xor-int/2addr v4, v7

    .line 283
    const/4 v7, 0x0

    aput v4, p2, v7

    .line 284
    const/4 v7, 0x1

    aput v3, p2, v7

    .line 285
    return-void

    .line 240
    :cond_a2
    shl-int/lit8 v7, v4, 0x1c

    ushr-int/lit8 v8, v4, 0x4

    or-int v6, v7, v8

    .line 241
    add-int/lit8 v1, v2, 0x1

    .end local v2           #keysi:I
    .restart local v1       #keysi:I
    aget v7, p3, v2

    xor-int/2addr v6, v7

    .line 242
    sget-object v7, Ljcifs/util/DES;->SP7:[I

    and-int/lit8 v8, v6, 0x3f

    aget v0, v7, v8

    .line 243
    .local v0, fval:I
    sget-object v7, Ljcifs/util/DES;->SP5:[I

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 244
    sget-object v7, Ljcifs/util/DES;->SP3:[I

    ushr-int/lit8 v8, v6, 0x10

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 245
    sget-object v7, Ljcifs/util/DES;->SP1:[I

    ushr-int/lit8 v8, v6, 0x18

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 246
    add-int/lit8 v2, v1, 0x1

    .end local v1           #keysi:I
    .restart local v2       #keysi:I
    aget v7, p3, v1

    xor-int v6, v4, v7

    .line 247
    sget-object v7, Ljcifs/util/DES;->SP8:[I

    and-int/lit8 v8, v6, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 248
    sget-object v7, Ljcifs/util/DES;->SP6:[I

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 249
    sget-object v7, Ljcifs/util/DES;->SP4:[I

    ushr-int/lit8 v8, v6, 0x10

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 250
    sget-object v7, Ljcifs/util/DES;->SP2:[I

    ushr-int/lit8 v8, v6, 0x18

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 251
    xor-int/2addr v3, v0

    .line 252
    shl-int/lit8 v7, v3, 0x1c

    ushr-int/lit8 v8, v3, 0x4

    or-int v6, v7, v8

    .line 253
    add-int/lit8 v1, v2, 0x1

    .end local v2           #keysi:I
    .restart local v1       #keysi:I
    aget v7, p3, v2

    xor-int/2addr v6, v7

    .line 254
    sget-object v7, Ljcifs/util/DES;->SP7:[I

    and-int/lit8 v8, v6, 0x3f

    aget v0, v7, v8

    .line 255
    sget-object v7, Ljcifs/util/DES;->SP5:[I

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 256
    sget-object v7, Ljcifs/util/DES;->SP3:[I

    ushr-int/lit8 v8, v6, 0x10

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 257
    sget-object v7, Ljcifs/util/DES;->SP1:[I

    ushr-int/lit8 v8, v6, 0x18

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 258
    add-int/lit8 v2, v1, 0x1

    .end local v1           #keysi:I
    .restart local v2       #keysi:I
    aget v7, p3, v1

    xor-int v6, v3, v7

    .line 259
    sget-object v7, Ljcifs/util/DES;->SP8:[I

    and-int/lit8 v8, v6, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 260
    sget-object v7, Ljcifs/util/DES;->SP6:[I

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 261
    sget-object v7, Ljcifs/util/DES;->SP4:[I

    ushr-int/lit8 v8, v6, 0x10

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 262
    sget-object v7, Ljcifs/util/DES;->SP2:[I

    ushr-int/lit8 v8, v6, 0x18

    and-int/lit8 v8, v8, 0x3f

    aget v7, v7, v8

    or-int/2addr v0, v7

    .line 263
    xor-int/2addr v4, v0

    .line 239
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_52
.end method

.method private deskey([BZ[I)V
    .registers 14
    .parameter "keyBlock"
    .parameter "encrypting"
    .parameter "KnL"

    .prologue
    .line 127
    const/16 v8, 0x38

    new-array v6, v8, [I

    .line 128
    .local v6, pc1m:[I
    const/16 v8, 0x38

    new-array v7, v8, [I

    .line 129
    .local v7, pcr:[I
    const/16 v8, 0x20

    new-array v2, v8, [I

    .line 131
    .local v2, kn:[I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_d
    const/16 v8, 0x38

    if-lt v1, v8, :cond_1a

    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    const/16 v8, 0x10

    if-lt v0, v8, :cond_33

    .line 166
    invoke-direct {p0, v2, p3}, Ljcifs/util/DES;->cookey([I[I)V

    .line 167
    return-void

    .line 132
    .end local v0           #i:I
    :cond_1a
    sget-object v8, Ljcifs/util/DES;->pc1:[B

    aget-byte v3, v8, v1

    .line 133
    .local v3, l:I
    and-int/lit8 v4, v3, 0x7

    .line 134
    .local v4, m:I
    ushr-int/lit8 v8, v3, 0x3

    aget-byte v8, p1, v8

    sget-object v9, Ljcifs/util/DES;->bytebit:[B

    aget-byte v9, v9, v4

    and-int/2addr v8, v9

    if-eqz v8, :cond_31

    const/4 v8, 0x1

    :goto_2c
    aput v8, v6, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 134
    :cond_31
    const/4 v8, 0x0

    goto :goto_2c

    .line 139
    .end local v3           #l:I
    .end local v4           #m:I
    .restart local v0       #i:I
    :cond_33
    if-eqz p2, :cond_51

    .line 140
    shl-int/lit8 v4, v0, 0x1

    .line 143
    .restart local v4       #m:I
    :goto_37
    add-int/lit8 v5, v4, 0x1

    .line 144
    .local v5, n:I
    const/4 v8, 0x0

    aput v8, v2, v5

    aput v8, v2, v4

    .line 145
    const/4 v1, 0x0

    :goto_3f
    const/16 v8, 0x1c

    if-lt v1, v8, :cond_56

    .line 152
    const/16 v1, 0x1c

    :goto_45
    const/16 v8, 0x38

    if-lt v1, v8, :cond_6e

    .line 159
    const/4 v1, 0x0

    :goto_4a
    const/16 v8, 0x18

    if-lt v1, v8, :cond_86

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 142
    .end local v4           #m:I
    .end local v5           #n:I
    :cond_51
    rsub-int/lit8 v8, v0, 0xf

    shl-int/lit8 v4, v8, 0x1

    .restart local v4       #m:I
    goto :goto_37

    .line 146
    .restart local v5       #n:I
    :cond_56
    sget-object v8, Ljcifs/util/DES;->totrot:[I

    aget v8, v8, v0

    add-int v3, v1, v8

    .line 147
    .restart local v3       #l:I
    const/16 v8, 0x1c

    if-ge v3, v8, :cond_67

    .line 148
    aget v8, v6, v3

    aput v8, v7, v1

    .line 145
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 150
    :cond_67
    add-int/lit8 v8, v3, -0x1c

    aget v8, v6, v8

    aput v8, v7, v1

    goto :goto_64

    .line 153
    .end local v3           #l:I
    :cond_6e
    sget-object v8, Ljcifs/util/DES;->totrot:[I

    aget v8, v8, v0

    add-int v3, v1, v8

    .line 154
    .restart local v3       #l:I
    const/16 v8, 0x38

    if-ge v3, v8, :cond_7f

    .line 155
    aget v8, v6, v3

    aput v8, v7, v1

    .line 152
    :goto_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 157
    :cond_7f
    add-int/lit8 v8, v3, -0x1c

    aget v8, v6, v8

    aput v8, v7, v1

    goto :goto_7c

    .line 160
    .end local v3           #l:I
    :cond_86
    sget-object v8, Ljcifs/util/DES;->pc2:[B

    aget-byte v8, v8, v1

    aget v8, v7, v8

    if-eqz v8, :cond_97

    .line 161
    aget v8, v2, v4

    sget-object v9, Ljcifs/util/DES;->bigbyte:[I

    aget v9, v9, v1

    or-int/2addr v8, v9

    aput v8, v2, v4

    .line 162
    :cond_97
    sget-object v8, Ljcifs/util/DES;->pc2:[B

    add-int/lit8 v9, v1, 0x18

    aget-byte v8, v8, v9

    aget v8, v7, v8

    if-eqz v8, :cond_aa

    .line 163
    aget v8, v2, v5

    sget-object v9, Ljcifs/util/DES;->bigbyte:[I

    aget v9, v9, v1

    or-int/2addr v8, v9

    aput v8, v2, v5

    .line 159
    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a
.end method

.method private encrypt([BI[BI)V
    .registers 10
    .parameter "clearText"
    .parameter "clearOff"
    .parameter "cipherText"
    .parameter "cipherOff"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 194
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {p1, p2, v0, v3, v4}, Ljcifs/util/DES;->squashBytesToInts([BI[III)V

    .line 195
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object v1, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object v2, p0, Ljcifs/util/DES;->encryptKeys:[I

    invoke-direct {p0, v0, v1, v2}, Ljcifs/util/DES;->des([I[I[I)V

    .line 196
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {v0, v3, p3, p4, v4}, Ljcifs/util/DES;->spreadIntsToBytes([II[BII)V

    .line 197
    return-void
.end method

.method public static makeSMBKey([B[B)V
    .registers 9
    .parameter "key7"
    .parameter "key8"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    aget-byte v1, p0, v2

    shr-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 103
    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    .line 104
    aget-byte v1, p0, v3

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x5

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    .line 105
    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v5

    .line 106
    aget-byte v1, p0, v5

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x3

    aget-byte v2, p0, v6

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v6

    .line 107
    const/4 v1, 0x5

    aget-byte v2, p0, v6

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x2

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 108
    const/4 v1, 0x6

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x1

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x7

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 109
    const/4 v1, 0x7

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_95
    const/16 v1, 0x8

    if-lt v0, v1, :cond_9a

    .line 113
    return-void

    .line 111
    :cond_9a
    aget-byte v1, p1, v0

    shl-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_95
.end method

.method public static spreadIntsToBytes([II[BII)V
    .registers 8
    .parameter "inInts"
    .parameter "inOff"
    .parameter "outBytes"
    .parameter "outOff"
    .parameter "intLen"

    .prologue
    .line 543
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p4, :cond_4

    .line 550
    return-void

    .line 545
    :cond_4
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, p1, v0

    aget v2, p0, v2

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 546
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    add-int v2, p1, v0

    aget v2, p0, v2

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 547
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x2

    add-int v2, p1, v0

    aget v2, p0, v2

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 548
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x3

    add-int v2, p1, v0

    aget v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static squashBytesToInts([BI[III)V
    .registers 9
    .parameter "inBytes"
    .parameter "inOff"
    .parameter "outInts"
    .parameter "outOff"
    .parameter "intLen"

    .prologue
    .line 531
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p4, :cond_4

    .line 537
    return-void

    .line 532
    :cond_4
    add-int v1, p3, v0

    .line 533
    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 534
    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    .line 533
    or-int/2addr v2, v3

    .line 535
    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 533
    or-int/2addr v2, v3

    .line 536
    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 533
    or-int/2addr v2, v3

    .line 532
    aput v2, p2, v1

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decrypt([B[B)V
    .registers 4
    .parameter "cipherText"
    .parameter "clearText"

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, p1, v0, p2, v0}, Ljcifs/util/DES;->decrypt([BI[BI)V

    .line 297
    return-void
.end method

.method public decrypt([B)[B
    .registers 8
    .parameter "cipherText"

    .prologue
    .line 325
    array-length v3, p1

    .line 327
    .local v3, length:I
    rem-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_e

    .line 328
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Array must be a multiple of 8"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    .line 338
    :cond_d
    return-object v0

    .line 332
    :cond_e
    new-array v0, v3, [B

    .line 333
    .local v0, clearText:[B
    div-int/lit8 v1, v3, 0x8

    .line 335
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    if-ge v2, v1, :cond_d

    .line 336
    mul-int/lit8 v4, v2, 0x8

    mul-int/lit8 v5, v2, 0x8

    invoke-direct {p0, p1, v4, v0, v5}, Ljcifs/util/DES;->encrypt([BI[BI)V

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public encrypt([B[B)V
    .registers 4
    .parameter "clearText"
    .parameter "cipherText"

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-direct {p0, p1, v0, p2, v0}, Ljcifs/util/DES;->encrypt([BI[BI)V

    .line 291
    return-void
.end method

.method public encrypt([B)[B
    .registers 8
    .parameter "clearText"

    .prologue
    .line 304
    array-length v3, p1

    .line 306
    .local v3, length:I
    rem-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_e

    .line 307
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Array must be a multiple of 8"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x0

    .line 317
    :cond_d
    return-object v0

    .line 311
    :cond_e
    new-array v0, v3, [B

    .line 312
    .local v0, cipherText:[B
    div-int/lit8 v1, v3, 0x8

    .line 314
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    if-ge v2, v1, :cond_d

    .line 315
    mul-int/lit8 v4, v2, 0x8

    mul-int/lit8 v5, v2, 0x8

    invoke-direct {p0, p1, v4, v0, v5}, Ljcifs/util/DES;->encrypt([BI[BI)V

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public setKey([B)V
    .registers 4
    .parameter "key"

    .prologue
    .line 119
    const/4 v0, 0x1

    iget-object v1, p0, Ljcifs/util/DES;->encryptKeys:[I

    invoke-direct {p0, p1, v0, v1}, Ljcifs/util/DES;->deskey([BZ[I)V

    .line 120
    const/4 v0, 0x0

    iget-object v1, p0, Ljcifs/util/DES;->decryptKeys:[I

    invoke-direct {p0, p1, v0, v1}, Ljcifs/util/DES;->deskey([BZ[I)V

    .line 121
    return-void
.end method
