.class public Lcom/sec/android/app/camera/CheckMemory;
.super Ljava/lang/Object;
.source "CheckMemory.java"


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final LOW_STORAGE_THRESHOLD:J = 0xa00000L

.field public static final NO_STORAGE_ERROR:I = -0x1

.field private static NUM_OF_QUALITIES:I = 0x0

.field private static NUM_OF_RESOLUTIONS:I = 0x0

.field private static QUALITY_INDEX:I = 0x0

.field private static RESOLUTION_INDEX:I = 0x0

.field private static SIZE_INDEX:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CheckMemory"

.field private static mImageSizeList:[[I

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 40
    const/16 v0, 0x36

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1f6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_200

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_20a

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_214

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_21e

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_228

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_232

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_23c

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_246

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_250

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_25a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_264

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_26e

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_278

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_282

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_28c

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_296

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_2a0

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_2aa

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_2b4

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_2be

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_2c8

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_2d2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_2dc

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_2e6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_2f0

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_2fa

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_304

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_30e

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_318

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_322

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_32c

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_336

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_340

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_34a

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_354

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_35e

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_368

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_372

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_37c

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_386

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_390

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_39a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_3a4

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_3ae

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_3b8

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_3c2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_3cc

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_3d6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_3e0

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_3ea

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_3f4

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_3fe

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_408

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    .line 97
    sput v3, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    .line 98
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    array-length v0, v0

    sget v1, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    div-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_RESOLUTIONS:I

    .line 99
    sput v4, Lcom/sec/android/app/camera/CheckMemory;->RESOLUTION_INDEX:I

    .line 100
    sput v5, Lcom/sec/android/app/camera/CheckMemory;->QUALITY_INDEX:I

    .line 101
    sput v6, Lcom/sec/android/app/camera/CheckMemory;->SIZE_INDEX:I

    return-void

    .line 40
    nop

    :array_1f6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0xat 0x0t 0x0t
    .end array-data

    :array_200
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x20t 0x8t 0x0t 0x0t
    .end array-data

    :array_20a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    :array_214
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x8t 0x0t 0x0t
    .end array-data

    :array_21e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9at 0x6t 0x0t 0x0t
    .end array-data

    :array_228
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
    .end array-data

    :array_232
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc0t 0x8t 0x0t 0x0t
    .end array-data

    :array_23c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1ct 0x7t 0x0t 0x0t
    .end array-data

    :array_246
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
    .end array-data

    :array_250
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x7t 0x0t 0x0t
    .end array-data

    :array_25a
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xcat 0x5t 0x0t 0x0t
    .end array-data

    :array_264
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x74t 0x4t 0x0t 0x0t
    .end array-data

    :array_26e
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    :array_278
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
    .end array-data

    :array_282
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
    .end array-data

    :array_28c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
    .end array-data

    :array_296
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
    .end array-data

    :array_2a0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_2aa
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x3t 0x0t 0x0t
    .end array-data

    :array_2b4
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x66t 0x2t 0x0t 0x0t
    .end array-data

    :array_2be
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xcdt 0x1t 0x0t 0x0t
    .end array-data

    :array_2c8
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
    .end array-data

    :array_2d2
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8at 0x2t 0x0t 0x0t
    .end array-data

    :array_2dc
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x26t 0x2t 0x0t 0x0t
    .end array-data

    :array_2e6
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data

    :array_2f0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_2fa
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    :array_304
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_30e
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    :array_318
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_322
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_32c
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data

    :array_336
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
    .end array-data

    :array_340
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
    .end array-data

    :array_34a
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_354
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data

    :array_35e
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_368
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data

    :array_372
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    :array_37c
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_386
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_390
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_39a
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_3a4
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_3ae
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_3b8
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x8t 0x0t 0x0t
    .end array-data

    :array_3c2
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9at 0x6t 0x0t 0x0t
    .end array-data

    :array_3cc
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
    .end array-data

    :array_3d6
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
    .end array-data

    :array_3e0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
    .end array-data

    :array_3ea
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_3f4
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
    .end array-data

    :array_3fe
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_408
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableStorage(I)J
    .registers 12
    .parameter "storage"

    .prologue
    const-wide/32 v9, 0xa00000

    const/4 v3, 0x1

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, storageDirectory:Ljava/lang/String;
    if-ne p0, v3, :cond_46

    .line 142
    :try_start_7
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 150
    :goto_10
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, stat:Landroid/os/StatFs;
    const-string v3, "CheckMemory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Available Storage Size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    sub-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    sub-long/2addr v3, v9

    .line 159
    .end local v1           #stat:Landroid/os/StatFs;
    :goto_45
    return-wide v3

    .line 147
    :cond_46
    sget-object v3, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_4e} :catch_50

    move-result-object v2

    goto :goto_10

    .line 154
    :catch_50
    move-exception v0

    .line 158
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "CheckMemory"

    const-string v4, "cannot stat the filesystem then we don\'t know how many free bytes exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-wide/16 v3, -0x2

    goto :goto_45
.end method

.method public static getExternalSDStoragePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSizeOfImage(II)J
    .registers 8
    .parameter "resolution"
    .parameter "quality"

    .prologue
    .line 171
    const-wide/16 v2, 0x0

    .line 173
    .local v2, nMaxSize:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    sget v4, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_RESOLUTIONS:I

    if-ge v0, v4, :cond_3b

    .line 174
    const/4 v1, 0x0

    .local v1, j:I
    :goto_8
    sget v4, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    if-ge v1, v4, :cond_35

    .line 175
    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->RESOLUTION_INDEX:I

    aget v4, v4, v5

    if-ne v4, p0, :cond_38

    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->QUALITY_INDEX:I

    aget v4, v4, v5

    if-ne v4, p1, :cond_38

    .line 177
    sget-object v4, Lcom/sec/android/app/camera/CheckMemory;->mImageSizeList:[[I

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->NUM_OF_QUALITIES:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/CheckMemory;->SIZE_INDEX:I

    aget v4, v4, v5

    int-to-long v2, v4

    .line 173
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 174
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 186
    .end local v1           #j:I
    :cond_3b
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_4c

    .line 187
    const-string v4, "CheckMemory"

    const-string v5, "Resolution or Quality setting maybe wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-wide/32 v4, 0x100000

    .line 190
    :goto_4b
    return-wide v4

    :cond_4c
    const-wide/16 v4, 0x400

    mul-long/2addr v4, v2

    goto :goto_4b
.end method

.method public static getRemainCount(III)I
    .registers 10
    .parameter "storage"
    .parameter "resolution"
    .parameter "quality"

    .prologue
    const/4 v4, -0x1

    .line 108
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v1

    .line 110
    .local v1, lAvailableStorage:J
    const-wide/16 v5, -0x2

    cmp-long v5, v1, v5

    if-eqz v5, :cond_17

    .line 111
    const/4 v3, 0x0

    .line 113
    .local v3, nRemainCount:I
    :try_start_c
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v5

    div-long v4, v1, v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_14

    long-to-int v3, v4

    .line 119
    .end local v3           #nRemainCount:I
    :goto_13
    return v3

    .line 115
    .restart local v3       #nRemainCount:I
    :catch_14
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    move v3, v4

    .line 116
    goto :goto_13

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #nRemainCount:I
    :cond_17
    move v3, v4

    .line 119
    goto :goto_13
.end method

.method public static getRemainTime(II)I
    .registers 11
    .parameter "storage"
    .parameter "bitrate"

    .prologue
    const/4 v4, -0x1

    .line 123
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v5

    const-wide/32 v7, 0x500000

    add-long v1, v5, v7

    .line 125
    .local v1, lAvailableStorage:J
    const-wide/16 v5, -0x2

    cmp-long v5, v1, v5

    if-eqz v5, :cond_19

    .line 126
    const/4 v3, 0x0

    .line 128
    .local v3, nRemainTime:I
    int-to-long v5, p1

    :try_start_12
    div-long v4, v1, v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_14} :catch_16

    long-to-int v3, v4

    .line 134
    .end local v3           #nRemainTime:I
    :goto_15
    return v3

    .line 130
    .restart local v3       #nRemainTime:I
    :catch_16
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    move v3, v4

    .line 131
    goto :goto_15

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #nRemainTime:I
    :cond_19
    move v3, v4

    .line 134
    goto :goto_15
.end method

.method public static isStorageMounted()Z
    .registers 3

    .prologue
    .line 165
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setStorageVolume(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .registers 2
    .parameter "activityContext"

    .prologue
    .line 103
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 104
    sget-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CheckMemory;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 105
    return-void
.end method
