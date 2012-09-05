.class public LaA/a;
.super LaA/h;


# instance fields
.field private a:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0}, LaA/h;-><init>()V

    iput-object p1, p0, LaA/a;->a:Landroid/view/MotionEvent;

    return-void
.end method

.method private g()V
    .registers 1

    return-void
.end method


# virtual methods
.method public a(I)F
    .registers 3

    invoke-direct {p0}, LaA/a;->g()V

    iget-object v0, p0, LaA/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public a()J
    .registers 3

    invoke-direct {p0}, LaA/a;->g()V

    iget-object v0, p0, LaA/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()F
    .registers 2

    invoke-direct {p0}, LaA/a;->g()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->t()F

    move-result v0

    return v0
.end method

.method public b(I)F
    .registers 3

    invoke-direct {p0}, LaA/a;->g()V

    iget-object v0, p0, LaA/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public c()F
    .registers 2

    invoke-direct {p0}, LaA/a;->g()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->u()F

    move-result v0

    return v0
.end method

.method public d()V
    .registers 2

    invoke-direct {p0}, LaA/a;->g()V

    iget-object v0, p0, LaA/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, LaA/a;->a:Landroid/view/MotionEvent;

    return-void
.end method
