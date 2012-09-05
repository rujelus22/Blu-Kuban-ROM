.class public LaA/i;
.super Ljava/lang/Object;

# interfaces
.implements LaA/l;


# static fields
.field private static b:LaA/i;


# instance fields
.field protected a:LaA/m;

.field private c:Z

.field private d:F

.field private e:LaA/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaA/i;

    invoke-direct {v0}, LaA/i;-><init>()V

    sput-object v0, LaA/i;->b:LaA/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaA/i;->c:Z

    const/4 v0, 0x0

    iput v0, p0, LaA/i;->d:F

    return-void
.end method

.method public static a()LaA/i;
    .registers 1

    sget-object v0, LaA/i;->b:LaA/i;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;LaA/m;)V
    .registers 4

    iput-object p2, p0, LaA/i;->a:LaA/m;

    new-instance v0, LaA/j;

    invoke-direct {v0, p1, p0}, LaA/j;-><init>(Landroid/content/Context;LaA/l;)V

    iput-object v0, p0, LaA/i;->e:LaA/j;

    return-void
.end method

.method public a(Landroid/content/pm/PackageManager;)V
    .registers 3

    const-string v0, "android.hardware.touchscreen.multitouch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LaA/i;->c:Z

    return-void
.end method

.method public a(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, LaA/d;-><init>(ILaA/j;)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/z;)Z

    move-result v0

    return v0
.end method

.method public a(LaA/v;ZZ)Z
    .registers 7

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p3}, LaA/c;-><init>(ILaA/v;Z)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/t;)Z

    move-result v0

    goto :goto_3
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, LaA/i;->c:Z

    return v0
.end method

.method public b(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, LaA/d;-><init>(ILaA/j;)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/z;)Z

    move-result v0

    return v0
.end method

.method public b(LaA/v;ZZ)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, LaA/i;->a:LaA/m;

    new-instance v2, LaA/c;

    invoke-direct {v2, v0, p1, p3}, LaA/c;-><init>(ILaA/v;Z)V

    invoke-interface {v1, v2}, LaA/m;->a(LaA/t;)Z

    move-result v0

    goto :goto_3
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p0, p1}, LaA/i;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v1, p0, LaA/i;->e:LaA/j;

    invoke-virtual {v1, p1}, LaA/j;->a(Landroid/view/MotionEvent;)Z

    :cond_b
    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, LaA/i;->d:F

    return-void
.end method

.method public c(LaA/j;)V
    .registers 5

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, LaA/d;-><init>(ILaA/j;)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/z;)Z

    return-void
.end method

.method public c(LaA/v;ZZ)V
    .registers 7

    if-eqz p2, :cond_e

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p3}, LaA/c;-><init>(ILaA/v;Z)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/t;)Z

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p3}, LaA/c;-><init>(ILaA/v;Z)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/t;)Z

    goto :goto_d
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaA/i;->a:LaA/m;

    return-void
.end method

.method public d(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, LaA/b;-><init>(ILaA/j;)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/r;)Z

    move-result v0

    return v0
.end method

.method public e(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, LaA/b;-><init>(ILaA/j;)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/r;)Z

    move-result v0

    return v0
.end method

.method public f(LaA/j;)V
    .registers 5

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, LaA/b;-><init>(ILaA/j;)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/r;)Z

    return-void
.end method

.method public g(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/x;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, LaA/x;-><init>(ILaA/j;)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/r;)Z

    move-result v0

    return v0
.end method

.method public h(LaA/j;)Z
    .registers 5

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/x;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, LaA/x;-><init>(ILaA/j;)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/r;)Z

    move-result v0

    return v0
.end method

.method public i(LaA/j;)V
    .registers 5

    iget-object v0, p0, LaA/i;->a:LaA/m;

    new-instance v1, LaA/x;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, LaA/x;-><init>(ILaA/j;)V

    invoke-interface {v0, v1}, LaA/m;->a(LaA/r;)Z

    return-void
.end method
