.class Lcom/sec/android/app/twlauncher/MenuManager$4;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .registers 2
    .parameter

    .prologue
    .line 3382
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "aView"

    .prologue
    .line 3384
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 3385
    .local v3, tag:Ljava/lang/Object;
    if-nez v3, :cond_7

    .line 3454
    :cond_6
    :goto_6
    return-void

    .line 3388
    :cond_7
    instance-of v5, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v5, :cond_14

    move-object v4, p1

    .line 3389
    check-cast v4, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3390
    .local v4, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3394
    .end local v4           #view:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_14
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v5, :cond_46

    move-object v1, v3

    .line 3395
    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 3396
    .local v1, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget v5, v5, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v5, :pswitch_data_7a

    .line 3403
    iget-boolean v5, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    if-nez v5, :cond_6

    .line 3406
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3407
    .local v2, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3410
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #calls: Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    invoke-static {v5, v2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$700(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    goto :goto_6

    .line 3400
    .end local v2           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :pswitch_40
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #calls: Lcom/sec/android/app/twlauncher/MenuManager;->removeFolder(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    invoke-static {v5, p1, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$900(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    goto :goto_6

    .line 3413
    .end local v1           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_46
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_6

    move-object v0, v3

    .line 3414
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3415
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget v5, v5, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v5, :pswitch_data_80

    .line 3451
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_6

    .line 3417
    :pswitch_60
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3445
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    goto :goto_6

    .line 3396
    :pswitch_data_7a
    .packed-switch 0x2
        :pswitch_40
    .end packed-switch

    .line 3415
    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_60
    .end packed-switch
.end method
