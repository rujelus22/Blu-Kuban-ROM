.class public final Llibcore/net/http/RawHeaders;
.super Ljava/lang/Object;
.source "RawHeaders.java"


# static fields
.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private httpMinorVersion:I

.field private final namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseCode:I

.field private responseMessage:Ljava/lang/String;

.field private statusLine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Llibcore/net/http/RawHeaders$1;

    invoke-direct {v0}, Llibcore/net/http/RawHeaders$1;-><init>()V

    sput-object v0, Llibcore/net/http/RawHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Llibcore/net/http/RawHeaders;->httpMinorVersion:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Llibcore/net/http/RawHeaders;->responseCode:I

    .line 67
    return-void
.end method

.method public constructor <init>(Llibcore/net/http/RawHeaders;)V
    .registers 4
    .parameter "copyFrom"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Llibcore/net/http/RawHeaders;->httpMinorVersion:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Llibcore/net/http/RawHeaders;->responseCode:I

    .line 70
    iget-object v0, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    iget-object v1, p1, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v0, p1, Llibcore/net/http/RawHeaders;->statusLine:Ljava/lang/String;

    iput-object v0, p0, Llibcore/net/http/RawHeaders;->statusLine:Ljava/lang/String;

    .line 72
    iget v0, p1, Llibcore/net/http/RawHeaders;->httpMinorVersion:I

    iput v0, p0, Llibcore/net/http/RawHeaders;->httpMinorVersion:I

    .line 73
    iget v0, p1, Llibcore/net/http/RawHeaders;->responseCode:I

    iput v0, p0, Llibcore/net/http/RawHeaders;->responseCode:I

    .line 74
    iget-object v0, p1, Llibcore/net/http/RawHeaders;->responseMessage:Ljava/lang/String;

    iput-object v0, p0, Llibcore/net/http/RawHeaders;->responseMessage:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static fromMultimap(Ljava/util/Map;)Llibcore/net/http/RawHeaders;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Llibcore/net/http/RawHeaders;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Llibcore/net/http/RawHeaders;

    invoke-direct {v3}, Llibcore/net/http/RawHeaders;-><init>()V

    .line 286
    .local v3, result:Llibcore/net/http/RawHeaders;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, fieldName:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 289
    .local v4, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2b

    .line 290
    invoke-virtual {v3, v1, v4}, Llibcore/net/http/RawHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_d

    .line 291
    :cond_2b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 292
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    goto :goto_d

    .line 295
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1           #fieldName:Ljava/lang/String;
    .end local v4           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    return-object v3
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 149
    if-nez p1, :cond_a

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fieldName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_a
    if-nez p2, :cond_29

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring HTTP header field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' because its value is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 163
    :goto_28
    return-void

    .line 161
    :cond_29
    iget-object v0, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method public addAll(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, headerFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 178
    .end local v1           #value:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public addLine(Ljava/lang/String;)V
    .registers 5
    .parameter "line"

    .prologue
    .line 137
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 139
    const-string v1, ""

    invoke-virtual {p0, v1, p1}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_e
    return-void

    .line 141
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "fieldName"

    .prologue
    .line 222
    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_26

    .line 223
    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 224
    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    :goto_22
    return-object v1

    .line 222
    :cond_23
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    .line 227
    :cond_26
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public getAll(Ljava/util/Set;)Llibcore/net/http/RawHeaders;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Llibcore/net/http/RawHeaders;"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, fieldNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Llibcore/net/http/RawHeaders;

    invoke-direct {v2}, Llibcore/net/http/RawHeaders;-><init>()V

    .line 235
    .local v2, result:Llibcore/net/http/RawHeaders;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 236
    iget-object v3, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, fieldName:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 238
    iget-object v3, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_29
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 241
    .end local v0           #fieldName:Ljava/lang/String;
    :cond_2c
    return-object v2
.end method

.method public getFieldName(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 200
    mul-int/lit8 v0, p1, 0x2

    .line 201
    .local v0, fieldNameIndex:I
    if-ltz v0, :cond_c

    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 202
    :cond_c
    const/4 v1, 0x0

    .line 204
    :goto_d
    return-object v1

    :cond_e
    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_d
.end method

.method public getHttpMinorVersion()I
    .registers 3

    .prologue
    .line 115
    iget v0, p0, Llibcore/net/http/RawHeaders;->httpMinorVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Llibcore/net/http/RawHeaders;->httpMinorVersion:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Llibcore/net/http/RawHeaders;->responseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Llibcore/net/http/RawHeaders;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Llibcore/net/http/RawHeaders;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 211
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 212
    .local v0, valueIndex:I
    if-ltz v0, :cond_e

    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 213
    :cond_e
    const/4 v1, 0x0

    .line 215
    :goto_f
    return-object v1

    :cond_10
    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_f
.end method

.method public length()I
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public removeAll(Ljava/lang/String;)V
    .registers 4
    .parameter "fieldName"

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 167
    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 168
    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 166
    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 172
    :cond_24
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p1, p2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public setStatusLine(Ljava/lang/String;)V
    .registers 6
    .parameter "statusLine"

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 83
    iput-object p1, p0, Llibcore/net/http/RawHeaders;->statusLine:Ljava/lang/String;

    .line 85
    if-eqz p1, :cond_10

    const-string v2, "HTTP/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 104
    :cond_10
    :goto_10
    return-void

    .line 88
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 89
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 90
    .local v1, mark:I
    if-eqz v1, :cond_10

    .line 93
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-eq v2, v3, :cond_2c

    .line 94
    const/4 v2, 0x0

    iput v2, p0, Llibcore/net/http/RawHeaders;->httpMinorVersion:I

    .line 96
    :cond_2c
    add-int/lit8 v0, v1, 0x3

    .line 97
    .local v0, last:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_38

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 100
    :cond_38
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Llibcore/net/http/RawHeaders;->responseCode:I

    .line 101
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_10

    .line 102
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/RawHeaders;->responseMessage:Ljava/lang/String;

    goto :goto_10
.end method

.method public toHeaderString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    .local v1, result:Ljava/lang/StringBuilder;
    iget-object v2, p0, Llibcore/net/http/RawHeaders;->statusLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v2, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_43

    .line 248
    iget-object v2, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v0, v0, 0x2

    goto :goto_13

    .line 251
    :cond_43
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toMultimap()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v4, Ljava/util/TreeMap;

    sget-object v6, Llibcore/net/http/RawHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v4, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 261
    .local v4, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    iget-object v6, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3f

    .line 262
    iget-object v6, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    .local v1, fieldName:Ljava/lang/String;
    iget-object v6, p0, Llibcore/net/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 265
    .local v5, value:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, allValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 267
    .local v3, otherValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_32

    .line 268
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    :cond_32
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 273
    .end local v0           #allValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #fieldName:Ljava/lang/String;
    .end local v3           #otherValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    :cond_3f
    iget-object v6, p0, Llibcore/net/http/RawHeaders;->statusLine:Ljava/lang/String;

    if-eqz v6, :cond_51

    .line 274
    const/4 v6, 0x0

    iget-object v7, p0, Llibcore/net/http/RawHeaders;->statusLine:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_51
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    return-object v6
.end method
