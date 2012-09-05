.class Lcom/sec/android/app/twlauncher/Search$FromParentOriginAnimation;
.super Landroid/view/animation/Animation;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FromParentOriginAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Search;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Search;)V
    .registers 2
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Search$FromParentOriginAnimation;->this$0:Lcom/sec/android/app/twlauncher/Search;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Search;Lcom/sec/android/app/twlauncher/Search$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Search$FromParentOriginAnimation;-><init>(Lcom/sec/android/app/twlauncher/Search;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 8
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v4, 0x3f80

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search$FromParentOriginAnimation;->this$0:Lcom/sec/android/app/twlauncher/Search;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Search;->getLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    sub-float v3, v4, p1

    mul-float v0, v2, v3

    .line 390
    .local v0, dx:F
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search$FromParentOriginAnimation;->this$0:Lcom/sec/android/app/twlauncher/Search;

    #calls: Lcom/sec/android/app/twlauncher/Search;->getWidgetTop()I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Search;->access$400(Lcom/sec/android/app/twlauncher/Search;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    sub-float v3, v4, p1

    mul-float v1, v2, v3

    .line 391
    .local v1, dy:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 392
    return-void
.end method
