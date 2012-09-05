.class Lcom/sec/android/app/twlauncher/AppShortcutZone$2;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 646
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 649
    .local v3, tag:Ljava/lang/Object;
    if-nez v3, :cond_7

    .line 669
    :cond_6
    :goto_6
    return-void

    .line 652
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    .line 653
    .local v2, mode:I
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_6

    instance-of v4, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v4, :cond_6

    move-object v1, p1

    .line 654
    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 655
    .local v1, menuItem:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v4

    if-nez v4, :cond_6

    move-object v0, v3

    .line 658
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 659
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    packed-switch v2, :pswitch_data_56

    .line 666
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_6

    .line 661
    :pswitch_3a
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_6

    .line 662
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    #getter for: Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    goto :goto_6

    .line 659
    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_3a
    .end packed-switch
.end method
