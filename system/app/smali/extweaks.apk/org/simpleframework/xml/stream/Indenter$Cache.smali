.class Lorg/simpleframework/xml/stream/Indenter$Cache;
.super Ljava/lang/Object;
.source "Indenter.java"


# instance fields
.field private count:I

.field private list:[Ljava/lang/String;

.field final synthetic this$0:Lorg/simpleframework/xml/stream/Indenter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Indenter;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->this$0:Lorg/simpleframework/xml/stream/Indenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    .line 214
    return-void
.end method

.method private resize(I)V
    .registers 5
    .parameter

    .prologue
    .line 271
    new-array v1, p1, [Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 274
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 276
    :cond_11
    iput-object v1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    .line 277
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_a

    .line 257
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 259
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public set(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_a

    .line 238
    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->resize(I)V

    .line 240
    :cond_a
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    if-le p1, v0, :cond_10

    .line 241
    iput p1, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    .line 243
    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->list:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 244
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter$Cache;->count:I

    return v0
.end method
