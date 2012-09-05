.class public Lorg/apache/commons/httpclient/util/ParameterParser;
.super Ljava/lang/Object;
.source "ParameterParser.java"


# instance fields
.field private chars:[C

.field private i1:I

.field private i2:I

.field private len:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    .line 57
    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    .line 60
    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    .line 63
    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    .line 66
    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 71
    return-void
.end method

.method private getToken(Z)Ljava/lang/String;
    .registers 7
    .parameter "quoted"

    .prologue
    const/16 v3, 0x22

    .line 83
    :goto_2
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    if-ge v1, v2, :cond_1b

    iget-object v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 84
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    goto :goto_2

    .line 87
    :cond_1b
    :goto_1b
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    if-le v1, v2, :cond_36

    iget-object v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 88
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    goto :goto_1b

    .line 91
    :cond_36
    if-eqz p1, :cond_5e

    .line 92
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5e

    iget-object v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    aget-char v1, v1, v2

    if-ne v1, v3, :cond_5e

    iget-object v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    if-ne v1, v3, :cond_5e

    .line 95
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    .line 96
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 99
    :cond_5e
    const/4 v0, 0x0

    .line 100
    .local v0, result:Ljava/lang/String;
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    if-lt v1, v2, :cond_73

    .line 101
    new-instance v0, Ljava/lang/String;

    .end local v0           #result:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v4, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 103
    .restart local v0       #result:Ljava/lang/String;
    :cond_73
    return-object v0
.end method

.method private hasChar()Z
    .registers 3

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isOneOf(C[C)Z
    .registers 6
    .parameter "ch"
    .parameter "charray"

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_a

    .line 111
    aget-char v2, p2, v0

    if-ne p1, v2, :cond_b

    .line 112
    const/4 v1, 0x1

    .line 116
    :cond_a
    return v1

    .line 110
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private parseQuotedToken([C)Ljava/lang/String;
    .registers 9
    .parameter "terminators"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    iget v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    .line 144
    iget v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, quoted:Z
    const/4 v1, 0x0

    .line 147
    .local v1, charEscaped:Z
    :goto_c
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 148
    iget-object v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v6, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v0, v5, v6

    .line 149
    .local v0, ch:C
    if-nez v2, :cond_25

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/util/ParameterParser;->isOneOf(C[C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 160
    .end local v0           #ch:C
    :cond_20
    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/util/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 152
    .restart local v0       #ch:C
    :cond_25
    if-nez v1, :cond_2e

    const/16 v5, 0x22

    if-ne v0, v5, :cond_2e

    .line 153
    if-nez v2, :cond_42

    move v2, v3

    .line 155
    :cond_2e
    :goto_2e
    if-nez v1, :cond_44

    const/16 v5, 0x5c

    if-ne v0, v5, :cond_44

    move v1, v3

    .line 156
    :goto_35
    iget v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 157
    iget v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    goto :goto_c

    :cond_42
    move v2, v4

    .line 153
    goto :goto_2e

    :cond_44
    move v1, v4

    .line 155
    goto :goto_35
.end method

.method private parseToken([C)Ljava/lang/String;
    .registers 5
    .parameter "terminators"

    .prologue
    .line 124
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    .line 125
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 126
    :goto_8
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 127
    iget-object v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v0, v1, v2

    .line 128
    .local v0, ch:C
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/util/ParameterParser;->isOneOf(C[C)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 134
    .end local v0           #ch:C
    :cond_1a
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/commons/httpclient/util/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 131
    .restart local v0       #ch:C
    :cond_20
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 132
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    goto :goto_8
.end method


# virtual methods
.method public parse(Ljava/lang/String;C)Ljava/util/List;
    .registers 4
    .parameter "str"
    .parameter "separator"

    .prologue
    .line 172
    if-nez p1, :cond_8

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse([CC)Ljava/util/List;

    move-result-object v0

    goto :goto_7
.end method

.method public parse([CC)Ljava/util/List;
    .registers 5
    .parameter "chars"
    .parameter "separator"

    .prologue
    .line 189
    if-nez p1, :cond_8

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse([CIIC)Ljava/util/List;

    move-result-object v0

    goto :goto_7
.end method

.method public parse([CIIC)Ljava/util/List;
    .registers 12
    .parameter "chars"
    .parameter "offset"
    .parameter "length"
    .parameter "separator"

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    if-nez p1, :cond_c

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    :cond_b
    return-object v2

    .line 212
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v2, params:Ljava/util/List;
    iput-object p1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    .line 214
    iput p2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    .line 215
    iput p3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, paramName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 219
    .local v1, paramValue:Ljava/lang/String;
    :cond_19
    :goto_19
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 220
    const/4 v3, 0x2

    new-array v3, v3, [C

    aput-char v6, v3, v4

    aput-char p4, v3, v5

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/util/ParameterParser;->parseToken([C)Ljava/lang/String;

    move-result-object v0

    .line 221
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_45

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, v6, :cond_45

    .line 223
    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    .line 224
    new-array v3, v5, [C

    aput-char p4, v3, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/util/ParameterParser;->parseQuotedToken([C)Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_45
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_57

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, p4, :cond_57

    .line 227
    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    .line 229
    :cond_57
    if-eqz v0, :cond_19

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    if-eqz v1, :cond_19

    .line 230
    :cond_63
    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v3, v0, v1}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method
