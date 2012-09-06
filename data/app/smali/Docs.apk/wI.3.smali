.class public LwI;
.super Ljava/lang/Object;
.source "DisplayContextImpl.java"

# interfaces
.implements LwH;


# instance fields
.field private final a:F

.field private final a:Landroid/content/Context;

.field private final a:Landroid/text/Editable;

.field private final a:LyJ;

.field private final a:LzH;

.field private final a:Z

.field private b:F

.field private final c:F

.field private final d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;LzH;Landroid/text/Editable;FFFZLyJ;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, LwI;->a:Landroid/content/Context;

    .line 37
    iput-object p3, p0, LwI;->a:Landroid/text/Editable;

    .line 38
    iput-object p2, p0, LwI;->a:LzH;

    .line 39
    iput p5, p0, LwI;->c:F

    .line 40
    iput p6, p0, LwI;->d:F

    .line 41
    iput-boolean p7, p0, LwI;->a:Z

    .line 42
    iput-object p8, p0, LwI;->a:LyJ;

    .line 47
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 49
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x4290

    div-float/2addr v0, v1

    iput v0, p0, LwI;->a:F

    .line 51
    iput p4, p0, LwI;->b:F

    .line 52
    return-void
.end method

.method private a(F)F
    .registers 4
    .parameter

    .prologue
    .line 80
    iget v0, p0, LwI;->d:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, LwI;->c:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a()F
    .registers 3

    .prologue
    .line 61
    iget v0, p0, LwI;->a:F

    iget v1, p0, LwI;->b:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, LwI;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, LwI;->a:Landroid/text/Editable;

    return-object v0
.end method

.method public a()LyJ;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, LwI;->a:LyJ;

    return-object v0
.end method

.method public a()LzH;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, LwI;->a:LzH;

    return-object v0
.end method

.method public a(F)V
    .registers 3
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, LwI;->a(F)F

    move-result v0

    iput v0, p0, LwI;->b:F

    .line 77
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, LwI;->a:Z

    return v0
.end method

.method public b()F
    .registers 2

    .prologue
    .line 85
    iget v0, p0, LwI;->b:F

    return v0
.end method
