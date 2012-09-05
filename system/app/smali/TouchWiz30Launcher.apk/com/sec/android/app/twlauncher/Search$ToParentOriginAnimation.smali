.class Lcom/sec/android/app/twlauncher/Search$ToParentOriginAnimation;
.super Landroid/view/animation/Animation;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToParentOriginAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Search;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Search;)V
    .registers 2
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Search$ToParentOriginAnimation;->this$0:Lcom/sec/android/app/twlauncher/Search;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Search;Lcom/sec/android/app/twlauncher/Search$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Search$ToParentOriginAnimation;-><init>(Lcom/sec/android/app/twlauncher/Search;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 377
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search$ToParentOriginAnimation;->this$0:Lcom/sec/android/app/twlauncher/Search;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Search;->getLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v0, v2, p1

    .line 378
    .local v0, dx:F
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search$ToParentOriginAnimation;->this$0:Lcom/sec/android/app/twlauncher/Search;

    #calls: Lcom/sec/android/app/twlauncher/Search;->getWidgetTop()I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Search;->access$400(Lcom/sec/android/app/twlauncher/Search;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v1, v2, p1

    .line 379
    .local v1, dy:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 380
    return-void
.end method
