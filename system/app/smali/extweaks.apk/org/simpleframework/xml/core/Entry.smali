.class Lorg/simpleframework/xml/core/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "entry"


# instance fields
.field private attribute:Z

.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private entry:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private keyType:Ljava/lang/Class;

.field private label:Lorg/simpleframework/xml/ElementMap;

.field private value:Ljava/lang/String;

.field private valueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->attribute()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Entry;->attribute:Z

    .line 94
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->entry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    .line 95
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    .line 96
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 98
    iput-object p2, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    .line 99
    return-void
.end method

.method private getDependent(I)Ljava/lang/Class;
    .registers 7
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getDependents()[Ljava/lang/Class;

    move-result-object v0

    .line 229
    array-length v1, v0

    if-ge v1, p1, :cond_20

    .line 230
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Could not find type for %s at index %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 232
    :cond_20
    aget-object v0, v0, p1

    return-object v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 284
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    .line 289
    :goto_6
    return-object v0

    .line 286
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 287
    const-string v0, "entry"

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    .line 289
    :cond_13
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    goto :goto_6
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 246
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    .line 251
    :goto_6
    return-object v0

    .line 248
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    .line 251
    :cond_12
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    goto :goto_6
.end method

.method public getKey(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 4
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Entry;->getKeyType()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v1

    .line 152
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 153
    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveKey;

    invoke-direct {v0, p1, p0, v1}, Lorg/simpleframework/xml/core/PrimitiveKey;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    .line 155
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lorg/simpleframework/xml/core/CompositeKey;

    invoke-direct {v0, p1, p0, v1}, Lorg/simpleframework/xml/core/CompositeKey;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    goto :goto_f
.end method

.method protected getKeyType()Lorg/simpleframework/xml/strategy/Type;
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    if-nez v0, :cond_19

    .line 188
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    .line 190
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_19

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->getDependent(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    .line 194
    :cond_19
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 265
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    .line 270
    :goto_6
    return-object v0

    .line 267
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    .line 270
    :cond_12
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    goto :goto_6
.end method

.method public getValue(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 4
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Entry;->getValueType()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v1

    .line 172
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 173
    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveValue;

    invoke-direct {v0, p1, p0, v1}, Lorg/simpleframework/xml/core/PrimitiveValue;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    .line 175
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lorg/simpleframework/xml/core/CompositeValue;

    invoke-direct {v0, p1, p0, v1}, Lorg/simpleframework/xml/core/CompositeValue;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    goto :goto_f
.end method

.method protected getValueType()Lorg/simpleframework/xml/strategy/Type;
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    if-nez v0, :cond_19

    .line 207
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->valueType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    .line 209
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_19

    .line 210
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->getDependent(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    .line 213
    :cond_19
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Entry;->attribute:Z

    return v0
.end method

.method public isInline()Z
    .registers 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 314
    const-string v0, "%s on %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
