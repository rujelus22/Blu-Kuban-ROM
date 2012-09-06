.class public Lcom/google/googlenav/ui/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bz;->a:Ljava/util/List;

    .line 39
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bz;->b:Ljava/util/List;

    .line 43
    iput p1, p0, Lcom/google/googlenav/ui/bz;->c:I

    .line 44
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/by;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v2, Lcom/google/googlenav/ui/by;

    iget-object v0, p0, Lcom/google/googlenav/ui/bz;->a:Ljava/util/List;

    new-array v1, v3, [LS/g;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/bz;->b:Ljava/util/List;

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/by;-><init>([LS/g;[Ljava/lang/String;)V

    return-object v2
.end method

.method public a(I)Lcom/google/googlenav/ui/bz;
    .registers 3
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/google/googlenav/ui/bz;->c:I

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->c(II)LS/g;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/bz;->a(LS/g;)Lcom/google/googlenav/ui/bz;

    .line 49
    return-object p0
.end method

.method public a(LS/g;)Lcom/google/googlenav/ui/bz;
    .registers 4
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/bz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/google/googlenav/ui/bz;->b:Ljava/util/List;

    invoke-interface {p1}, LS/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object p0
.end method
