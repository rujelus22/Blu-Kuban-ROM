.class public LKf;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KixWebView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;LKe;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, LKf;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6d

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6d

    .line 106
    iget-object v0, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKg;

    move-result-object v0

    invoke-virtual {v0, p3}, LKg;->a(F)V

    .line 107
    iget-object v0, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 108
    iget-object v0, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LJW;

    move-result-object v0

    invoke-virtual {v0}, LJW;->b()V

    .line 110
    :cond_6b
    const/4 v0, 0x1

    .line 112
    :goto_6c
    return v0

    :cond_6d
    const/4 v0, 0x0

    goto :goto_6c
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    const-string v0, "KixWebView"

    const-string v1, "Scroll"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKg;

    move-result-object v0

    invoke-virtual {v0}, LKg;->a()V

    .line 119
    iget-object v0, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LJW;

    move-result-object v0

    invoke-virtual {v0}, LJW;->a()V

    .line 120
    iget-object v1, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    float-to-int v2, p3

    iget-object v0, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKF;

    move-result-object v0

    invoke-interface {v0}, LKF;->a()F

    move-result v0

    const/high16 v3, 0x3f80

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3f847ae147ae147bL

    cmpg-double v0, v3, v5

    if-gez v0, :cond_3d

    const/4 v0, 0x0

    :goto_38
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;II)V

    .line 122
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_3d
    float-to-int v0, p4

    goto :goto_38
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 127
    iget-object v1, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)Z

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKg;

    move-result-object v1

    invoke-virtual {v1}, LKg;->a()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 129
    iget-object v2, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKF;

    move-result-object v2

    invoke-interface {v2}, LKF;->d()I

    move-result v2

    .line 130
    iget-object v3, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v3}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKF;

    move-result-object v3

    invoke-interface {v3}, LKF;->a()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v2

    if-gt v1, v3, :cond_55

    .line 131
    iget-object v1, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)I

    move-result v1

    if-le v1, v0, :cond_4d

    .line 132
    iget-object v1, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    iget-object v2, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;I)V

    .line 134
    :cond_4d
    const-string v1, "KixWebView"

    const-string v2, "Tap -"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_54
    return v0

    .line 137
    :cond_55
    iget-object v3, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v3}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKF;

    move-result-object v3

    invoke-interface {v3}, LKF;->a()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5a

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_8d

    .line 139
    iget-object v1, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)I

    move-result v1

    iget-object v2, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKF;

    move-result-object v2

    invoke-interface {v2}, LKF;->c()I

    move-result v2

    if-ge v1, v2, :cond_85

    .line 140
    iget-object v1, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    iget-object v2, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;I)V

    .line 142
    :cond_85
    const-string v1, "KixWebView"

    const-string v2, "Tap +"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 146
    :cond_8d
    iget-object v0, p0, LKf;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LJV;

    move-result-object v0

    invoke-interface {v0}, LJV;->a()V

    .line 147
    const/4 v0, 0x0

    goto :goto_54
.end method
