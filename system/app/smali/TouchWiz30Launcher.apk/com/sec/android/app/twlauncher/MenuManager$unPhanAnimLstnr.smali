.class Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "unPhanAnimLstnr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 2
    .parameter

    .prologue
    .line 4477
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4478
    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .registers 4
    .parameter "aAnim"

    .prologue
    .line 4493
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->getView()Landroid/view/View;

    move-result-object v0

    .line 4494
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v1, :cond_10

    .line 4495
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v0           #view:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 4497
    :cond_10
    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .registers 7
    .parameter "aAnim"

    .prologue
    const/4 v2, 0x0

    .line 4482
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->getDst()Landroid/graphics/PointF;

    move-result-object v0

    .line 4484
    .local v0, loc:Landroid/graphics/PointF;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4485
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->getView()Landroid/view/View;

    move-result-object v1

    .line 4486
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_23

    .line 4487
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/GLAnim;->setDst(Landroid/graphics/PointF;)V

    .line 4490
    .end local v1           #view:Landroid/view/View;
    :cond_23
    return-void
.end method
