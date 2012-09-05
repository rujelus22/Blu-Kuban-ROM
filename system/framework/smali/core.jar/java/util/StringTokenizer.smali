.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private delimiters:Ljava/lang/String;

.field private position:I

.field private returnDelimiters:Z

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"

    .prologue
    .line 59
    const-string v0, " \t\n\r\u000c"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .parameter "delimiters"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "string"
    .parameter "delimiters"
    .parameter "returnDelimiters"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz p1, :cond_f

    .line 95
    iput-object p1, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 97
    iput-boolean p3, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 101
    return-void

    .line 100
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public countTokens()I
    .registers 8

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, count:I
    const/4 v2, 0x0

    .line 112
    .local v2, inToken:Z
    iget v1, p0, Ljava/util/StringTokenizer;->position:I

    .local v1, i:I
    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    :goto_a
    if-ge v1, v3, :cond_2b

    .line 113
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_29

    .line 114
    iget-boolean v4, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v4, :cond_21

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_21
    if-eqz v2, :cond_26

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    const/4 v2, 0x0

    .line 112
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 121
    :cond_29
    const/4 v2, 0x1

    goto :goto_26

    .line 124
    :cond_2b
    if-eqz v2, :cond_2f

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_2f
    return v0
.end method

.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 146
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 148
    :cond_c
    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 149
    .local v1, length:I
    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v4, v1, :cond_31

    .line 150
    iget-boolean v4, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v4, :cond_1b

    .line 159
    :cond_1a
    :goto_1a
    return v2

    .line 155
    :cond_1b
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    .local v0, i:I
    :goto_1d
    if-ge v0, v1, :cond_31

    .line 156
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .end local v0           #i:I
    :cond_31
    move v2, v3

    .line 159
    goto :goto_1a
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 182
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 183
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 185
    :cond_b
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 186
    .local v0, i:I
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 188
    .local v1, length:I
    if-ge v0, v1, :cond_b3

    .line 189
    iget-boolean v2, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v2, :cond_6b

    .line 190
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_3a

    .line 191
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 205
    :goto_39
    return-object v2

    .line 192
    :cond_3a
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    :goto_40
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_64

    .line 193
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_5d

    .line 194
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 192
    :cond_5d
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_40

    .line 195
    :cond_64
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 198
    :cond_6b
    :goto_6b
    if-ge v0, v1, :cond_7e

    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_7e

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 200
    :cond_7e
    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 201
    if-ge v0, v1, :cond_b3

    .line 202
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    :goto_88
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_ac

    .line 203
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_a5

    .line 204
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 202
    :cond_a5
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_88

    .line 205
    :cond_ac
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 208
    :cond_b3
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "delims"

    .prologue
    .line 222
    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
