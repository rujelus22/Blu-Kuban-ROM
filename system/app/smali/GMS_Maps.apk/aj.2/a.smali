.class public Laj/a;
.super Laj/h;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Laj/h;-><init>()V

    .line 21
    iput-object p1, p0, Laj/a;->a:Landroid/view/MotionEvent;

    .line 22
    return-void
.end method

.method private g()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method


# virtual methods
.method public a(I)F
    .registers 3
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Laj/a;->g()V

    .line 37
    iget-object v0, p0, Laj/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Laj/a;->g()V

    .line 31
    iget-object v0, p0, Laj/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()F
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Laj/a;->g()V

    .line 49
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->s()F

    move-result v0

    return v0
.end method

.method public b(I)F
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Laj/a;->g()V

    .line 43
    iget-object v0, p0, Laj/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Laj/a;->g()V

    .line 55
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->t()F

    move-result v0

    return v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Laj/a;->g()V

    .line 61
    iget-object v0, p0, Laj/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Laj/a;->a:Landroid/view/MotionEvent;

    .line 63
    return-void
.end method
