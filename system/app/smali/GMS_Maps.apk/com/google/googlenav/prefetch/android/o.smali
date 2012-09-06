.class public Lcom/google/googlenav/prefetch/android/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaD/c;
.implements Lcom/google/googlenav/prefetch/android/y;


# instance fields
.field private final a:LaD/c;

.field private final b:Lcom/google/googlenav/prefetch/android/y;

.field private volatile c:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/y;LaD/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/o;->a:LaD/c;

    .line 24
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/o;->b:Lcom/google/googlenav/prefetch/android/y;

    .line 25
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/o;->b()V

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ln/am;
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/o;->d()Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lcom/google/googlenav/prefetch/android/o;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/o;->c:I

    if-ltz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/o;->b:Lcom/google/googlenav/prefetch/android/y;

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/y;->a()Ln/am;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public a(Ln/am;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/o;->b:Lcom/google/googlenav/prefetch/android/y;

    invoke-interface {v0, p1}, Lcom/google/googlenav/prefetch/android/y;->a(Ln/am;)Z

    move-result v0

    return v0
.end method

.method b()V
    .registers 2

    .prologue
    .line 75
    invoke-static {}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->l()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/o;->c:I

    .line 76
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/o;->a:LaD/c;

    invoke-interface {v0}, LaD/c;->c()V

    .line 36
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/o;->a:LaD/c;

    invoke-interface {v0}, LaD/c;->d()Z

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/o;->b:Lcom/google/googlenav/prefetch/android/y;

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/y;->i()I

    move-result v0

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/o;->b:Lcom/google/googlenav/prefetch/android/y;

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/y;->j()I

    move-result v0

    return v0
.end method

.method public k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/o;->b:Lcom/google/googlenav/prefetch/android/y;

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/y;->l()I

    move-result v0

    return v0
.end method

.method public m()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/o;->b:Lcom/google/googlenav/prefetch/android/y;

    invoke-interface {v0}, Lcom/google/googlenav/prefetch/android/y;->m()V

    .line 31
    return-void
.end method
