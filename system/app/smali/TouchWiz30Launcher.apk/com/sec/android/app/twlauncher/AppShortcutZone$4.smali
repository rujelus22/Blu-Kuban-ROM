.class Lcom/sec/android/app/twlauncher/AppShortcutZone$4;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .registers 2
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 718
    const/16 v2, 0x17

    if-ne p2, v2, :cond_26

    .line 738
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 740
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_24

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v2, :cond_24

    move-object v0, v1

    .line 741
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 742
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 745
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_24
    const/4 v2, 0x1

    .line 749
    .end local v1           #tag:Ljava/lang/Object;
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method
