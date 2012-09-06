.class public Lcom/google/android/apps/plus/phone/ScreenMetrics;
.super Ljava/lang/Object;
.source "ScreenMetrics.java"


# static fields
.field private static sInstance:Lcom/google/android/apps/plus/phone/ScreenMetrics;


# instance fields
.field public final itemMargin:I

.field public final longDimension:I

.field public final screenDisplayType:I

.field public final shortDimension:I


# direct methods
.method private constructor <init>(IIII)V
    .registers 5
    .parameter "shortDimension"
    .parameter "longDimension"
    .parameter "screenDisplayType"
    .parameter "itemMargin"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->shortDimension:I

    .line 34
    iput p2, p0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    .line 35
    iput p3, p0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    .line 36
    iput p4, p0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;
    .registers 14
    .parameter "context"

    .prologue
    .line 40
    sget-object v11, Lcom/google/android/apps/plus/phone/ScreenMetrics;->sInstance:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    if-eqz v11, :cond_7

    .line 41
    sget-object v11, Lcom/google/android/apps/plus/phone/ScreenMetrics;->sInstance:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    .line 71
    :goto_6
    return-object v11

    .line 44
    :cond_7
    const-string v11, "window"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 46
    .local v10, winMgr:Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5a

    const/4 v4, 0x1

    .line 52
    .local v4, landscape:Z
    :goto_29
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .local v9, widthPixels:I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 55
    .local v2, heightPixels:I
    if-eqz v9, :cond_38

    if-eqz v2, :cond_38

    iget v11, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_5c

    .line 57
    :cond_38
    const/4 v7, 0x0

    .line 65
    .local v7, screenDisplayType:I
    :goto_39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 66
    .local v6, res:Landroid/content/res/Resources;
    const v11, 0x7f0d0208

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 67
    .local v5, marginPercent:F
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    float-to-int v3, v11

    .line 69
    .local v3, itemMargin:I
    new-instance v12, Lcom/google/android/apps/plus/phone/ScreenMetrics;

    if-eqz v4, :cond_76

    move v11, v2

    :goto_50
    if-eqz v4, :cond_78

    .end local v9           #widthPixels:I
    :goto_52
    invoke-direct {v12, v11, v9, v7, v3}, Lcom/google/android/apps/plus/phone/ScreenMetrics;-><init>(IIII)V

    sput-object v12, Lcom/google/android/apps/plus/phone/ScreenMetrics;->sInstance:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    .line 71
    sget-object v11, Lcom/google/android/apps/plus/phone/ScreenMetrics;->sInstance:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    goto :goto_6

    .line 49
    .end local v2           #heightPixels:I
    .end local v3           #itemMargin:I
    .end local v4           #landscape:Z
    .end local v5           #marginPercent:F
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #screenDisplayType:I
    :cond_5a
    const/4 v4, 0x0

    goto :goto_29

    .line 59
    .restart local v2       #heightPixels:I
    .restart local v4       #landscape:Z
    .restart local v9       #widthPixels:I
    :cond_5c
    int-to-float v11, v9

    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v8, v11, v12

    .line 60
    .local v8, widthDips:F
    int-to-float v11, v2

    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v11, v12

    .line 61
    .local v1, heightDips:F
    const/high16 v11, 0x4416

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_74

    const/high16 v11, 0x4416

    cmpl-float v11, v1, v11

    if-ltz v11, :cond_74

    const/4 v7, 0x1

    .restart local v7       #screenDisplayType:I
    :goto_73
    goto :goto_39

    .end local v7           #screenDisplayType:I
    :cond_74
    const/4 v7, 0x0

    goto :goto_73

    .end local v1           #heightDips:F
    .end local v8           #widthDips:F
    .restart local v3       #itemMargin:I
    .restart local v5       #marginPercent:F
    .restart local v6       #res:Landroid/content/res/Resources;
    .restart local v7       #screenDisplayType:I
    :cond_76
    move v11, v9

    .line 69
    goto :goto_50

    :cond_78
    move v9, v2

    goto :goto_52
.end method
