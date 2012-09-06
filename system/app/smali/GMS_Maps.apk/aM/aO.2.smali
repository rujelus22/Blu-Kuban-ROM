.class LaM/aO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/F;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/aO;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(LaM/aM;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    invoke-direct {p0}, LaM/aO;-><init>()V

    return-void
.end method


# virtual methods
.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 312
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 296
    return-void
.end method

.method public a(LaM/aN;)V
    .registers 3
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, LaM/aO;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method public b(I)Lcom/google/googlenav/E;
    .registers 3
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, LaM/aO;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/E;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)I
    .registers 2
    .parameter

    .prologue
    .line 321
    return p1
.end method

.method public d()B
    .registers 2

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, LaM/aO;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
