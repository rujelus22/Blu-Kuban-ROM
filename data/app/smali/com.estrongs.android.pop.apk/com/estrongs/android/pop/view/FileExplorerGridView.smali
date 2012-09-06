.class public Lcom/estrongs/android/pop/view/FileExplorerGridView;
.super Landroid/widget/GridView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/GridView;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/Paint;

.field private i:F

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->d:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->f:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->h:Landroid/graphics/Paint;

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->j:I

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->k:I

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->l:I

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c()V

    iput-object p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->d:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->f:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->h:Landroid/graphics/Paint;

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->j:I

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->k:I

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->l:I

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c()V

    iput-object p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->d:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->f:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->h:Landroid/graphics/Paint;

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->j:I

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->k:I

    iput v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->l:I

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c()V

    iput-object p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a:Landroid/content/Context;

    return-void
.end method

.method private c()V
    .registers 4

    const/4 v2, 0x1

    const/16 v1, 0xff

    invoke-virtual {p0, p0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setVerticalScrollBarEnabled(Z)V

    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setScrollBarStyle(I)V

    invoke-virtual {p0, p0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    const/high16 v0, 0x4188

    iget v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->i:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(F)V
    .registers 5

    iput p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->i:F

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f666666

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b:I

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->d:Z

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b:I

    return v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c:Z

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->e:Z

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->f:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->g:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const v1, 0x7f09016c

    const v2, 0x7f0900e3

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->d:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->e:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->f:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->g:Z

    if-eqz v0, :cond_5c

    :cond_1e
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/sdcard/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Z

    move-result v0

    if-nez v0, :cond_5d

    move v0, v1

    :goto_3d
    if-eq v0, v3, :cond_5c

    iget-object v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5c
    return-void

    :cond_5d
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->d:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/sdcard/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Z

    move-result v0

    if-nez v0, :cond_7d

    move v0, v1

    goto :goto_3d

    :cond_7d
    const v0, 0x7f0900e2

    goto :goto_3d

    :cond_81
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->f:Z

    if-eqz v0, :cond_89

    const v0, 0x7f090116

    goto :goto_3d

    :cond_89
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->g:Z

    if-eqz v0, :cond_8f

    move v0, v2

    goto :goto_3d

    :cond_8f
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c:Z

    if-nez v0, :cond_95

    move v0, v2

    goto :goto_3d

    :cond_95
    move v0, v3

    goto :goto_3d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/ff;

    iput p3, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b:I

    if-eqz v0, :cond_d

    :try_start_a
    invoke-virtual {v0, p3}, Lcom/estrongs/android/pop/view/ff;->d(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iput p3, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b:I

    const/4 v0, 0x0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iput p3, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->j:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->k:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->l:I

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_25
    return v3

    :cond_26
    const/4 v1, 0x2

    if-ne v0, v1, :cond_84

    iget v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->j:I

    if-nez v0, :cond_84

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->k:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->l:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    iget v2, v2, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a:I

    if-gt v0, v2, :cond_5d

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    iget v2, v2, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a:I

    if-gt v1, v2, :cond_5d

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25

    :cond_5d
    if-lt v0, v1, :cond_71

    iput v3, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->j:I

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25

    :cond_71
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->j:I

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25

    :cond_84
    iget v0, p0, Lcom/estrongs/android/pop/view/FileExplorerGridView;->j:I

    if-ne v0, v3, :cond_92

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25

    :cond_92
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_25
.end method
