.class Laf/e;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Laf/c;


# direct methods
.method private constructor <init>(Laf/c;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Laf/e;->a:Laf/c;

    invoke-direct {p0}, Lac/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laf/c;Laf/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1}, Laf/e;-><init>(Laf/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 269
    const/16 v0, 0x48

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    .line 273
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bG;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 275
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Laf/e;->a:Laf/c;

    invoke-static {v2}, Laf/c;->a(Laf/c;)[Laf/b;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_24

    .line 276
    const/4 v2, 0x1

    iget-object v3, p0, Laf/e;->a:Laf/c;

    invoke-static {v3}, Laf/c;->a(Laf/c;)[Laf/b;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Laf/b;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 279
    :cond_24
    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 280
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 283
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bG;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 289
    iget-object v0, p0, Laf/e;->a:Laf/c;

    invoke-static {v0}, Laf/c;->b(Laf/c;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 330
    :goto_f
    return v6

    .line 311
    :cond_10
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 312
    iget-object v0, p0, Laf/e;->a:Laf/c;

    invoke-static {v0}, Laf/c;->c(Laf/c;)Ljava/util/Hashtable;

    move-result-object v3

    .line 314
    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_38

    .line 315
    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v4

    .line 316
    iget-object v5, p0, Laf/e;->a:Laf/c;

    invoke-static {v5, v4}, Laf/c;->a(Laf/c;I)Laf/b;

    move-result-object v4

    .line 317
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-interface {v4}, Laf/b;->d()Z

    move-result v5

    if-nez v5, :cond_35

    .line 319
    iget-object v5, p0, Laf/e;->a:Laf/c;

    invoke-static {v5, v4}, Laf/c;->a(Laf/c;Laf/b;)V

    .line 314
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 323
    :cond_38
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 324
    :goto_3c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 325
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/b;

    .line 326
    iget-object v2, p0, Laf/e;->a:Laf/c;

    invoke-static {v2}, Laf/c;->d(Laf/c;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-interface {v0}, Laf/b;->c()V

    goto :goto_3c

    .line 329
    :cond_55
    iget-object v0, p0, Laf/e;->a:Laf/c;

    invoke-static {v0}, Laf/c;->e(Laf/c;)V

    goto :goto_f
.end method
