.class public Lcom/infraware/common/util/text/CharsetMatch;
.super Ljava/lang/Object;
.source "CharsetMatch.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/infraware/common/util/text/CharsetMatch;",
        ">;"
    }
.end annotation


# static fields
.field public static final BOM:I = 0x2

.field public static final DECLARED_ENCODING:I = 0x4

.field public static final ENCODING_SCHEME:I = 0x1

.field public static final LANG_STATISTICS:I = 0x8


# instance fields
.field private fConfidence:I

.field private fInputStream:Ljava/io/InputStream;

.field private fRawInput:[B

.field private fRawLength:I

.field private fRecognizer:Lcom/infraware/common/util/text/CharsetRecognizer;


# direct methods
.method constructor <init>(Lcom/infraware/common/util/text/CharsetDetector;Lcom/infraware/common/util/text/CharsetRecognizer;I)V
    .registers 5
    .parameter "det"
    .parameter "rec"
    .parameter "conf"

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetMatch;->fRawInput:[B

    .line 260
    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 235
    iput-object p2, p0, Lcom/infraware/common/util/text/CharsetMatch;->fRecognizer:Lcom/infraware/common/util/text/CharsetRecognizer;

    .line 236
    iput p3, p0, Lcom/infraware/common/util/text/CharsetMatch;->fConfidence:I

    .line 241
    iget-object v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_18

    .line 244
    iget-object v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetMatch;->fRawInput:[B

    .line 245
    iget v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    iput v0, p0, Lcom/infraware/common/util/text/CharsetMatch;->fRawLength:I

    .line 247
    :cond_18
    iget-object v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 248
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/infraware/common/util/text/CharsetMatch;)I
    .registers 5
    .parameter "other"

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, compareResult:I
    iget v1, p0, Lcom/infraware/common/util/text/CharsetMatch;->fConfidence:I

    iget v2, p1, Lcom/infraware/common/util/text/CharsetMatch;->fConfidence:I

    if-le v1, v2, :cond_9

    .line 224
    const/4 v0, 0x1

    .line 228
    :cond_8
    :goto_8
    return v0

    .line 225
    :cond_9
    iget v1, p0, Lcom/infraware/common/util/text/CharsetMatch;->fConfidence:I

    iget v2, p1, Lcom/infraware/common/util/text/CharsetMatch;->fConfidence:I

    if-ge v1, v2, :cond_8

    .line 226
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/infraware/common/util/text/CharsetMatch;

    invoke-virtual {p0, p1}, Lcom/infraware/common/util/text/CharsetMatch;->compareTo(Lcom/infraware/common/util/text/CharsetMatch;)I

    move-result v0

    return v0
.end method

.method public getConfidence()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/infraware/common/util/text/CharsetMatch;->fConfidence:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/infraware/common/util/text/CharsetMatch;->fRecognizer:Lcom/infraware/common/util/text/CharsetRecognizer;

    invoke-virtual {v0}, Lcom/infraware/common/util/text/CharsetRecognizer;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchType()I
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/infraware/common/util/text/CharsetMatch;->fRecognizer:Lcom/infraware/common/util/text/CharsetRecognizer;

    invoke-virtual {v0}, Lcom/infraware/common/util/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .registers 6

    .prologue
    .line 46
    iget-object v1, p0, Lcom/infraware/common/util/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 48
    .local v1, inputStream:Ljava/io/InputStream;
    if-nez v1, :cond_e

    .line 49
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1           #inputStream:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/infraware/common/util/text/CharsetMatch;->fRawInput:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/infraware/common/util/text/CharsetMatch;->fRawLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 53
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :cond_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 54
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/infraware/common/util/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 56
    :goto_1a
    return-object v2

    .line 55
    :catch_1b
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public getString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/infraware/common/util/text/CharsetMatch;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 11
    .parameter "maxLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    .local v4, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/infraware/common/util/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_32

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v5, sb:Ljava/lang/StringBuilder;
    new-array v0, v8, [C

    .line 92
    .local v0, buffer:[C
    invoke-virtual {p0}, Lcom/infraware/common/util/text/CharsetMatch;->getReader()Ljava/io/Reader;

    move-result-object v3

    .line 93
    .local v3, reader:Ljava/io/Reader;
    if-gez p1, :cond_2b

    const v2, 0x7fffffff

    .line 94
    .local v2, max:I
    :goto_18
    const/4 v1, 0x0

    .line 96
    .local v1, bytesRead:I
    :goto_19
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v3, v0, v7, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gez v1, :cond_2d

    .line 101
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    .end local v0           #buffer:[C
    .end local v1           #bytesRead:I
    .end local v2           #max:I
    .end local v3           #reader:Ljava/io/Reader;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :goto_2a
    return-object v6

    .restart local v0       #buffer:[C
    .restart local v3       #reader:Ljava/io/Reader;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_2b
    move v2, p1

    .line 93
    goto :goto_18

    .line 97
    .restart local v1       #bytesRead:I
    .restart local v2       #max:I
    :cond_2d
    invoke-virtual {v5, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 98
    sub-int/2addr v2, v1

    goto :goto_19

    .line 105
    .end local v0           #buffer:[C
    .end local v1           #bytesRead:I
    .end local v2           #max:I
    .end local v3           #reader:Ljava/io/Reader;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_32
    new-instance v4, Ljava/lang/String;

    .end local v4           #result:Ljava/lang/String;
    iget-object v6, p0, Lcom/infraware/common/util/text/CharsetMatch;->fRawInput:[B

    invoke-virtual {p0}, Lcom/infraware/common/util/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v4       #result:Ljava/lang/String;
    move-object v6, v4

    .line 107
    goto :goto_2a
.end method
