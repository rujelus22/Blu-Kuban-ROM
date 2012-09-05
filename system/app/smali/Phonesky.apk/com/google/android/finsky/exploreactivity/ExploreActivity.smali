.class public Lcom/google/android/finsky/exploreactivity/ExploreActivity;
.super Landroid/app/Activity;
.source "ExploreActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mButtonFirstTouchX:F

.field private mButtonFirstTouchY:F

.field private mButtonTouchDistTravelled:Lcom/google/android/finsky/exploreactivity/Vector;

.field private mButtonTouchDown:Z

.field private mCameraX:F

.field private mCameraY:F

.field private mConfigBorderThickness:F

.field private mConfigButtonTouchMaxDist:F

.field private mConfigImagePositionY:F

.field private mConfigImageSize:F

.field private mConfigInfoboxHeight:F

.field private mConfigInfoboxImagePositionX:F

.field private mConfigInfoboxMetadataPositionX:F

.field private mConfigInfoboxMetadataWidth:F

.field private mConfigInfoboxMetadtaHeight:F

.field private mConfigInfoboxTitleWidth:F

.field private mConfigInfoboxWidth:F

.field private mConfigNodeSize:F

.field private mConfigScreenDeacceleration:F

.field private mConfigScreenGravityMinDist:F

.field private mConfigScreenGravityStrength:F

.field private mConfigScreenMaxVelocity:F

.field private mConfigTitleHeight:F

.field private mConfigTitleMarginTop:F

.field private mConfigTitleWidth:F

.field private mConfigWhiteboxHeight:F

.field private mConfigWhiteboxWidth:F

.field private mCurrentPointer:I

.field private mFpsCounter:Lcom/google/android/finsky/exploreactivity/FPSCounter;

.field private mGlView:Landroid/opengl/GLSurfaceView;

.field private mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

.field private mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

.field private mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

.field private final mNodeToScreenCenter:Lcom/google/android/finsky/exploreactivity/Vector;

.field private final mPrevDeltaTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrevPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/Vector;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevTime:F

.field private mPrevTouchX:F

.field private mPrevTouchY:F

.field private final mScreenDeacceleration:Lcom/google/android/finsky/exploreactivity/Vector;

.field private final mScreenGravity:Lcom/google/android/finsky/exploreactivity/Vector;

.field private mScreenGravityOn:Z

.field private final mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

.field private mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

.field private mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

.field private mTouchDown:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-direct {v0, v1, v1}, Lcom/google/android/finsky/exploreactivity/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevDeltaTimes:Ljava/util/List;

    .line 96
    new-instance v0, Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-direct {v0, v1, v1}, Lcom/google/android/finsky/exploreactivity/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravity:Lcom/google/android/finsky/exploreactivity/Vector;

    .line 102
    new-instance v0, Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-direct {v0, v1, v1}, Lcom/google/android/finsky/exploreactivity/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenDeacceleration:Lcom/google/android/finsky/exploreactivity/Vector;

    .line 107
    new-instance v0, Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-direct {v0, v1, v1}, Lcom/google/android/finsky/exploreactivity/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeToScreenCenter:Lcom/google/android/finsky/exploreactivity/Vector;

    .line 110
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravityOn:Z

    .line 113
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDown:Z

    .line 122
    new-instance v0, Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-direct {v0, v1, v1}, Lcom/google/android/finsky/exploreactivity/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDistTravelled:Lcom/google/android/finsky/exploreactivity/Vector;

    return-void
.end method

.method private buttonClicked()V
    .registers 5

    .prologue
    .line 892
    const-string v0, "Button clicked, opening details page."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://market.android.com/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 899
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->startActivity(Landroid/content/Intent;)V

    .line 901
    return-void
.end method

.method private createContent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 282
    new-instance v1, Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-direct {v1}, Lcom/google/android/finsky/exploreactivity/NodeController;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    .line 285
    new-instance v1, Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-direct {v1}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    .line 288
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "DOC"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->createRoot(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;I)V

    .line 293
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 294
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    .line 295
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    .line 297
    return-void
.end method

