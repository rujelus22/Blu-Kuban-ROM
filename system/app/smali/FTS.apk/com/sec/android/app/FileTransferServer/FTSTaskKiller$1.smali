.class Lcom/sec/android/app/FileTransferServer/FTSTaskKiller$1;
.super Ljava/lang/Object;
.source "FTSTaskKiller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferServer/FTSTaskKiller;->requestKillProcess(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/FTSTaskKiller;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/FTSTaskKiller;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/FTSTaskKiller$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSTaskKiller;

    iput-object p2, p0, Lcom/sec/android/app/FileTransferServer/FTSTaskKiller$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 39
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSTaskKiller$1;->val$context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 40
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSTaskKiller$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 45
    .local v4, name:Ljava/lang/String;
    :cond_12
    :goto_12
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 46
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 48
    .local v1, i:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 53
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x190

    if-lt v5, v6, :cond_3e

    .line 54
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/FTSTaskKiller$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_12

    .line 56
    :cond_3e
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_12
.end method