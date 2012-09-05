.class Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuotedPrintableCodecPort"
.end annotation


# static fields
.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/16 v0, 0x3d

    sput-byte v0, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->ESCAPE_CHAR:B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .registers 10
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/VCardUtils$DecoderException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 65
    if-nez p0, :cond_5

    .line 66
    const/4 v6, 0x0

    .line 86
    :goto_4
    return-object v6

    .line 68
    :cond_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    array-length v6, p0

    if-ge v3, v6, :cond_4d

    .line 70
    aget-byte v0, p0, v3

    .line 71
    .local v0, b:I
    sget-byte v6, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->ESCAPE_CHAR:B

    if-ne v0, v6, :cond_49

    .line 73
    add-int/lit8 v3, v3, 0x1

    :try_start_16
    aget-byte v6, p0, v3

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 74
    .local v5, u:I
    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 75
    .local v4, l:I
    if-eq v5, v8, :cond_2e

    if-ne v4, v8, :cond_3f

    .line 76
    :cond_2e
    new-instance v6, Lcom/android/vcard/VCardUtils$DecoderException;

    const-string v7, "Invalid quoted-printable encoding"

    invoke-direct {v6, v7}, Lcom/android/vcard/VCardUtils$DecoderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_36
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_36} :catch_36

    .line 79
    .end local v4           #l:I
    .end local v5           #u:I
    :catch_36
    move-exception v2

    .line 80
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Lcom/android/vcard/VCardUtils$DecoderException;

    const-string v7, "Invalid quoted-printable encoding"

    invoke-direct {v6, v7}, Lcom/android/vcard/VCardUtils$DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 78
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4       #l:I
    .restart local v5       #u:I
    :cond_3f
    shl-int/lit8 v6, v5, 0x4

    add-int/2addr v6, v4

    int-to-char v6, v6

    :try_start_43
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_46
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_43 .. :try_end_46} :catch_36

    .line 69
    .end local v4           #l:I
    .end local v5           #u:I
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 83
    :cond_49
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_46

    .line 86
    .end local v0           #b:I
    :cond_4d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_4
.end method
