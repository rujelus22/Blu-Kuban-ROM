.class public Lk/C;
.super LA/j;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/HashMap;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/C;->b:Ljava/util/HashMap;

    .line 448
    sget-object v0, Lk/C;->b:Ljava/util/HashMap;

    const-string v1, "layers"

    const-string v2, "clear"

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 452
    invoke-direct {p0}, LA/j;-><init>()V

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/C;->c:Ljava/util/HashMap;

    .line 453
    iput-object p1, p0, Lk/C;->a:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 6
    .parameter

    .prologue
    .line 457
    invoke-direct {p0, p1}, LA/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/C;->c:Ljava/util/HashMap;

    .line 458
    const-string v0, "action"

    invoke-static {p1, v0}, Lk/C;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/C;->a:Ljava/lang/String;

    .line 459
    sget-object v0, Lk/C;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lk/C;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 460
    if-eqz v0, :cond_38

    .line 461
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    iget-object v2, p0, Lk/C;->c:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lk/C;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 465
    :cond_38
    return-void
.end method

.method public static a(Lorg/w3c/dom/Node;)Lk/C;
    .registers 2
    .parameter

    .prologue
    .line 469
    const-string v0, "param2"

    invoke-static {p0, v0}, Lk/C;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 470
    new-instance v0, Lk/B;

    invoke-direct {v0, p0}, Lk/B;-><init>(Lorg/w3c/dom/Node;)V

    .line 474
    :goto_d
    return-object v0

    .line 471
    :cond_e
    const-string v0, "param"

    invoke-static {p0, v0}, Lk/C;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 472
    new-instance v0, Lk/D;

    invoke-direct {v0, p0}, Lk/D;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_d

    .line 474
    :cond_1c
    new-instance v0, Lk/C;

    invoke-direct {v0, p0}, Lk/C;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_d
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 505
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lk/C;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ui action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/C;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0, p1}, Lk/C;->b(Ljava/io/Writer;)V

    .line 489
    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lk/C;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/io/Writer;)V
    .registers 2
    .parameter

    .prologue
    .line 483
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 501
    const-string v0, "true"

    invoke-virtual {p0, p1}, Lk/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 515
    const-string v0, "true"

    invoke-virtual {p0}, Lk/C;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
