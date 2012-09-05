.class Lcom/sec/android/app/twlauncher/MenuManager$makeVisibleLstnr;
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
    name = "makeVisibleLstnr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 2
    .parameter

    .prologue
    .line 4501
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$makeVisibleLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4502
    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .registers 4
    .parameter "aAnim"

    .prologue
    .line 4508
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->getView()Landroid/view/View;

    move-result-object v0

    .line 4509
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v1, :cond_10

    .line 4510
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v0           #view:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    .line 4512
    :cond_10
    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .registers 2
    .parameter "aAnim"

    .prologue
    .line 4505
    return-void
.end method
