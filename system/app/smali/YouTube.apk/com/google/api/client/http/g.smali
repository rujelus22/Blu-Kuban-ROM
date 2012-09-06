.class public Lcom/google/api/client/http/g;
.super Lcom/google/api/client/util/o;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/api/client/util/a/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "=&-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/http/g;->a:Lcom/google/api/client/util/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/api/client/util/o;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/http/g;->d:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/api/client/util/o;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/http/g;->d:I

    .line 100
    :try_start_6
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_b} :catch_3b

    .line 104
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/g;->b:Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/g;->c:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, p0, Lcom/google/api/client/http/g;->d:I

    .line 107
    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/http/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/g;->e:Ljava/util/List;

    .line 108
    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/g;->f:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_3a

    .line 111
    invoke-static {v0, p0}, Lcom/google/api/client/http/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :cond_3a
    return-void

    .line 101
    :catch_3b
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 372
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 373
    :cond_a
    const/4 v0, 0x0

    .line 390
    :goto_b
    return-object v0

    .line 375
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    move v0, v4

    .line 378
    :goto_13
    if-eqz v2, :cond_36

    .line 379
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 380
    const/4 v2, -0x1

    if-eq v5, v2, :cond_2f

    move v2, v3

    .line 382
    :goto_1f
    if-eqz v2, :cond_31

    .line 383
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 387
    :goto_25
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v0, v5, 0x1

    .line 389
    goto :goto_13

    :cond_2f
    move v2, v4

    .line 380
    goto :goto_1f

    .line 385
    :cond_31
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_36
    move-object v0, v1

    .line 390
    goto :goto_b
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 6
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/api/client/http/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 395
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_2a

    .line 396
    iget-object v0, p0, Lcom/google/api/client/http/g;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    if-eqz v1, :cond_19

    .line 398
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    .line 401
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 404
    :cond_2a
    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/lang/StringBuilder;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 411
    const/4 v0, 0x1

    .line 412
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_46

    .line 415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_3f

    move-object v0, v1

    .line 417
    check-cast v0, Ljava/util/Collection;

    .line 418
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v0, v2

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 419
    invoke-static {v0, p1, v4, v2}, Lcom/google/api/client/http/g;->a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2e

    :cond_3d
    move v2, v0

    .line 421
    goto :goto_6

    .line 422
    :cond_3f
    invoke-static {v2, p1, v4, v1}, Lcom/google/api/client/http/g;->a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :goto_43
    move v2, v0

    .line 425
    goto :goto_6

    .line 426
    :cond_45
    return-void

    :cond_46
    move v0, v2

    goto :goto_43
.end method

.method private static a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    if-eqz p0, :cond_23

    .line 430
    const/4 p0, 0x0

    .line 431
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    :goto_8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_22

    .line 438
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_22
    return p0

    .line 433
    :cond_23
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method private b()Lcom/google/api/client/http/g;
    .registers 4

    .prologue
    .line 141
    invoke-super {p0}, Lcom/google/api/client/util/o;->clone()Lcom/google/api/client/util/o;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/g;

    .line 142
    iget-object v1, p0, Lcom/google/api/client/http/g;->e:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/api/client/http/g;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/api/client/http/g;->e:Ljava/util/List;

    .line 145
    :cond_13
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    iget-object v0, p0, Lcom/google/api/client/http/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v0, "://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v0, p0, Lcom/google/api/client/http/g;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget v0, p0, Lcom/google/api/client/http/g;->d:I

    .line 263
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2e

    .line 264
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    :cond_2e
    iget-object v0, p0, Lcom/google/api/client/http/g;->e:Ljava/util/List;

    if-eqz v0, :cond_35

    .line 267
    invoke-direct {p0, v1}, Lcom/google/api/client/http/g;->a(Ljava/lang/StringBuilder;)V

    .line 269
    :cond_35
    invoke-virtual {p0}, Lcom/google/api/client/http/g;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/api/client/http/g;->a(Ljava/util/Set;Ljava/lang/StringBuilder;)V

    .line 271
    iget-object v0, p0, Lcom/google/api/client/http/g;->f:Ljava/lang/String;

    .line 272
    if-eqz v0, :cond_4f

    .line 273
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/api/client/http/g;->a:Lcom/google/api/client/util/a/b;

    invoke-virtual {v3, v0}, Lcom/google/api/client/util/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/google/api/client/util/o;
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/api/client/http/g;->b()Lcom/google/api/client/http/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/api/client/http/g;->b()Lcom/google/api/client/http/g;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 123
    if-ne p0, p1, :cond_4

    .line 124
    const/4 v0, 0x1

    .line 131
    :goto_3
    return v0

    .line 126
    :cond_4
    invoke-super {p0, p1}, Lcom/google/api/client/util/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    instance-of v0, p1, Lcom/google/api/client/http/g;

    if-nez v0, :cond_10

    .line 127
    :cond_e
    const/4 v0, 0x0

    goto :goto_3

    .line 129
    :cond_10
    check-cast p1, Lcom/google/api/client/http/g;

    .line 131
    invoke-virtual {p0}, Lcom/google/api/client/http/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/api/client/http/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/api/client/http/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
