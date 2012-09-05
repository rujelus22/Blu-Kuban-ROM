.class public Lorg/columba/ristretto/message/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Lorg/columba/ristretto/io/Streamable;


# static fields
.field private static final MAXLINELENGTH:I = 0x4e

.field private static final unlimitedFields:[Ljava/lang/String;


# instance fields
.field private header:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "received"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "x-"

    aput-object v2, v0, v1

    sput-object v0, Lorg/columba/ristretto/message/Header;->unlimitedFields:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    .line 67
    return-void
.end method

.method private foldLine(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 10
    .parameter "line"
    .parameter "firstMaxLength"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, 0x20

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p2, :cond_c

    if-gtz p2, :cond_d

    .line 198
    .end local p1
    :cond_c
    :goto_c
    return-object p1

    .line 170
    .restart local p1
    :cond_d
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 171
    .local v0, foldPos:I
    if-eq v0, v5, :cond_c

    .line 175
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 176
    .local v2, result:Ljava/lang/StringBuffer;
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 177
    const-string v3, "\r\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    move v1, v0

    .line 180
    .local v1, lastFoldPos:I
    add-int/lit8 v0, v0, 0x4e

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_37

    .line 182
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 185
    :cond_37
    :goto_37
    if-eq v0, v5, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_59

    .line 186
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 187
    const-string v3, "\r\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    move v1, v0

    .line 190
    add-int/lit8 v0, v0, 0x4e

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_37

    .line 192
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_37

    .line 196
    :cond_59
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object p1, v2

    .line 198
    goto :goto_c
.end method

.method private static isUnlimited(Ljava/lang/String;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, ignoredCase:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    sget-object v2, Lorg/columba/ristretto/message/Header;->unlimitedFields:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 220
    sget-object v2, Lorg/columba/ristretto/message/Header;->unlimitedFields:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 221
    const/4 v2, 0x1

    .line 224
    :goto_15
    return v2

    .line 219
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 224
    :cond_19
    const/4 v2, 0x0

    goto :goto_15
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 89
    iget-object v1, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, oldvalue:Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-static {p1}, Lorg/columba/ristretto/message/Header;->isUnlimited(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 91
    :cond_10
    iget-object v1, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_15
    return-void

    .line 93
    :cond_16
    iget-object v1, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 120
    new-instance v0, Lorg/columba/ristretto/message/Header;

    invoke-direct {v0}, Lorg/columba/ristretto/message/Header;-><init>()V

    .line 121
    .local v0, cloneHeader:Lorg/columba/ristretto/message/Header;
    iget-object v1, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    .line 122
    return-object v0
.end method

.method public count()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 205
    new-instance v0, Lorg/columba/ristretto/io/SourceInputStream;

    new-instance v1, Lorg/columba/ristretto/io/CharSequenceSource;

    invoke-virtual {p0}, Lorg/columba/ristretto/message/Header;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/columba/ristretto/io/CharSequenceSource;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1}, Lorg/columba/ristretto/io/SourceInputStream;-><init>(Lorg/columba/ristretto/io/Source;)V

    return-object v0
.end method

.method public getKeys()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public merge(Lorg/columba/ristretto/message/Header;)V
    .registers 6
    .parameter "arg"

    .prologue
    .line 156
    iget-object v2, p1, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 157
    .local v1, keys:Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 158
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, key:Ljava/lang/Object;
    iget-object v2, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    iget-object v3, p1, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 161
    .end local v0           #key:Ljava/lang/Object;
    :cond_1c
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 76
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :goto_9
    return-void

    .line 79
    :cond_a
    iget-object v0, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 136
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .local v2, result:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/columba/ristretto/message/Header;->header:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 138
    .local v1, keys:Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 139
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4e

    add-int/lit8 v4, v4, -0x2

    invoke-direct {p0, v3, v4}, Lorg/columba/ristretto/message/Header;->foldLine(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 143
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 145
    .end local v0           #key:Ljava/lang/String;
    :cond_38
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
