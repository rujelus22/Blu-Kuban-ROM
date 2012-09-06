.class public final Lcom/google/zxing/qrcode/decoder/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# static fields
.field public static final ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final ECI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 29
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_8c

    const/4 v2, 0x0

    const-string v3, "TERMINATOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 30
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_96

    const/4 v2, 0x1

    const-string v3, "NUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 31
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_a0

    const/4 v2, 0x2

    const-string v3, "ALPHANUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 32
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_aa

    const-string v2, "STRUCTURED_APPEND"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 33
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_b4

    const/4 v2, 0x4

    const-string v3, "BYTE"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 34
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v1, 0x7

    const-string v2, "ECI"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 35
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_be

    const/16 v2, 0x8

    const-string v3, "KANJI"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 36
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v1, 0x5

    const-string v2, "FNC1_FIRST_POSITION"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 37
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    const/16 v1, 0x9

    const-string v2, "FNC1_SECOND_POSITION"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 39
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    new-array v1, v4, [I

    fill-array-data v1, :array_c8

    const/16 v2, 0xd

    const-string v3, "HANZI"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    return-void

    .line 29
    :array_8c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 30
    :array_96
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_a0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_aa
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_b4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_be
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_c8
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>([IILjava/lang/String;)V
    .registers 4
    .parameter "characterCountBitsForVersions"
    .parameter "bits"
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 47
    iput p2, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    .line 48
    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Mode;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 2
    .parameter "bits"

    .prologue
    .line 57
    packed-switch p0, :pswitch_data_28

    .line 80
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 59
    :pswitch_9
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 78
    :goto_b
    return-object v0

    .line 61
    :pswitch_c
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 63
    :pswitch_f
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 65
    :pswitch_12
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 67
    :pswitch_15
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 69
    :pswitch_18
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 71
    :pswitch_1b
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 73
    :pswitch_1e
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 75
    :pswitch_21
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 78
    :pswitch_24
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_b

    .line 57
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_3
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public getBits()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    return v0
.end method

.method public getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
    .registers 6
    .parameter "version"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    if-nez v2, :cond_c

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Character count doesn\'t apply to this mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_c
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    .line 95
    .local v0, number:I
    const/16 v2, 0x9

    if-gt v0, v2, :cond_1a

    .line 96
    const/4 v1, 0x0

    .line 102
    .local v1, offset:I
    :goto_15
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    aget v2, v2, v1

    return v2

    .line 97
    .end local v1           #offset:I
    :cond_1a
    const/16 v2, 0x1a

    if-gt v0, v2, :cond_20

    .line 98
    const/4 v1, 0x1

    .restart local v1       #offset:I
    goto :goto_15

    .line 100
    .end local v1           #offset:I
    :cond_20
    const/4 v1, 0x2

    .restart local v1       #offset:I
    goto :goto_15
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->name:Ljava/lang/String;

    return-object v0
.end method
