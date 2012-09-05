.class Lcom/sec/android/app/twlauncher/Launcher$1;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1088
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    if-ne p1, v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$500(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1089
    :cond_c
    const-string v5, "Launcher"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "mReceiver ignored. Context: %x, Current Launcher: %x"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_34
    :goto_34
    return-void

    .line 1093
    :cond_35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1094
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 1097
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v6, "launcher.db"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    .line 1099
    .local v2, ret:Z
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleted a database file = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1102
    .end local v2           #ret:Z
    :cond_66
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 1103
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_USER_PRESENT mIsActive="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMenuManager.isOpened()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v5

    if-nez v5, :cond_34

    .line 1105
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    iget v6, v6, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto/16 :goto_34

    .line 1107
    :cond_c7
    const-string v5, "android.intent.action.WIDGETS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 1108
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 1109
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/Launcher;->access$900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v6

    const/4 v7, 0x0

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V
    invoke-static {v5, v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$1000(Lcom/sec/android/app/twlauncher/Launcher;Landroid/view/View;Landroid/widget/ListAdapter;)V

    goto/16 :goto_34

    .line 1111
    :cond_e2
    const-string v5, "android.intent.action.SHORTCUTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 1113
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 1114
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$1100(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto/16 :goto_34

    .line 1115
    :cond_f6
    const-string v5, "android.intent.action.WALLPAPER_SETTINGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 1116
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 1117
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$1200(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto/16 :goto_34

    .line 1123
    :cond_10a
    const-string v5, "com.android.samsungtest.AnswerLauncherDisplay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1124
    const-string v5, "SmdPba"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1125
    .local v3, smdpba:Ljava/lang/String;
    if-eqz v3, :cond_11c

    .line 1126
    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    .line 1127
    :cond_11c
    const-string v5, "UniqueNumber"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1128
    .local v4, uniquenumber:Ljava/lang/String;
    if-eqz v4, :cond_126

    .line 1129
    sput-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    .line 1135
    :cond_126
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    if-eqz v5, :cond_137

    .line 1136
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->invalidateIMSICache()V

    .line 1138
    :cond_137
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received factory mode info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34
.end method
