.class Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dragAnimLstnr"
.end annotation


# instance fields
.field private mAnimView:Landroid/view/View;

.field private mDragInfo:Ljava/lang/Object;

.field private mSource:Lcom/sec/android/app/twlauncher/DragSource;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter "aAnimView"
    .parameter "aSource"
    .parameter "aDragInfo"

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2086
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mAnimView:Landroid/view/View;

    .line 2087
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 2088
    iput-object p4, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mDragInfo:Ljava/lang/Object;

    .line 2089
    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/DragAnimation;FF)V
    .registers 6
    .parameter "aAnim"
    .parameter "aX"
    .parameter "aY"

    .prologue
    const/4 v1, 0x0

    .line 2095
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mAnimView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2096
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mAnimView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIsDragging(Z)V

    .line 2097
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;->mDragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalModeDelayedIfNeeded(Ljava/lang/Object;)Z

    .line 2098
    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/DragAnimation;)V
    .registers 2
    .parameter "aAnim"

    .prologue
    .line 2092
    return-void
.end method
