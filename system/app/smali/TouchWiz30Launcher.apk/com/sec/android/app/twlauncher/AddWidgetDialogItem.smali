.class Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;
.super Landroid/widget/LinearLayout;
.source "AddWidgetDialogItem.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;


# instance fields
.field private mFrame:Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;

.field private mGroupingAnimator:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mGroupingPosition:I

.field private mIcon:Landroid/widget/ImageView;

.field private mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mLabelSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field private mLabelView:Landroid/widget/TextView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhantom:Z

.field private mSamsungInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mGroupingPosition:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 35
    return-void
.end method


# virtual methods
.method public clearPhantom()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mPhantom:Z

    .line 52
    return-void
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const v4, 0x3e4ccccd

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 137
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mPhantom:Z

    if-eqz v0, :cond_e

    .line 138
    invoke-virtual {p1, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 141
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getExpandedFactor()F

    move-result v6

    .line 143
    .local v6, factor:F
    cmpl-float v0, v6, v2

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mGroupingPosition:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1d

    move v0, v7

    .line 164
    :goto_1c
    return v0

    .line 146
    :cond_1d
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mGroupingPosition:I

    mul-int/lit8 v0, v0, -0x14

    int-to-float v0, v0

    sub-float v1, v3, v6

    mul-float/2addr v0, v1

    invoke-virtual {p1, v2, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    .line 147
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mGroupingPosition:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float v1, v3, v6

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mFrame:Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 151
    invoke-virtual {p1, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mGroupingAnimator:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mGroupingAnimator:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 162
    const/4 v0, 0x1

    goto :goto_1c

    :cond_7e
    move v0, v7

    .line 164
    goto :goto_1c
.end method

.method public drawReflection(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 184
    return-void
.end method

.method public getDragView()Landroid/view/View;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getExpandedFactor()F
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mGroupingAnimator:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v0, :cond_f

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 193
    const/high16 v0, 0x3f80

    .line 198
    :goto_c
    return v0

    .line 195
    :cond_d
    const/4 v0, 0x0

    goto :goto_c

    .line 198
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mGroupingAnimator:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get(J)F

    move-result v0

    goto :goto_c
.end method

.method public getInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public getLayoutWidth(I)F
    .registers 4
    .parameter "padding"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getExpandedFactor()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getSamsungAppWidgetInfo()Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mSamsungInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    return-object v0
.end method

.method public isSamsungAppWidget()Z
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mSamsungInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onFinishInflate()V
    .registers 4

    .prologue
    .line 39
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mIcon:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelView:Landroid/widget/TextView;

    .line 41
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelView:Landroid/widget/TextView;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 44
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mFrame:Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;

    .line 45
    return-void
.end method

.method public setInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelView:Landroid/widget/TextView;

    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 119
    :try_start_9
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 120
    .local v1, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mIcon:Landroid/widget/ImageView;

    iget v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_20} :catch_21

    .line 126
    .end local v1           #r:Landroid/content/res/Resources;
    :goto_20
    return-void

    .line 122
    :catch_21
    move-exception v0

    .line 123
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 124
    const-string v2, "AddWidgetDialogItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find icon resource in package for AppWidget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public setPhantom()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mPhantom:Z

    .line 49
    return-void
.end method

.method public setSamsungAppWidgetInfo(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .registers 9
    .parameter "info"

    .prologue
    .line 66
    iget-object v2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget v4, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetPreview:I

    if-eqz v4, :cond_1e

    .line 68
    const/4 v3, 0x0

    .line 70
    .local v3, packageContext:Landroid/content/Context;
    :try_start_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_31

    move-result-object v3

    .line 76
    :goto_12
    if-eqz v3, :cond_1e

    .line 78
    :try_start_14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetPreview:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_1d} :catch_36

    move-result-object v2

    .line 86
    .end local v3           #packageContext:Landroid/content/Context;
    :cond_1e
    :goto_1e
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v4, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_3b

    .line 90
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelView:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_2e
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mSamsungInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 94
    return-void

    .line 72
    .restart local v3       #packageContext:Landroid/content/Context;
    :catch_31
    move-exception v1

    .line 73
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_12

    .line 79
    .end local v1           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_36
    move-exception v0

    .line 81
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1e

    .line 92
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v3           #packageContext:Landroid/content/Context;
    :cond_3b
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->mLabelView:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e
.end method
