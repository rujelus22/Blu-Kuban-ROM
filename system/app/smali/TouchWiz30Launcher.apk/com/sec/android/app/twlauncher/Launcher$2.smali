.class Lcom/sec/android/app/twlauncher/Launcher$2;
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
    .line 1145
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    if-ne p1, v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$500(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1149
    :cond_c
    const-string v1, "Launcher"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "WallpaperChangedReceiver ignored. Context: %x, Current Launcher: %x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_34
    :goto_34
    return-void

    .line 1153
    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1156
    const-string v1, "Launcher"

    const-string v2, "ACTION_WALLPAPER_CHANGED broadcast received"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1159
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$2;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    goto :goto_34
.end method
