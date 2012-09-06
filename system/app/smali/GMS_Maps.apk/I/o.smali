.class Li/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/o;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Li/m;)V
    .registers 2
    .parameter

    .prologue
    .line 249
    invoke-direct {p0}, Li/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li/l;
    .registers 4

    .prologue
    .line 263
    new-instance v1, Li/n;

    iget-object v0, p0, Li/o;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Li/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Li/l;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/l;

    invoke-direct {v1, v0}, Li/n;-><init>([Li/l;)V

    return-object v1
.end method

.method public a(Li/l;)V
    .registers 4
    .parameter

    .prologue
    .line 254
    instance-of v0, p1, Li/n;

    if-eqz v0, :cond_14

    .line 255
    iget-object v0, p0, Li/o;->a:Ljava/util/ArrayList;

    check-cast p1, Li/n;

    invoke-virtual {p1}, Li/n;->b()[Li/l;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 260
    :goto_13
    return-void

    .line 258
    :cond_14
    iget-object v0, p0, Li/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method
