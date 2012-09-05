.class Lcom/android/settings/ASensorSettings$ASensorSettingsView;
.super Landroid/view/View;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ASensorSettingsView"
.end annotation


# instance fields
.field mRadius:I

.field mSX:I

.field mSY:I

.field mState:I

.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/ASensorSettings;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    .line 277
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    .line 271
    iget-object v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v0}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    .line 272
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    .line 278
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 281
    iput p1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    .line 282
    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .registers 7
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 311
    iget v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v3

    .line 312
    iget v0, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    aput v0, p1, v4

    .line 313
    const-string v0, "ASensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRect position[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const-wide/high16 v5, 0x4000

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, image:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5a

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    :goto_13
    iget v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    iget v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    iget v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    iget-object v5, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v5}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    const-string v1, "ASensorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw mSX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 322
    :cond_5a
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    sget v1, Lcom/android/settings/ASensorSettings;->mAniGapX:F

    sget v2, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sget v3, Lcom/android/settings/ASensorSettings;->mAniGapY:F

    sget v4, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    .line 324
    iget-object v1, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v1}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lcom/android/settings/ASensorSettings;->mAniCount:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {}, Lcom/android/settings/ASensorSettings;->access$900()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 325
    const-string v1, "ASensorSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw mRadius "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mRadius:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13
.end method

.method public setPoint(FF)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v6, 0x4000

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 286
    const-string v2, "ASensorSettings"

    const-string v3, "values are set for tablet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move v1, p1

    .line 288
    .local v1, temp:F
    move p1, p2

    .line 289
    move p2, v1

    .line 293
    .end local v1           #temp:F
    :cond_16
    const-string v2, "ASensorSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRect x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    float-to-double v2, p1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 295
    .local v0, lengthPoint:F
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_67

    .line 296
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float p1, v2, v0

    .line 297
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CIRCLE_RADIUS:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$800(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    div-float p2, v2, v0

    .line 299
    :cond_67
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSX:I

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 301
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    .line 308
    :goto_95
    return-void

    .line 304
    :cond_96
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->ICON_RADIUS:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$600(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->mSY:I

    goto :goto_95
.end method