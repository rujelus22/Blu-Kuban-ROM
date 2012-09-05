.class public Lcom/android/exchange/utility/SimpleIcsWriter;
.super Ljava/lang/Object;
.source "SimpleIcsWriter.java"


# instance fields
.field private final mOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    .line 37
    return-void
.end method

.method static escapeTextValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    const/16 v4, 0x5c

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3b

    .line 144
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 145
    .local v0, ch:C
    const/16 v3, 0xa

    if-ne v0, v3, :cond_22

    .line 146
    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 147
    :cond_22
    const/16 v3, 0xd

    if-eq v0, v3, :cond_1f

    .line 149
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_30

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_30

    if-ne v0, v4, :cond_37

    .line 150
    :cond_30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 153
    :cond_37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 156
    .end local v0           #ch:C
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static quoteParamValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "paramValue"

    .prologue
    .line 125
    if-nez p0, :cond_4

    .line 126
    const/4 v0, 0x0

    .line 135
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_c

    .line 118
    :goto_5
    iget-object v0, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 116
    :catch_c
    move-exception v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeLine(Ljava/lang/String;)V
    .registers 11
    .parameter "string"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 43
    const/4 v4, 0x0

    .line 44
    .local v4, numBytes:I
    if-nez p1, :cond_8

    .line 72
    :goto_7
    return-void

    .line 48
    :cond_8
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v3, :cond_38

    aget-byte v1, v0, v2

    .line 54
    .local v1, b:B
    const/16 v5, 0x47

    if-le v4, v5, :cond_2e

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isFirstUtf8Byte(B)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 62
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 63
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 64
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    const/4 v4, 0x1

    .line 67
    :cond_2e
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 70
    .end local v1           #b:B
    :cond_38
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7
.end method

.method public writeTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    :goto_6
    return-void

    .line 89
    :cond_7
    const-string v0, "CALSCALE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "METHOD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "PRODID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "VERSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "CATEGORIES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "CLASS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "COMMENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "DESCRIPTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "LOCATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "RESOURCES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "STATUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "SUMMARY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "TRANSP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "TZID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "TZNAME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "CONTACT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "RELATED-TO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "UID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "REQUEST-STATUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "X-LIC-LOCATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 97
    :cond_af
    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->escapeTextValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 99
    :cond_b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeLine(Ljava/lang/String;)V

    goto/16 :goto_6
.end method
