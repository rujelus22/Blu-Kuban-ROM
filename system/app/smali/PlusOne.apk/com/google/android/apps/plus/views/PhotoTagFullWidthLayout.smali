.class public Lcom/google/android/apps/plus/views/PhotoTagFullWidthLayout;
.super Landroid/widget/LinearLayout;
.source "PhotoTagFullWidthLayout.java"


# static fields
.field private static sWidthAdjust:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PhotoTagFullWidthLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x7f0c00a7

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoTagFullWidthLayout;->sWidthAdjust:Ljava/lang/Integer;

    if-nez v3, :cond_1e

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagFullWidthLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 37
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 39
    .local v0, paddingLeft:I
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 41
    .local v1, paddingRight:I
    add-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/views/PhotoTagFullWidthLayout;->sWidthAdjust:Ljava/lang/Integer;

    .line 43
    .end local v0           #paddingLeft:I
    .end local v1           #paddingRight:I
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1e
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagFullWidthLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 52
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 53
    .local v1, displayWidth:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoTagFullWidthLayout;->sWidthAdjust:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagFullWidthLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/PhotoTagFullWidthLayout;->setMeasuredDimension(II)V

    .line 54
    return-void
.end method
