.class public Lcom/google/googlenav/friend/history/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/friend/history/b;

.field private final b:Ljava/util/List;

.field private final c:F

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/b;Ljava/lang/String;Ljava/util/List;F)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/google/googlenav/friend/history/J;->a:Lcom/google/googlenav/friend/history/b;

    .line 34
    iput-object p2, p0, Lcom/google/googlenav/friend/history/J;->d:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/google/googlenav/friend/history/J;->b:Ljava/util/List;

    .line 36
    iput p4, p0, Lcom/google/googlenav/friend/history/J;->c:F

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    iget v0, p0, Lcom/google/googlenav/friend/history/J;->c:F

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/googlenav/friend/history/b;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/friend/history/J;->a:Lcom/google/googlenav/friend/history/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/googlenav/friend/history/J;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/googlenav/friend/history/J;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/J;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 81
    :goto_c
    return v0

    .line 76
    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/J;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/c;

    .line 77
    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/c;->b()Lcom/google/googlenav/friend/history/m;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/friend/history/m;->c:Lcom/google/googlenav/friend/history/m;

    if-eq v0, v3, :cond_15

    .line 78
    const/4 v0, 0x0

    goto :goto_c

    :cond_2b
    move v0, v1

    .line 81
    goto :goto_c
.end method
