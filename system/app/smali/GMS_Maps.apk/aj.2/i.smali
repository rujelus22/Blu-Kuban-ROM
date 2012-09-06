.class public Laj/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laj/l;


# instance fields
.field protected a:Laj/m;

.field private b:F

.field private c:Laj/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Laj/i;->b:F

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Laj/m;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p2, p0, Laj/i;->a:Laj/m;

    .line 44
    new-instance v0, Laj/j;

    invoke-direct {v0, p1, p0}, Laj/j;-><init>(Landroid/content/Context;Laj/l;)V

    iput-object v0, p0, Laj/i;->c:Laj/j;

    .line 45
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 51
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->z()Z

    move-result v0

    return v0
.end method

.method public a(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Laj/d;-><init>(ILaj/j;)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/z;)Z

    move-result v0

    return v0
.end method

.method public a(Laj/v;ZZ)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    if-eqz p2, :cond_4

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p3}, Laj/c;-><init>(ILaj/v;Z)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/t;)Z

    move-result v0

    goto :goto_3
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Laj/i;->b:F

    .line 80
    return-void
.end method

.method public b(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Laj/d;-><init>(ILaj/j;)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/z;)Z

    move-result v0

    return v0
.end method

.method public b(Laj/v;ZZ)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 107
    if-eqz p2, :cond_4

    .line 111
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Laj/i;->a:Laj/m;

    new-instance v2, Laj/c;

    invoke-direct {v2, v0, p1, p3}, Laj/c;-><init>(ILaj/v;Z)V

    invoke-interface {v1, v2}, Laj/m;->a(Laj/t;)Z

    move-result v0

    goto :goto_3
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Laj/i;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_b

    .line 70
    iget-object v1, p0, Laj/i;->c:Laj/j;

    invoke-virtual {v1, p1}, Laj/j;->a(Landroid/view/MotionEvent;)Z

    .line 72
    :cond_b
    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Laj/i;->a:Laj/m;

    .line 87
    return-void
.end method

.method public c(Laj/j;)V
    .registers 5
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Laj/d;-><init>(ILaj/j;)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/z;)Z

    .line 142
    return-void
.end method

.method public c(Laj/v;ZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    if-eqz p2, :cond_e

    .line 118
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p3}, Laj/c;-><init>(ILaj/v;Z)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/t;)Z

    .line 124
    :goto_d
    return-void

    .line 121
    :cond_e
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p3}, Laj/c;-><init>(ILaj/v;Z)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/t;)Z

    goto :goto_d
.end method

.method public d(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Laj/b;-><init>(ILaj/j;)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/r;)Z

    move-result v0

    return v0
.end method

.method public e(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Laj/b;-><init>(ILaj/j;)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/r;)Z

    move-result v0

    return v0
.end method

.method public f(Laj/j;)V
    .registers 5
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Laj/b;-><init>(ILaj/j;)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/r;)Z

    .line 160
    return-void
.end method

.method public g(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/x;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Laj/x;-><init>(ILaj/j;)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/r;)Z

    move-result v0

    return v0
.end method

.method public h(Laj/j;)Z
    .registers 5
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/x;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Laj/x;-><init>(ILaj/j;)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/r;)Z

    move-result v0

    return v0
.end method

.method public i(Laj/j;)V
    .registers 5
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Laj/i;->a:Laj/m;

    new-instance v1, Laj/x;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Laj/x;-><init>(ILaj/j;)V

    invoke-interface {v0, v1}, Laj/m;->a(Laj/r;)Z

    .line 178
    return-void
.end method
