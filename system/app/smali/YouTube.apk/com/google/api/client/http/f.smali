.class public Lcom/google/api/client/http/f;
.super Lcom/google/api/client/util/p;
.source "SourceFile"


# static fields
.field private static final h:Lcom/google/api/client/util/a/b;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 58
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "=&-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/http/f;->h:Lcom/google/api/client/util/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/api/client/util/p;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/http/f;->c:I

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/api/client/util/p;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/http/f;->c:I

    .line 124
    :try_start_6
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_b} :catch_3b

    .line 128
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/f;->a:Ljava/lang/String;

    .line 129
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/f;->b:Ljava/lang/String;

    .line 130
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, p0, Lcom/google/api/client/http/f;->c:I

    .line 131
    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/http/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    .line 132
    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/f;->e:Ljava/lang/String;

    .line 133
    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_3a

    .line 135
    invoke-static {v0, p0}, Lcom/google/api/client/http/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_3a
    return-void

    .line 125
    :catch_3b
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 409
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 410
    :cond_a
    const/4 v0, 0x0

    .line 427
    :goto_b
    return-object v0

    .line 412
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    move v0, v4

    .line 415
    :goto_13
    if-eqz v2, :cond_36

    .line 416
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 417
    const/4 v2, -0x1

    if-eq v5, v2, :cond_2f

    move v2, v3

    .line 419
    :goto_1f
    if-eqz v2, :cond_31

    .line 420
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_25
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v0, v5, 0x1

    .line 426
    goto :goto_13

    :cond_2f
    move v2, v4

    .line 417
    goto :goto_1f

    .line 422
    :cond_31
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_36
    move-object v0, v1

    .line 427
    goto :goto_b
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 6
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 432
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_2a

    .line 433
    iget-object v0, p0, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    if-eqz v1, :cond_19

    .line 435
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    .line 438
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 441
    :cond_2a
    return-void
.end method

.method private static a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    if-eqz p0, :cond_23

    .line 445
    const/4 p0, 0x0

    .line 446
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    :goto_8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_22

    .line 453
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_22
    return p0

    .line 448
    :cond_23
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8
.end method


# virtual methods
.method public a()Lcom/google/api/client/http/f;
    .registers 4

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/api/client/util/p;->b()Lcom/google/api/client/util/p;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/f;

    .line 166
    iget-object v1, p0, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    .line 169
    :cond_13
    return-object v0
.end method

.method public synthetic b()Lcom/google/api/client/util/p;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/api/client/http/f;->a()Lcom/google/api/client/http/f;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 7

    .prologue
    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    iget-object v0, p0, Lcom/google/api/client/http/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/http/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget v0, p0, Lcom/google/api/client/http/f;->c:I

    .line 285
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 286
    const/16 v1, 0x3a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    :cond_24
    iget-object v0, p0, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 289
    invoke-direct {p0, v3}, Lcom/google/api/client/http/f;->a(Ljava/lang/StringBuilder;)V

    .line 292
    :cond_2b
    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0}, Lcom/google/api/client/http/f;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_8c

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_6e

    move-object v0, v1

    .line 298
    check-cast v0, Ljava/util/Collection;

    .line 299
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v0, v2

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 300
    invoke-static {v0, v3, v5, v2}, Lcom/google/api/client/http/f;->a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5d

    :cond_6c
    move v2, v0

    .line 302
    goto :goto_35

    .line 303
    :cond_6e
    invoke-static {v2, v3, v5, v1}, Lcom/google/api/client/http/f;->a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    :goto_72
    move v2, v0

    .line 306
    goto :goto_35

    .line 308
    :cond_74
    iget-object v0, p0, Lcom/google/api/client/http/f;->e:Ljava/lang/String;

    .line 309
    if-eqz v0, :cond_87

    .line 310
    const/16 v1, 0x23

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/http/f;->h:Lcom/google/api/client/util/a/b;

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8c
    move v0, v2

    goto :goto_72
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/api/client/http/f;->a()Lcom/google/api/client/http/f;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 147
    if-ne p0, p1, :cond_4

    .line 148
    const/4 v0, 0x1

    .line 155
    :goto_3
    return v0

    .line 150
    :cond_4
    invoke-super {p0, p1}, Lcom/google/api/client/util/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    instance-of v0, p1, Lcom/google/api/client/http/f;

    if-nez v0, :cond_10

    .line 151
    :cond_e
    const/4 v0, 0x0

    goto :goto_3

    .line 153
    :cond_10
    check-cast p1, Lcom/google/api/client/http/f;

    .line 155
    invoke-virtual {p0}, Lcom/google/api/client/http/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/api/client/http/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/api/client/http/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
