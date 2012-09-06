.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I = null

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:I = 0x40

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xb3


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 36
    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_3c2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3d2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_3e2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3f2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_402

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_412

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_422

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_432

    aput-object v1, v0, v4

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_442

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_452

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_462

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_472

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_482

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_492

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_4a2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_4b2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_4c2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_4d2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_4e2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_4f2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_502

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_512

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_522

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_532

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_542

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_552

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_562

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_572

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_582

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_592

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_5a2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_5b2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_5c2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_5d2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_5e2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_5f2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_602

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_612

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_622

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_632

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_642

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_652

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_662

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_672

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_682

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_692

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_6a2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_6b2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_6c2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_6d2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_6e2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_6f2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_702

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_712

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_722

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_732

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_742

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_752

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_762

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_772

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_782

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_792

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_7a2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_7b2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_7c2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_7d2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_7e2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [I

    fill-array-data v2, :array_7f2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [I

    fill-array-data v2, :array_802

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [I

    fill-array-data v2, :array_812

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [I

    fill-array-data v2, :array_822

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [I

    fill-array-data v2, :array_832

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [I

    fill-array-data v2, :array_842

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [I

    fill-array-data v2, :array_852

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [I

    fill-array-data v2, :array_862

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [I

    fill-array-data v2, :array_872

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [I

    fill-array-data v2, :array_882

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [I

    fill-array-data v2, :array_892

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [I

    fill-array-data v2, :array_8a2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [I

    fill-array-data v2, :array_8b2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [I

    fill-array-data v2, :array_8c2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [I

    fill-array-data v2, :array_8d2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [I

    fill-array-data v2, :array_8e2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [I

    fill-array-data v2, :array_8f2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [I

    fill-array-data v2, :array_902

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [I

    fill-array-data v2, :array_912

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [I

    fill-array-data v2, :array_922

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [I

    fill-array-data v2, :array_932

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [I

    fill-array-data v2, :array_942

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [I

    fill-array-data v2, :array_952

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [I

    fill-array-data v2, :array_962

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [I

    fill-array-data v2, :array_972

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [I

    fill-array-data v2, :array_982

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [I

    fill-array-data v2, :array_992

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [I

    fill-array-data v2, :array_9a2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [I

    fill-array-data v2, :array_9b2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [I

    fill-array-data v2, :array_9c2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [I

    fill-array-data v2, :array_9d2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [I

    fill-array-data v2, :array_9e2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [I

    fill-array-data v2, :array_9f2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [I

    fill-array-data v2, :array_a02

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [I

    fill-array-data v2, :array_a12

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [I

    fill-array-data v2, :array_a22

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [I

    fill-array-data v2, :array_a32

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [I

    fill-array-data v2, :array_a42

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [I

    fill-array-data v2, :array_a52

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v4, [I

    fill-array-data v2, :array_a62

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_3c2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3d2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3e2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3f2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_402
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_412
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_422
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_432
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_442
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_452
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_462
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_472
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_482
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_492
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4a2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4b2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4c2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4d2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4e2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4f2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_502
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_512
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_522
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_532
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_542
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_552
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_562
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_572
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_582
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_592
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5a2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_5b2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5c2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5d2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_5e2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_5f2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_602
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_612
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_622
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_632
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_642
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_652
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_662
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_672
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_682
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_692
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6a2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6b2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6c2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6d2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6e2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6f2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_702
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_712
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_722
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_732
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_742
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_752
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_762
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_772
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_782
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_792
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7a2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7b2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7c2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_7d2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7f2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_802
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_812
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_822
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_832
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_842
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_852
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_862
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_872
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_882
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_892
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8a2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8b2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8c2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8d2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8e2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8f2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_902
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_912
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_922
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_932
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_942
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_952
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_962
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_972
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_982
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_992
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9a2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9b2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_9c2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9d2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_9e2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9f2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a02
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a12
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a22
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a32
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_a42
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_a52
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_a62
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .registers 9
    .parameter "row"
    .parameter "counters"
    .parameter "rowOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 224
    const/16 v1, 0x40

    .line 225
    .local v1, bestVariance:I
    const/4 v0, -0x1

    .line 226
    .local v0, bestMatch:I
    const/4 v2, 0x0

    .local v2, d:I
    :goto_7
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v5, v5

    if-ge v2, v5, :cond_1d

    .line 227
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v3, v5, v2

    .line 228
    .local v3, pattern:[I
    const/16 v5, 0xb3

    invoke-static {p1, v3, v5}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[II)I

    move-result v4

    .line 229
    .local v4, variance:I
    if-ge v4, v1, :cond_1a

    .line 230
    move v1, v4

    .line 231
    move v0, v2

    .line 226
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 235
    .end local v3           #pattern:[I
    .end local v4           #variance:I
    :cond_1d
    if-ltz v0, :cond_20

    .line 236
    return v0

    .line 238
    :cond_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 20
    .parameter "row"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v15

    .line 168
    .local v15, width:I
    const/4 v12, 0x0

    .line 169
    .local v12, rowOffset:I
    :goto_5
    if-ge v12, v15, :cond_f

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v17

    if-eqz v17, :cond_2f

    .line 176
    :cond_f
    const/4 v5, 0x0

    .line 177
    .local v5, counterPosition:I
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v6, v0, [I

    .line 178
    .local v6, counters:[I
    move v10, v12

    .line 179
    .local v10, patternStart:I
    const/4 v8, 0x0

    .line 180
    .local v8, isWhite:Z
    array-length v9, v6

    .line 182
    .local v9, patternLength:I
    move v7, v12

    .local v7, i:I
    :goto_1a
    if-ge v7, v15, :cond_c0

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    .line 184
    .local v11, pixel:Z
    xor-int v17, v11, v8

    if-eqz v17, :cond_32

    .line 185
    aget v17, v6, v5

    add-int/lit8 v17, v17, 0x1

    aput v17, v6, v5

    .line 182
    :goto_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 173
    .end local v5           #counterPosition:I
    .end local v6           #counters:[I
    .end local v7           #i:I
    .end local v8           #isWhite:Z
    .end local v9           #patternLength:I
    .end local v10           #patternStart:I
    .end local v11           #pixel:Z
    :cond_2f
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 187
    .restart local v5       #counterPosition:I
    .restart local v6       #counters:[I
    .restart local v7       #i:I
    .restart local v8       #isWhite:Z
    .restart local v9       #patternLength:I
    .restart local v10       #patternStart:I
    .restart local v11       #pixel:Z
    :cond_32
    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_bb

    .line 188
    const/16 v4, 0x40

    .line 189
    .local v4, bestVariance:I
    const/4 v3, -0x1

    .line 190
    .local v3, bestMatch:I
    const/16 v13, 0x67

    .local v13, startCode:I
    :goto_3d
    const/16 v17, 0x69

    move/from16 v0, v17

    if-gt v13, v0, :cond_58

    .line 191
    sget-object v17, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v17, v17, v13

    const/16 v18, 0xb3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v6, v0, v1}, Lcom/google/zxing/oned/Code128Reader;->nativePatternMatchVariance([I[II)I

    move-result v14

    .line 193
    .local v14, variance:I
    if-ge v14, v4, :cond_55

    .line 194
    move v4, v14

    .line 195
    move v3, v13

    .line 190
    :cond_55
    add-int/lit8 v13, v13, 0x1

    goto :goto_3d

    .line 198
    .end local v14           #variance:I
    :cond_58
    if-ltz v3, :cond_89

    .line 200
    const/16 v17, 0x0

    sub-int v18, v7, v10

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v10, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v10, v2}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v17

    if-eqz v17, :cond_89

    .line 202
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    const/16 v18, 0x2

    aput v3, v17, v18

    return-object v17

    .line 205
    :cond_89
    const/16 v17, 0x0

    aget v17, v6, v17

    const/16 v18, 0x1

    aget v18, v6, v18

    add-int v17, v17, v18

    add-int v10, v10, v17

    .line 206
    const/16 v16, 0x2

    .local v16, y:I
    :goto_97
    move/from16 v0, v16

    if-ge v0, v9, :cond_a4

    .line 207
    add-int/lit8 v17, v16, -0x2

    aget v18, v6, v16

    aput v18, v6, v17

    .line 206
    add-int/lit8 v16, v16, 0x1

    goto :goto_97

    .line 209
    :cond_a4
    add-int/lit8 v17, v9, -0x2

    const/16 v18, 0x0

    aput v18, v6, v17

    .line 210
    add-int/lit8 v17, v9, -0x1

    const/16 v18, 0x0

    aput v18, v6, v17

    .line 211
    add-int/lit8 v5, v5, -0x1

    .line 215
    .end local v3           #bestMatch:I
    .end local v4           #bestVariance:I
    .end local v13           #startCode:I
    .end local v16           #y:I
    :goto_b2
    const/16 v17, 0x1

    aput v17, v6, v5

    .line 216
    if-nez v8, :cond_be

    const/4 v8, 0x1

    :goto_b9
    goto/16 :goto_2c

    .line 213
    :cond_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_b2

    .line 216
    :cond_be
    const/4 v8, 0x0

    goto :goto_b9

    .line 219
    .end local v11           #pixel:Z
    :cond_c0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .registers 36
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v23

    .line 246
    .local v23, startPatternInfo:[I
    const/16 v26, 0x2

    aget v22, v23, v26

    .line 248
    .local v22, startCode:I
    packed-switch v22, :pswitch_data_1ee

    .line 259
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v26

    throw v26

    .line 250
    :pswitch_10
    const/16 v7, 0x65

    .line 262
    .local v7, codeSet:I
    :goto_12
    const/4 v9, 0x0

    .line 263
    .local v9, done:Z
    const/4 v11, 0x0

    .line 265
    .local v11, isNextShifted:Z
    new-instance v18, Ljava/lang/StringBuffer;

    const/16 v26, 0x14

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 266
    .local v18, result:Ljava/lang/StringBuffer;
    const/16 v26, 0x0

    aget v14, v23, v26

    .line 267
    .local v14, lastStart:I
    const/16 v26, 0x1

    aget v17, v23, v26

    .line 268
    .local v17, nextStart:I
    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v8, v0, [I

    .line 270
    .local v8, counters:[I
    const/4 v13, 0x0

    .line 271
    .local v13, lastCode:I
    const/4 v6, 0x0

    .line 272
    .local v6, code:I
    move/from16 v5, v22

    .line 273
    .local v5, checksumTotal:I
    const/16 v16, 0x0

    .line 274
    .local v16, multiplier:I
    const/4 v12, 0x1

    .line 276
    .local v12, lastCharacterWasPrintable:Z
    :cond_34
    :goto_34
    if-nez v9, :cond_126

    .line 278
    move/from16 v24, v11

    .line 279
    .local v24, unshift:Z
    const/4 v11, 0x0

    .line 282
    move v13, v6

    .line 285
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v8, v1}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v6

    .line 288
    const/16 v26, 0x6a

    move/from16 v0, v26

    if-eq v6, v0, :cond_49

    .line 289
    const/4 v12, 0x1

    .line 293
    :cond_49
    const/16 v26, 0x6a

    move/from16 v0, v26

    if-eq v6, v0, :cond_55

    .line 294
    add-int/lit8 v16, v16, 0x1

    .line 295
    mul-int v26, v16, v6

    add-int v5, v5, v26

    .line 299
    :cond_55
    move/from16 v14, v17

    .line 300
    const/4 v10, 0x0

    .local v10, i:I
    :goto_58
    array-length v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_6c

    .line 301
    aget v26, v8, v10

    add-int v17, v17, v26

    .line 300
    add-int/lit8 v10, v10, 0x1

    goto :goto_58

    .line 253
    .end local v5           #checksumTotal:I
    .end local v6           #code:I
    .end local v7           #codeSet:I
    .end local v8           #counters:[I
    .end local v9           #done:Z
    .end local v10           #i:I
    .end local v11           #isNextShifted:Z
    .end local v12           #lastCharacterWasPrintable:Z
    .end local v13           #lastCode:I
    .end local v14           #lastStart:I
    .end local v16           #multiplier:I
    .end local v17           #nextStart:I
    .end local v18           #result:Ljava/lang/StringBuffer;
    .end local v24           #unshift:Z
    :pswitch_66
    const/16 v7, 0x64

    .line 254
    .restart local v7       #codeSet:I
    goto :goto_12

    .line 256
    .end local v7           #codeSet:I
    :pswitch_69
    const/16 v7, 0x63

    .line 257
    .restart local v7       #codeSet:I
    goto :goto_12

    .line 305
    .restart local v5       #checksumTotal:I
    .restart local v6       #code:I
    .restart local v8       #counters:[I
    .restart local v9       #done:Z
    .restart local v10       #i:I
    .restart local v11       #isNextShifted:Z
    .restart local v12       #lastCharacterWasPrintable:Z
    .restart local v13       #lastCode:I
    .restart local v14       #lastStart:I
    .restart local v16       #multiplier:I
    .restart local v17       #nextStart:I
    .restart local v18       #result:Ljava/lang/StringBuffer;
    .restart local v24       #unshift:Z
    :cond_6c
    packed-switch v6, :pswitch_data_1f8

    .line 312
    packed-switch v7, :pswitch_data_202

    .line 407
    :goto_72
    :pswitch_72
    if-eqz v24, :cond_34

    .line 408
    const/16 v26, 0x65

    move/from16 v0, v26

    if-ne v7, v0, :cond_122

    const/16 v7, 0x64

    :goto_7c
    goto :goto_34

    .line 309
    :pswitch_7d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v26

    throw v26

    .line 315
    :pswitch_82
    const/16 v26, 0x40

    move/from16 v0, v26

    if-ge v6, v0, :cond_97

    .line 316
    add-int/lit8 v26, v6, 0x20

    move/from16 v0, v26

    int-to-char v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_72

    .line 317
    :cond_97
    const/16 v26, 0x60

    move/from16 v0, v26

    if-ge v6, v0, :cond_ac

    .line 318
    add-int/lit8 v26, v6, -0x40

    move/from16 v0, v26

    int-to-char v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_72

    .line 322
    :cond_ac
    const/16 v26, 0x6a

    move/from16 v0, v26

    if-eq v6, v0, :cond_b3

    .line 323
    const/4 v12, 0x0

    .line 325
    :cond_b3
    packed-switch v6, :pswitch_data_20c

    :pswitch_b6
    goto :goto_72

    .line 333
    :pswitch_b7
    const/4 v11, 0x1

    .line 334
    const/16 v7, 0x64

    .line 335
    goto :goto_72

    .line 337
    :pswitch_bb
    const/16 v7, 0x64

    .line 338
    goto :goto_72

    .line 340
    :pswitch_be
    const/16 v7, 0x63

    .line 341
    goto :goto_72

    .line 343
    :pswitch_c1
    const/4 v9, 0x1

    goto :goto_72

    .line 349
    :pswitch_c3
    const/16 v26, 0x60

    move/from16 v0, v26

    if-ge v6, v0, :cond_d8

    .line 350
    add-int/lit8 v26, v6, 0x20

    move/from16 v0, v26

    int-to-char v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_72

    .line 352
    :cond_d8
    const/16 v26, 0x6a

    move/from16 v0, v26

    if-eq v6, v0, :cond_df

    .line 353
    const/4 v12, 0x0

    .line 355
    :cond_df
    packed-switch v6, :pswitch_data_226

    :pswitch_e2
    goto :goto_72

    .line 363
    :pswitch_e3
    const/4 v11, 0x1

    .line 364
    const/16 v7, 0x65

    .line 365
    goto :goto_72

    .line 367
    :pswitch_e7
    const/16 v7, 0x65

    .line 368
    goto :goto_72

    .line 370
    :pswitch_ea
    const/16 v7, 0x63

    .line 371
    goto :goto_72

    .line 373
    :pswitch_ed
    const/4 v9, 0x1

    goto :goto_72

    .line 379
    :pswitch_ef
    const/16 v26, 0x64

    move/from16 v0, v26

    if-ge v6, v0, :cond_10b

    .line 380
    const/16 v26, 0xa

    move/from16 v0, v26

    if-ge v6, v0, :cond_104

    .line 381
    const/16 v26, 0x30

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    :cond_104
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_72

    .line 385
    :cond_10b
    const/16 v26, 0x6a

    move/from16 v0, v26

    if-eq v6, v0, :cond_112

    .line 386
    const/4 v12, 0x0

    .line 388
    :cond_112
    packed-switch v6, :pswitch_data_240

    :pswitch_115
    goto/16 :goto_72

    .line 396
    :pswitch_117
    const/16 v7, 0x64

    .line 397
    goto/16 :goto_72

    .line 393
    :pswitch_11b
    const/16 v7, 0x65

    .line 394
    goto/16 :goto_72

    .line 399
    :pswitch_11f
    const/4 v9, 0x1

    goto/16 :goto_72

    .line 408
    :cond_122
    const/16 v7, 0x65

    goto/16 :goto_7c

    .line 416
    .end local v10           #i:I
    .end local v24           #unshift:Z
    :cond_126
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v25

    .line 417
    .local v25, width:I
    :goto_12a
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_13d

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v26

    if-eqz v26, :cond_13d

    .line 418
    add-int/lit8 v17, v17, 0x1

    goto :goto_12a

    .line 420
    :cond_13d
    sub-int v26, v17, v14

    div-int/lit8 v26, v26, 0x2

    add-int v26, v26, v17

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v26

    if-nez v26, :cond_15c

    .line 422
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 426
    :cond_15c
    mul-int v26, v16, v13

    sub-int v5, v5, v26

    .line 428
    rem-int/lit8 v26, v5, 0x67

    move/from16 v0, v26

    if-eq v0, v13, :cond_16b

    .line 429
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v26

    throw v26

    .line 433
    :cond_16b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    .line 436
    .local v19, resultLength:I
    if-lez v19, :cond_184

    if-eqz v12, :cond_184

    .line 437
    const/16 v26, 0x63

    move/from16 v0, v26

    if-ne v7, v0, :cond_193

    .line 438
    add-int/lit8 v26, v19, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 444
    :cond_184
    :goto_184
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 446
    .local v20, resultString:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_19f

    .line 448
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v26

    throw v26

    .line 440
    .end local v20           #resultString:Ljava/lang/String;
    :cond_193
    add-int/lit8 v26, v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_184

    .line 451
    .restart local v20       #resultString:Ljava/lang/String;
    :cond_19f
    const/16 v26, 0x0

    aget v26, v23, v26

    move/from16 v0, v26

    int-to-float v15, v0

    .line 452
    .local v15, left:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    .line 453
    .local v21, right:F
    new-instance v26, Lcom/google/zxing/Result;

    const/16 v27, 0x0

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v0, v15, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v21

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v30, v28, v29

    sget-object v29, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v26

    .line 248
    nop

    :pswitch_data_1ee
    .packed-switch 0x67
        :pswitch_10
        :pswitch_66
        :pswitch_69
    .end packed-switch

    .line 305
    :pswitch_data_1f8
    .packed-switch 0x67
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
    .end packed-switch

    .line 312
    :pswitch_data_202
    .packed-switch 0x63
        :pswitch_ef
        :pswitch_c3
        :pswitch_82
    .end packed-switch

    .line 325
    :pswitch_data_20c
    .packed-switch 0x60
        :pswitch_72
        :pswitch_72
        :pswitch_b7
        :pswitch_be
        :pswitch_bb
        :pswitch_72
        :pswitch_72
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_c1
    .end packed-switch

    .line 355
    :pswitch_data_226
    .packed-switch 0x60
        :pswitch_72
        :pswitch_72
        :pswitch_e3
        :pswitch_ea
        :pswitch_72
        :pswitch_e7
        :pswitch_72
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_ed
    .end packed-switch

    .line 388
    :pswitch_data_240
    .packed-switch 0x64
        :pswitch_117
        :pswitch_11b
        :pswitch_72
        :pswitch_115
        :pswitch_115
        :pswitch_115
        :pswitch_11f
    .end packed-switch
.end method
