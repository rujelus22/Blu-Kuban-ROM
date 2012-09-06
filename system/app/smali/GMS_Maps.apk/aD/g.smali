.class public abstract LaD/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaD/c;


# instance fields
.field protected final a:Lcom/google/googlenav/android/F;

.field protected final b:Lr/aP;

.field protected final c:Landroid/net/wifi/WifiManager$WifiLock;

.field protected final d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

.field protected final e:Lcom/google/googlenav/prefetch/android/j;

.field private volatile f:Z

.field private final g:LaD/d;

.field private final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/F;Lr/aP;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/j;LaD/d;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, LaD/g;->f:Z

    .line 48
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaD/g;->h:Ljava/util/List;

    .line 53
    iput-object p1, p0, LaD/g;->a:Lcom/google/googlenav/android/F;

    .line 54
    iput-object p2, p0, LaD/g;->b:Lr/aP;

    .line 55
    iput-object p3, p0, LaD/g;->c:Landroid/net/wifi/WifiManager$WifiLock;

    .line 56
    iput-object p4, p0, LaD/g;->d:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    .line 57
    iput-object p5, p0, LaD/g;->e:Lcom/google/googlenav/prefetch/android/j;

    .line 58
    iput-object p6, p0, LaD/g;->g:LaD/d;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Lr/aa;)V
    .registers 3
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, LaD/g;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public abstract a()Z
.end method

.method protected abstract b()Z
.end method

.method public c()V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, LaD/g;->f:Z

    .line 109
    iget-object v0, p0, LaD/g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aa;

    .line 110
    invoke-interface {v0}, Lr/aa;->a()V

    goto :goto_9

    .line 112
    :cond_19
    iget-object v0, p0, LaD/g;->g:LaD/d;

    if-eqz v0, :cond_22

    .line 113
    iget-object v0, p0, LaD/g;->g:LaD/d;

    invoke-interface {v0}, LaD/d;->a()V

    .line 115
    :cond_22
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, LaD/g;->f:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, LaD/g;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, LaD/g;->b()Z

    move-result v0

    goto :goto_7
.end method

.method public f()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, LaD/g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    return-void
.end method

.method public g()Lcom/google/googlenav/prefetch/android/j;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, LaD/g;->e:Lcom/google/googlenav/prefetch/android/j;

    return-object v0
.end method