.method private getCenterX()F
    .registers 3

    .prologue
    .line 855
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterY()F
    .registers 3

    .prologue
    .line 860
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private handleTouch(F)V
    .registers 12
    .parameter "deltaTime"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 657
    iget-boolean v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTouchDown:Z

    if-nez v3, :cond_f8

    .line 659
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    invoke-virtual {v3, v8}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->isTouchDown(I)Z

    move-result v3

    if-ne v3, v9, :cond_58

    .line 661
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 662
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevDeltaTimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 663
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    invoke-virtual {v3, v8}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->getTouchX(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchX:F

    .line 664
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    invoke-virtual {v3, v8}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->getTouchY(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchY:F

    .line 665
    iput-boolean v9, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTouchDown:Z

    .line 668
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->isDisplayingInfoBox()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 670
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchX:F

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchY:F

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->isTouchInBox(Lcom/google/android/finsky/exploreactivity/AppNode;FF)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 673
    iput-boolean v9, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDown:Z

    .line 675
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadButtonHighlight()V

    .line 679
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchX:F

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonFirstTouchX:F

    .line 680
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchY:F

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonFirstTouchY:F

    .line 750
    :cond_58
    :goto_58
    iget-boolean v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTouchDown:Z

    if-ne v3, v9, :cond_1bf

    .line 752
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    new-instance v4, Lcom/google/android/finsky/exploreactivity/Vector;

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchX:F

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchY:F

    invoke-direct {v4, v5, v6}, Lcom/google/android/finsky/exploreactivity/Vector;-><init>(FF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevDeltaTimes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_87

    .line 756
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 757
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevDeltaTimes:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 761
    :cond_87
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_1be

    .line 762
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v5

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/exploreactivity/Vector;->setX(F)V

    .line 764
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v5

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/exploreactivity/Vector;->setY(F)V

    .line 767
    const/4 v2, 0x0

    .line 768
    .local v2, sumDeltaTime:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e0
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevDeltaTimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1b6

    .line 769
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevDeltaTimes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    .line 688
    .end local v1           #i:I
    .end local v2           #sumDeltaTime:F
    :cond_f8
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->isTouchDown(I)Z

    move-result v3

    if-ne v3, v9, :cond_16b

    .line 692
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->getTouchX(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchX:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    .line 693
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->getTouchY(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchY:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    .line 696
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->getTouchX(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchX:F

    .line 697
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->getTouchY(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchY:F

    .line 700
    iget-boolean v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDown:Z

    if-eqz v3, :cond_58

    .line 703
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDistTravelled:Lcom/google/android/finsky/exploreactivity/Vector;

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchX:F

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonFirstTouchX:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->setX(F)V

    .line 704
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDistTravelled:Lcom/google/android/finsky/exploreactivity/Vector;

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchY:F

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonFirstTouchY:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->setY(F)V

    .line 706
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDistTravelled:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->len()F

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigButtonTouchMaxDist:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_58

    .line 708
    iput-boolean v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDown:Z

    .line 709
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->removeButtonHighlight()V

    goto/16 :goto_58

    .line 715
    :cond_16b
    iget-boolean v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDown:Z

    if-eqz v3, :cond_17d

    .line 717
    iput-boolean v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDown:Z

    .line 718
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->removeButtonHighlight()V

    .line 719
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->buttonClicked()V

    .line 722
    :cond_17d
    const/4 v0, 0x0

    .line 725
    .local v0, currentPointerChanged:Z
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_17f
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_1ab

    .line 727
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->isTouchDown(I)Z

    move-result v3

    if-ne v3, v9, :cond_1b3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    if-eq v1, v3, :cond_1b3

    .line 729
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 730
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->getTouchX(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchX:F

    .line 731
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;->getTouchY(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTouchY:F

    .line 732
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    .line 733
    const/4 v0, 0x1

    .line 739
    :cond_1ab
    if-nez v0, :cond_58

    .line 741
    iput v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    .line 742
    iput-boolean v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTouchDown:Z

    goto/16 :goto_58

    .line 725
    :cond_1b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_17f

    .line 772
    .end local v0           #currentPointerChanged:Z
    .restart local v2       #sumDeltaTime:F
    :cond_1b6
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    const/high16 v4, 0x3f80

    div-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 851
    .end local v1           #i:I
    .end local v2           #sumDeltaTime:F
    :cond_1be
    :goto_1be
    return-void

    .line 781
    :cond_1bf
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeToScreenCenter:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getCenterX()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getCenterNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/AppNode;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getCenterNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/AppNode;->getY()F

    move-result v5

    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getCenterY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/exploreactivity/Vector;->set(FF)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 785
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeToScreenCenter:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->len()F

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenGravityMinDist:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2d2

    .line 786
    iput-boolean v9, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravityOn:Z

    .line 792
    :goto_1f0
    iget-boolean v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravityOn:Z

    if-eqz v3, :cond_222

    .line 798
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeToScreenCenter:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->set(Lcom/google/android/finsky/exploreactivity/Vector;)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 799
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenDeacceleration:F

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/Vector;->len()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 800
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeToScreenCenter:Lcom/google/android/finsky/exploreactivity/Vector;

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenGravityStrength:F

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->add(Lcom/google/android/finsky/exploreactivity/Vector;)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 801
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 802
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->add(Lcom/google/android/finsky/exploreactivity/Vector;)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 807
    :cond_222
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->len()F

    move-result v3

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_29e

    .line 808
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenDeacceleration:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->set(Lcom/google/android/finsky/exploreactivity/Vector;)Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v3

    const/high16 v4, -0x4080

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    move-result-object v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenDeacceleration:F

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/Vector;->len()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 811
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2d6

    .line 812
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenDeacceleration:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->setX(F)V

    .line 814
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_272

    .line 815
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3, v7}, Lcom/google/android/finsky/exploreactivity/Vector;->setX(F)V

    .line 825
    :cond_272
    :goto_272
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_304

    .line 826
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenDeacceleration:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->setY(F)V

    .line 828
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_29e

    .line 829
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3, v7}, Lcom/google/android/finsky/exploreactivity/Vector;->setY(F)V

    .line 842
    :cond_29e
    :goto_29e
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->len()F

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenMaxVelocity:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2b8

    .line 843
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenMaxVelocity:F

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/Vector;->len()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->mul(F)Lcom/google/android/finsky/exploreactivity/Vector;

    .line 847
    :cond_2b8
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    .line 848
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    goto/16 :goto_1be

    .line 788
    :cond_2d2
    iput-boolean v8, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravityOn:Z

    goto/16 :goto_1f0

    .line 817
    :cond_2d6
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_272

    .line 818
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenDeacceleration:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->setX(F)V

    .line 820
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getX()F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_272

    .line 821
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3, v7}, Lcom/google/android/finsky/exploreactivity/Vector;->setX(F)V

    goto/16 :goto_272

    .line 831
    :cond_304
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_29e

    .line 832
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenDeacceleration:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/Vector;->setY(F)V

    .line 834
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/Vector;->getY()F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_29e

    .line 835
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v3, v7}, Lcom/google/android/finsky/exploreactivity/Vector;->setY(F)V

    goto/16 :goto_29e
.end method

.method private initConfigVariables()V
    .registers 6

    .prologue
    const/high16 v4, 0x4080

    const/high16 v3, 0x4000

    .line 317
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigButtonTouchMaxDist:F

    .line 319
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenMaxVelocity:F

    .line 322
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenGravityStrength:F

    .line 325
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenGravityMinDist:F

    .line 328
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigScreenDeacceleration:F

    .line 331
    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigBorderThickness:F

    .line 333
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigNodeSize:F

    .line 335
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    .line 338
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImagePositionY:F

    .line 341
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleMarginTop:F

    .line 344
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigNodeSize:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigBorderThickness:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleWidth:F

    .line 346
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleHeight:F

    .line 348
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxWidth:F

    .line 350
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxHeight:F

    .line 352
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxWidth:F

    neg-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxImagePositionX:F

    .line 354
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxWidth:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigBorderThickness:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxTitleWidth:F

    .line 356
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadataWidth:F

    .line 359
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadtaHeight:F

    .line 362
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxImagePositionX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxWidth:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadataWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadataWidth:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadataPositionX:F

    .line 366
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigNodeSize:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigBorderThickness:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigWhiteboxWidth:F

    .line 368
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigNodeSize:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigWhiteboxHeight:F

    .line 370
    return-void
.end method

.method private isTouchInBox(Lcom/google/android/finsky/exploreactivity/AppNode;FF)Z
    .registers 11
    .parameter "appNode"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x4000

    .line 874
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getX()F

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxWidth:F

    div-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 875
    .local v1, leftX:F
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getX()F

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxWidth:F

    div-float/2addr v5, v6

    add-float v2, v4, v5

    .line 876
    .local v2, rightX:F
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadtaHeight:F

    add-float v3, v4, v5

    .line 877
    .local v3, upY:F
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadtaHeight:F

    sub-float v0, v4, v5

    .line 880
    .local v0, downY:F
    cmpg-float v4, v1, p2

    if-gez v4, :cond_52

    cmpg-float v4, p2, v2

    if-gez v4, :cond_52

    .line 881
    cmpg-float v4, v0, p3

    if-gez v4, :cond_52

    cmpg-float v4, p3, v3

    if-gez v4, :cond_52

    .line 882
    const/4 v4, 0x1

    .line 886
    :goto_51
    return v4

    :cond_52
    const/4 v4, 0x0

    goto :goto_51
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/high16 v8, 0x4000

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    const-string v3, "onCreate"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    new-instance v3, Landroid/opengl/GLSurfaceView;

    invoke-direct {v3, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    .line 226
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 227
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->setContentView(Landroid/view/View;)V

    .line 230
    new-instance v3, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v3, v4}, Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMultiTouchHandler:Lcom/google/android/finsky/exploreactivity/MultiTouchHandler;

    .line 233
    new-instance v3, Lcom/google/android/finsky/exploreactivity/FPSCounter;

    invoke-direct {v3}, Lcom/google/android/finsky/exploreactivity/FPSCounter;-><init>()V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mFpsCounter:Lcom/google/android/finsky/exploreactivity/FPSCounter;

    .line 236
    new-instance v3, Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-direct {v3}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;-><init>()V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    .line 239
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 243
    .local v0, data:Ljava/lang/Object;
    if-nez v0, :cond_4c

    .line 244
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 245
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->createContent(Landroid/content/Intent;)V

    .line 266
    :cond_48
    :goto_48
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->initConfigVariables()V

    .line 267
    return-void

    :cond_4c
    move-object v1, v0

    .line 250
    check-cast v1, Lcom/google/android/finsky/exploreactivity/RestoreData;

    .line 251
    .local v1, dataRetrieved:Lcom/google/android/finsky/exploreactivity/RestoreData;
    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getNodeController()Lcom/google/android/finsky/exploreactivity/NodeController;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    .line 252
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraX1()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraX2()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraY1()F

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraY2()F

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->resetTexture(FFFF)V

    .line 256
    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraX1()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraX2()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraX1()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    .line 258
    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraY1()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraY2()F

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/RestoreData;->getCameraY1()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    .line 261
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 262
    .local v2, display:Landroid/view/Display;
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    .line 263
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    goto :goto_48
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 14
    .parameter "gl"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->hasRoot()Z

    move-result v0

    if-nez v0, :cond_9

    .line 647
    :goto_8
    return-void

    .line 465
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTime:F

    sub-float/2addr v0, v1

    const v1, 0x4e6e6b28

    div-float v9, v0, v1

    .line 466
    .local v9, deltaTime:F
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mPrevTime:F

    .line 469
    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-nez v0, :cond_29

    .line 470
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "deltaTime is 0"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 474
    :cond_29
    invoke-direct {p0, v9}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->handleTouch(F)V

    .line 477
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 478
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 479
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    add-float/2addr v4, v0

    const/high16 v5, 0x3f80

    const/high16 v6, -0x4080

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 483
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    add-float/2addr v4, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodes(FFFFF)Ljava/util/List;

    move-result-object v8

    .line 488
    .local v8, currentNodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/AppNode;>;"
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 491
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadQueuedTexture()V

    .line 494
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->beginBatch()V

    .line 498
    const/4 v10, 0x0

    .local v10, i:I
    :goto_83
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_f3

    .line 499
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->hasParent()Z

    move-result v0

    if-nez v0, :cond_98

    .line 498
    :goto_95
    add-int/lit8 v10, v10, 0x1

    goto :goto_83

    .line 502
    :cond_98
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->shouldUsePrimaryLineTexture()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 503
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindLineTexture(I)V

    .line 508
    :goto_aa
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getX()F

    move-result v0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getY()F

    move-result v1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getParent()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getX()F

    move-result v2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->getParent()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/AppNode;->getY()F

    move-result v3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/AppNode;->getAlpha()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/exploreactivity/PolygonLineHelper;->drawLine(FFFFFLcom/google/android/finsky/exploreactivity/TextureAtlas;Lcom/google/android/finsky/exploreactivity/SpriteBatcher;)V

    goto :goto_95

    .line 505
    :cond_ec
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindLineTexture(I)V

    goto :goto_aa

    .line 514
    :cond_f3
    const/4 v10, 0x0

    :goto_f4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_212

    .line 516
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->clearTranslationAndScale()V

    .line 517
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getX()F

    move-result v2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getY()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 518
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->getScale()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->scale(F)V

    .line 521
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getCenterNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v1

    if-ne v0, v1, :cond_1e8

    .line 523
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindWhiteBoxTexture()V

    .line 524
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigWhiteboxWidth:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigWhiteboxHeight:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v6

    const/high16 v7, 0x3f80

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    .line 541
    :goto_15b
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImagePositionY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 542
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindImageTexture(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 543
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v6

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/AppNode;->getAlpha()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    .line 550
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindTitleTexture(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 551
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleHeight:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleMarginTop:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 553
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleWidth:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleHeight:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v6

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/exploreactivity/AppNode;

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/AppNode;->getAlpha()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    .line 514
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_f4

    .line 532
    :cond_1e8
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindNoTexture()V

    .line 533
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigNodeSize:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigNodeSize:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v6

    const/high16 v7, 0x3f80

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    goto/16 :goto_15b

    .line 562
    :cond_212
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenVelocity:Lcom/google/android/finsky/exploreactivity/Vector;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/Vector;->len()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_225

    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTouchDown:Z

    if-nez v0, :cond_225

    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mScreenGravityOn:Z

    if-eqz v0, :cond_229

    :cond_225
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mButtonTouchDown:Z

    if-eqz v0, :cond_417

    :cond_229
    const/4 v11, 0x1

    .line 568
    .local v11, infoBoxOn:Z
    :goto_22a
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->isExpandingOrCollapsing()Z

    move-result v0

    if-eqz v0, :cond_23b

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->isDisplayingInfoBox()Z

    move-result v0

    if-nez v0, :cond_23b

    .line 572
    const/4 v11, 0x0

    .line 578
    :cond_23b
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getCenterNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v11}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->animateImage(Lcom/google/android/finsky/exploreactivity/AppNode;FZ)V

    .line 580
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->isDisplayingInfoBox()Z

    move-result v0

    if-eqz v0, :cond_40b

    .line 583
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->clearTranslationAndScale()V

    .line 584
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/AppNode;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 586
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/AppNode;->getScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->scale(F)V

    .line 587
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindNoTexture()V

    .line 588
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImagePositionY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 589
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    .line 590
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImagePositionY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 593
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindInfoBoxDescriptionTexture()V

    .line 594
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getSplitAnimationProgress()F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxHeight:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigBorderThickness:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 596
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxWidth:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxHeight:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxAlpha()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    .line 600
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getSplitAnimationProgress()F

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxHeight:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigBorderThickness:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 604
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindInfoBoxTexture()V

    .line 605
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getSplitAnimationProgress()F

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxHeight:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 607
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxWidth:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxHeight:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxAlpha()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    .line 613
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getScrollProgressPercentage()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindInfoBoxMetadataTexture(F)V

    .line 614
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadataPositionX:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImagePositionY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 615
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadataWidth:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadtaHeight:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxAlpha()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    .line 619
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxMetadataPositionX:F

    neg-float v1, v1

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImagePositionY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 622
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindImageTexture(Lcom/google/android/finsky/exploreactivity/AppNode;)V

    .line 623
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getImageAnimationProgessPercentage()F

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxImagePositionX:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImagePositionY:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 625
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxnode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/AppNode;->getAlpha()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    .line 632
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bindInfoBoxTitleTexture()V

    .line 633
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getImageAnimationProgessPercentage()F

    move-result v1

    neg-float v1, v1

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxImagePositionX:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigImageSize:F

    neg-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleHeight:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleMarginTop:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->translate(FF)V

    .line 636
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigInfoboxTitleWidth:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mConfigTitleHeight:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureLeftX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureTopY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureRightX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->getTextureBottomY()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mInfoBoxController:Lcom/google/android/finsky/exploreactivity/InfoBoxController;

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/InfoBoxController;->getInfoBoxAlpha()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->drawSprite(FFFFFFF)V

    .line 643
    :cond_40b
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;->endBatch()V

    .line 646
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mFpsCounter:Lcom/google/android/finsky/exploreactivity/FPSCounter;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/FPSCounter;->logFrame()V

    goto/16 :goto_8

    .line 562
    .end local v11           #infoBoxOn:Z
    :cond_417
    const/4 v11, 0x0

    goto/16 :goto_22a
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 275
    const-string v0, "onNewIntent"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->createContent(Landroid/content/Intent;)V

    .line 277
    return-void
.end method

.method public onPause()V
    .registers 7

    .prologue
    .line 434
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 435
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 436
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->resetTexture(FFFF)V

    .line 438
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 426
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 427
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 8

    .prologue
    .line 305
    const-string v0, "onRetainNonConfigurationInstance"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    new-instance v0, Lcom/google/android/finsky/exploreactivity/RestoreData;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraX:F

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCameraY:F

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v6}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/RestoreData;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;FFFF)V

    return-object v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 6
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 13
    .parameter "gl"
    .parameter "config"

    .prologue
    const/16 v9, 0x2601

    const/4 v8, 0x1

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 380
    const-string v0, "surface created"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    invoke-interface {p1, v2, v2, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 384
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v1

    invoke-interface {p1, v7, v7, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 385
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 386
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 387
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    const/high16 v6, -0x4080

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 390
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 391
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 394
    const/16 v0, 0xcf5

    invoke-interface {p1, v0, v8}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 397
    iput v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mCurrentPointer:I

    .line 398
    iput-boolean v7, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTouchDown:Z

    .line 401
    new-instance v0, Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-direct {v0, p1, p0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    .line 402
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0, v9, v9}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->setFilters(II)V

    .line 403
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->setTextureAtlas(Lcom/google/android/finsky/exploreactivity/TextureAtlas;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    const v1, 0x7f020040

    invoke-virtual {v0, v1, v8}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadLineTexture(II)V

    .line 406
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    const v1, 0x7f020041

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadLineTexture(II)V

    .line 407
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadDefaultImage(I)V

    .line 408
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadDefaultTitle(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->loadWhiteBox()V

    .line 410
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mTextureAtlas:Lcom/google/android/finsky/exploreactivity/TextureAtlas;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/TextureAtlas;->bind()V

    .line 413
    new-instance v0, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    const/16 v1, 0x258

    invoke-direct {v0, p1, v1}, Lcom/google/android/finsky/exploreactivity/SpriteBatcher;-><init>(Ljavax/microedition/khronos/opengles/GL10;I)V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mSpriteBatcher:Lcom/google/android/finsky/exploreactivity/SpriteBatcher;

    .line 416
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->getCenterNode()Lcom/google/android/finsky/exploreactivity/AppNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/AppNode;->loadInfoBox()V

    .line 418
    return-void
.end method
