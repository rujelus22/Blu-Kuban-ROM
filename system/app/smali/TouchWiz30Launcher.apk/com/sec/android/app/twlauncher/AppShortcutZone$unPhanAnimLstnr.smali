.class Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "unPhanAnimLstnr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .registers 2
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 400
    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .registers 4
    .parameter "aAnim"

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->getView()Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v1, :cond_10

    .line 408
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v0           #v:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 410
    :cond_10
    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .registers 2
    .parameter "aAnim"

    .prologue
    .line 403
    return-void
.end method
