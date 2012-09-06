.class Li/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/T;


# instance fields
.field private a:Li/V;

.field private b:Li/T;

.field private c:Li/a;

.field private d:Li/a;


# direct methods
.method public constructor <init>(Li/V;Li/T;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Li/N;->a:Li/V;

    .line 25
    iput-object p2, p0, Li/N;->b:Li/T;

    .line 26
    return-void
.end method

.method private a(Li/a;)V
    .registers 4
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Li/N;->b:Li/T;

    if-eqz v0, :cond_e

    .line 45
    iget-object v0, p0, Li/N;->b:Li/T;

    iget-object v1, p0, Li/N;->a:Li/V;

    invoke-interface {v0, v1, p1}, Li/T;->a(Li/U;Li/a;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Li/N;->b:Li/T;

    .line 48
    :cond_e
    return-void
.end method


# virtual methods
.method public a(Li/U;Li/a;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 30
    if-nez p2, :cond_6

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li/N;->a(Li/a;)V

    .line 33
    :cond_6
    iget-object v0, p0, Li/N;->a:Li/V;

    invoke-virtual {v0}, Li/V;->e()Li/U;

    move-result-object v0

    if-ne p1, v0, :cond_32

    .line 34
    iput-object p2, p0, Li/N;->c:Li/a;

    .line 38
    :cond_10
    :goto_10
    iget-object v0, p0, Li/N;->b:Li/T;

    if-eqz v0, :cond_31

    iget-object v0, p0, Li/N;->c:Li/a;

    if-eqz v0, :cond_31

    iget-object v0, p0, Li/N;->d:Li/a;

    if-eqz v0, :cond_31

    .line 39
    new-instance v0, Li/J;

    const/4 v1, 0x2

    new-array v1, v1, [Li/a;

    const/4 v2, 0x0

    iget-object v3, p0, Li/N;->c:Li/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Li/N;->d:Li/a;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Li/J;-><init>([Li/a;)V

    invoke-direct {p0, v0}, Li/N;->a(Li/a;)V

    .line 41
    :cond_31
    return-void

    .line 35
    :cond_32
    iget-object v0, p0, Li/N;->a:Li/V;

    invoke-virtual {v0}, Li/V;->f()Li/U;

    move-result-object v0

    if-ne p1, v0, :cond_10

    .line 36
    iput-object p2, p0, Li/N;->d:Li/a;

    goto :goto_10
.end method
