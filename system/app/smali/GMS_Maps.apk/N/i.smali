.class public Ln/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/h;


# static fields
.field static final a:Ln/aa;


# instance fields
.field private b:Ljava/util/List;

.field private c:Ln/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    invoke-static {}, Ln/i;->b()Ln/aa;

    move-result-object v0

    sput-object v0, Ln/i;->a:Ln/aa;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ln/i;->b:Ljava/util/List;

    .line 31
    sget-object v0, Ln/i;->a:Ln/aa;

    iput-object v0, p0, Ln/i;->c:Ln/aa;

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ln/i;->b:Ljava/util/List;

    .line 39
    sget-object v0, Ln/i;->a:Ln/aa;

    iput-object v0, p0, Ln/i;->c:Ln/aa;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .parameter

    .prologue
    .line 54
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ln/i;-><init>(I)V

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/h;

    .line 56
    invoke-virtual {p0, v0}, Ln/i;->a(Ln/h;)V

    goto :goto_b

    .line 58
    :cond_1b
    return-void
.end method

.method public varargs constructor <init>([Ln/h;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ln/i;-><init>(Ljava/util/Collection;)V

    .line 47
    return-void
.end method

.method private static b()Ln/aa;
    .registers 2

    .prologue
    const/high16 v1, -0x8000

    .line 118
    new-instance v0, Ln/Q;

    invoke-direct {v0, v1, v1}, Ln/Q;-><init>(II)V

    .line 119
    new-instance v1, Ln/aa;

    invoke-direct {v1, v0, v0}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v1
.end method


# virtual methods
.method public a()Ln/aa;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Ln/i;->c:Ln/aa;

    return-object v0
.end method

.method public a(Ln/h;)V
    .registers 5
    .parameter

    .prologue
    .line 64
    invoke-interface {p1}, Ln/h;->a()Ln/aa;

    move-result-object v0

    .line 65
    iget-object v1, p0, Ln/i;->c:Ln/aa;

    sget-object v2, Ln/i;->a:Ln/aa;

    if-ne v1, v2, :cond_23

    .line 66
    new-instance v1, Ln/aa;

    iget-object v2, v0, Ln/aa;->a:Ln/Q;

    invoke-static {v2}, Ln/Q;->a(Ln/Q;)Ln/Q;

    move-result-object v2

    iget-object v0, v0, Ln/aa;->b:Ln/Q;

    invoke-static {v0}, Ln/Q;->a(Ln/Q;)Ln/Q;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    iput-object v1, p0, Ln/i;->c:Ln/aa;

    .line 70
    :goto_1d
    iget-object v0, p0, Ln/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void

    .line 68
    :cond_23
    iget-object v1, p0, Ln/i;->c:Ln/aa;

    invoke-virtual {v1, v0}, Ln/aa;->b(Ln/aa;)V

    goto :goto_1d
.end method

.method public a(Ln/Q;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Ln/i;->c:Ln/aa;

    invoke-virtual {v0, p1}, Ln/aa;->a(Ln/Q;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 88
    :cond_9
    :goto_9
    return v2

    :cond_a
    move v1, v2

    .line 83
    :goto_b
    iget-object v0, p0, Ln/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 84
    iget-object v0, p0, Ln/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/h;

    invoke-interface {v0, p1}, Ln/h;->a(Ln/Q;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 85
    const/4 v2, 0x1

    goto :goto_9

    .line 83
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b
.end method

.method public a(Ln/ab;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1}, Ln/ab;->a()Ln/aa;

    move-result-object v0

    .line 94
    iget-object v1, p0, Ln/i;->c:Ln/aa;

    invoke-virtual {v1, v0}, Ln/aa;->a(Ln/ab;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 102
    :cond_d
    :goto_d
    return v2

    :cond_e
    move v1, v2

    .line 97
    :goto_f
    iget-object v0, p0, Ln/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 98
    iget-object v0, p0, Ln/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/h;

    invoke-interface {v0, p1}, Ln/h;->a(Ln/ab;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 99
    const/4 v2, 0x1

    goto :goto_d

    .line 97
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method
