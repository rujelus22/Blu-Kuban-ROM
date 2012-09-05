.class Lcom/infraware/common/util/text/CharsetRecog_UTF8;
.super Lcom/infraware/common/util/text/CharsetRecognizer;
.source "CharsetRecog_UTF8.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    const-string v0, "UTF-8"

    return-object v0
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 16
    .parameter "det"

    .prologue
    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    .local v2, hasBOM:Z
    const/4 v6, 0x0

    .line 24
    .local v6, numValid:I
    const/4 v5, 0x0

    .line 25
    .local v5, numInvalid:I
    iget-object v4, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    .line 27
    .local v4, input:[B
    const/4 v7, 0x0

    .line 30
    .local v7, trailBytes:I
    iget v8, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    if-lt v8, v13, :cond_2b

    .line 31
    aget-byte v8, v4, v10

    and-int/lit16 v8, v8, 0xff

    const/16 v11, 0xef

    if-ne v8, v11, :cond_2b

    aget-byte v8, v4, v9

    and-int/lit16 v8, v8, 0xff

    const/16 v11, 0xbb

    if-ne v8, v11, :cond_38

    move v8, v9

    :goto_1e
    const/4 v11, 0x2

    aget-byte v11, v4, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xbf

    if-ne v11, v12, :cond_3a

    :goto_27
    and-int/2addr v8, v9

    if-eqz v8, :cond_2b

    .line 32
    const/4 v2, 0x1

    .line 36
    :cond_2b
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2c
    iget v8, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    if-lt v3, v8, :cond_3c

    .line 78
    :cond_30
    const/4 v1, 0x0

    .line 79
    .local v1, confidence:I
    if-eqz v2, :cond_7b

    if-nez v5, :cond_7b

    .line 80
    const/16 v1, 0x64

    .line 94
    :cond_37
    :goto_37
    return v1

    .end local v1           #confidence:I
    .end local v3           #i:I
    :cond_38
    move v8, v10

    .line 31
    goto :goto_1e

    :cond_3a
    move v9, v10

    goto :goto_27

    .line 37
    .restart local v3       #i:I
    :cond_3c
    aget-byte v0, v4, v3

    .line 38
    .local v0, b:I
    and-int/lit16 v8, v0, 0x80

    if-nez v8, :cond_45

    .line 36
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 43
    :cond_45
    and-int/lit16 v8, v0, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_5d

    .line 44
    const/4 v7, 0x1

    .line 59
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    .line 60
    iget v8, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    if-ge v3, v8, :cond_42

    .line 63
    aget-byte v0, v4, v3

    .line 64
    and-int/lit16 v8, v0, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_74

    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    goto :goto_42

    .line 45
    :cond_5d
    and-int/lit16 v8, v0, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_65

    .line 46
    const/4 v7, 0x2

    goto :goto_4c

    .line 47
    :cond_65
    and-int/lit16 v8, v0, 0xf8

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_6d

    .line 48
    const/4 v7, 0x3

    goto :goto_4c

    .line 50
    :cond_6d
    add-int/lit8 v5, v5, 0x1

    .line 51
    const/4 v8, 0x5

    if-gt v5, v8, :cond_30

    .line 54
    const/4 v7, 0x0

    goto :goto_4c

    .line 68
    :cond_74
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_4c

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 81
    .end local v0           #b:I
    .restart local v1       #confidence:I
    :cond_7b
    if-eqz v2, :cond_84

    mul-int/lit8 v8, v5, 0xa

    if-le v6, v8, :cond_84

    .line 82
    const/16 v1, 0x50

    goto :goto_37

    .line 83
    :cond_84
    if-le v6, v13, :cond_8b

    if-nez v5, :cond_8b

    .line 84
    const/16 v1, 0x64

    goto :goto_37

    .line 85
    :cond_8b
    if-lez v6, :cond_92

    if-nez v5, :cond_92

    .line 86
    const/16 v1, 0x50

    goto :goto_37

    .line 87
    :cond_92
    if-nez v6, :cond_99

    if-nez v5, :cond_99

    .line 89
    const/16 v1, 0xa

    goto :goto_37

    .line 90
    :cond_99
    mul-int/lit8 v8, v5, 0xa

    if-le v6, v8, :cond_37

    .line 92
    const/16 v1, 0x19

    goto :goto_37
.end method
