.class Lcom/sec/android/app/dlna/ui/AddinActivity$5;
.super Ljava/lang/Object;
.source "AddinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinActivity;->requestKillProcess(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    iput-object p2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$5;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 778
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$5;->val$context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 779
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 783
    .local v5, name:Ljava/lang/String;
    :cond_12
    :goto_12
    :try_start_12
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 785
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 786
    .local v2, i:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    .line 787
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x190

    if-lt v6, v7, :cond_44

    .line 788
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$5;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_3e} :catch_3f

    goto :goto_12

    .line 795
    .end local v2           #i:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_3f
    move-exception v1

    .line 796
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 798
    return-void

    .line 790
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_44
    :try_start_44
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_47} :catch_3f

    goto :goto_12
.end method
