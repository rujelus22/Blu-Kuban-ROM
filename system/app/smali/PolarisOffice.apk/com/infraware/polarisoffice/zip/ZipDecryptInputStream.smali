.class public Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;
.super Ljava/io/InputStream;
.source "ZipDecryptInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$polarisoffice$zip$ZipDecryptInputStream$State:[I = null

.field private static final CRC_TABLE:[I = null

.field private static final DECRYPT_HEADER_SIZE:I = 0xc

.field private static final LFH_SIGNATURE:[I = null

.field public static final MSG_DIRECTORYNOTFOUND:Ljava/lang/String; = "Central Directory Entry not found"

.field public static final MSG_EOCDNOTFOUND:Ljava/lang/String; = "EOCD not found; not a Zip archive?"

.field public static final MSG_NOT_ENC:Ljava/lang/String; = "NOT_ENC"

.field public static final MSG_UNSUPPORTIVE:Ljava/lang/String; = "UNSUPPORTIVE"


# instance fields
.field private compressedSize:I

.field private final delegate:Ljava/io/InputStream;

.field private final keys:[I

.field private final password:Ljava/lang/String;

.field private skipBytes:I

.field private state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

.field private value:I

.field private valueInc:I

.field private valuePos:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$polarisoffice$zip$ZipDecryptInputStream$State()[I
    .registers 3

    .prologue
    .line 6
    sget-object v0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->$SWITCH_TABLE$com$infraware$polarisoffice$zip$ZipDecryptInputStream$State:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->values()[Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->COMPRESSED_SIZE:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_66

    :goto_15
    :try_start_15
    sget-object v1, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->DATA:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_64

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->EF_LENGTH:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_62

    :goto_27
    :try_start_27
    sget-object v1, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->FLAGS:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_60

    :goto_30
    :try_start_30
    sget-object v1, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->FN_LENGTH:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_5e

    :goto_39
    :try_start_39
    sget-object v1, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->HEADER:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_5c

    :goto_42
    :try_start_42
    sget-object v1, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->SIGNATURE:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_5a

    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->TAIL:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_58

    :goto_55
    sput-object v0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->$SWITCH_TABLE$com$infraware$polarisoffice$zip$ZipDecryptInputStream$State:[I

    goto :goto_4

    :catch_58
    move-exception v1

    goto :goto_55

    :catch_5a
    move-exception v1

    goto :goto_4b

    :catch_5c
    move-exception v1

    goto :goto_42

    :catch_5e
    move-exception v1

    goto :goto_39

    :catch_60
    move-exception v1

    goto :goto_30

    :catch_62
    move-exception v1

    goto :goto_27

    :catch_64
    move-exception v1

    goto :goto_1e

    :catch_66
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x100

    .line 11
    new-array v3, v5, [I

    sput-object v3, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->CRC_TABLE:[I

    .line 13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-lt v0, v5, :cond_12

    .line 28
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_32

    sput-object v3, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->LFH_SIGNATURE:[I

    .line 6
    return-void

    .line 14
    :cond_12
    move v2, v0

    .line 15
    .local v2, r:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_14
    const/16 v3, 0x8

    if-lt v1, v3, :cond_1f

    .line 23
    sget-object v3, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->CRC_TABLE:[I

    aput v2, v3, v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 16
    :cond_1f
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    .line 17
    ushr-int/lit8 v3, v2, 0x1

    const v4, -0x12477ce0

    xor-int v2, v3, v4

    .line 15
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 20
    :cond_2e
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 28
    nop

    :array_32
    .array-data 0x4
        0x50t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "stream"
    .parameter "password"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    .line 34
    sget-object v0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->SIGNATURE:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    iput-object v0, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    .line 42
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->delegate:Ljava/io/InputStream;

    .line 43
    iput-object p2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->password:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private crc32(IB)I
    .registers 6
    .parameter "oldCrc"
    .parameter "charAt"

    .prologue
    .line 169
    ushr-int/lit8 v0, p1, 0x8

    sget-object v1, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->CRC_TABLE:[I

    xor-int v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private decryptByte()B
    .registers 4

    .prologue
    .line 164
    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    or-int/lit8 v0, v1, 0x2

    .line 165
    .local v0, temp:I
    xor-int/lit8 v1, v0, 0x1

    mul-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    return v1
.end method

.method private initKeys(Ljava/lang/String;)V
    .registers 6
    .parameter "password"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    const/4 v2, 0x0

    const v3, 0x12345678

    aput v3, v1, v2

    .line 149
    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    const/4 v2, 0x1

    const v3, 0x23456789

    aput v3, v1, v2

    .line 150
    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    const/4 v2, 0x2

    const v3, 0x34567890

    aput v3, v1, v2

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_20

    .line 154
    return-void

    .line 152
    :cond_20
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->updateKeys(B)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method private updateKeys(B)V
    .registers 8
    .parameter "charAt"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    aget v1, v1, v4

    invoke-direct {p0, v1, p1}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->crc32(IB)I

    move-result v1

    aput v1, v0, v4

    .line 158
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    aget v1, v0, v3

    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    aget v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aput v1, v0, v3

    .line 159
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    aget v1, v1, v3

    const v2, 0x8088405

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 160
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->keys:[I

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    invoke-direct {p0, v1, v2}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->crc32(IB)I

    move-result v1

    aput v1, v0, v5

    .line 161
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 145
    return-void
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 49
    .local v1, result:I
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->skipBytes:I

    if-nez v2, :cond_114

    .line 50
    invoke-static {}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->$SWITCH_TABLE$com$infraware$polarisoffice$zip$ZipDecryptInputStream$State()[I

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_11c

    .line 138
    :cond_1d
    :goto_1d
    return v1

    .line 52
    :pswitch_1e
    sget-object v2, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->LFH_SIGNATURE:[I

    iget v3, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    aget v2, v2, v3

    if-eq v1, v2, :cond_2b

    .line 53
    sget-object v2, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->TAIL:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    goto :goto_1d

    .line 56
    :cond_2b
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    .line 57
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    sget-object v3, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->LFH_SIGNATURE:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1d

    .line 58
    const/4 v2, 0x2

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->skipBytes:I

    .line 59
    sget-object v2, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->FLAGS:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    goto :goto_1d

    .line 64
    :pswitch_40
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_4c

    .line 65
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NOT_ENC"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_4c
    and-int/lit8 v2, v1, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5a

    .line 68
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UNSUPPORTIVE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_5a
    and-int/lit8 v2, v1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_68

    .line 71
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UNSUPPORTIVE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_68
    add-int/lit8 v1, v1, -0x1

    .line 74
    iput v4, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->compressedSize:I

    .line 75
    iput v4, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    .line 76
    iput v6, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valueInc:I

    .line 77
    sget-object v2, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->COMPRESSED_SIZE:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    .line 78
    const/16 v2, 0xb

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->skipBytes:I

    goto :goto_1d

    .line 81
    :pswitch_79
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->compressedSize:I

    iget v3, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    mul-int/lit8 v3, v3, 0x8

    shl-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->compressedSize:I

    .line 82
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valueInc:I

    sub-int/2addr v1, v2

    .line 83
    if-gez v1, :cond_a5

    .line 84
    iput v5, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valueInc:I

    .line 85
    add-int/lit16 v1, v1, 0x100

    .line 90
    :goto_8d
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    .line 91
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_1d

    .line 92
    iput v4, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    .line 93
    iput v4, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->value:I

    .line 94
    sget-object v2, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->FN_LENGTH:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    .line 95
    const/4 v2, 0x4

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->skipBytes:I

    goto/16 :goto_1d

    .line 88
    :cond_a5
    iput v4, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valueInc:I

    goto :goto_8d

    .line 100
    :pswitch_a8
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->value:I

    iget v3, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    mul-int/lit8 v3, v3, 0x8

    shl-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->value:I

    .line 101
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    if-ne v2, v5, :cond_cf

    .line 102
    iput v4, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    .line 103
    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    sget-object v3, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->FN_LENGTH:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    if-ne v2, v3, :cond_c5

    .line 104
    sget-object v2, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->EF_LENGTH:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    goto/16 :goto_1d

    .line 107
    :cond_c5
    sget-object v2, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->HEADER:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    .line 108
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->value:I

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->skipBytes:I

    goto/16 :goto_1d

    .line 112
    :cond_cf
    iput v5, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    goto/16 :goto_1d

    .line 116
    :pswitch_d3
    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->password:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->initKeys(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d9
    if-lt v0, v6, :cond_102

    .line 121
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->compressedSize:I

    add-int/lit8 v2, v2, -0xc

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->compressedSize:I

    .line 122
    sget-object v2, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->DATA:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    .line 124
    .end local v0           #i:I
    :pswitch_e5
    invoke-direct {p0}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->decryptByte()B

    move-result v2

    xor-int/2addr v2, v1

    and-int/lit16 v1, v2, 0xff

    .line 125
    int-to-byte v2, v1

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->updateKeys(B)V

    .line 126
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->compressedSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->compressedSize:I

    .line 127
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->compressedSize:I

    if-nez v2, :cond_1d

    .line 128
    iput v4, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->valuePos:I

    .line 129
    sget-object v2, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;->SIGNATURE:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->state:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream$State;

    goto/16 :goto_1d

    .line 118
    .restart local v0       #i:I
    :cond_102
    invoke-direct {p0}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->decryptByte()B

    move-result v2

    xor-int/2addr v2, v1

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->updateKeys(B)V

    .line 119
    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    .line 136
    .end local v0           #i:I
    :cond_114
    iget v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->skipBytes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;->skipBytes:I

    goto/16 :goto_1d

    .line 50
    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_40
        :pswitch_79
        :pswitch_a8
        :pswitch_a8
        :pswitch_d3
        :pswitch_e5
    .end packed-switch
.end method
