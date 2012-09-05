.class Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;
.super Ljava/lang/Object;
.source "SamsungWidgetPackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungWidgetsLoader"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 828
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    .line 830
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mContext:Ljava/lang/ref/WeakReference;

    .line 831
    return-void
.end method


# virtual methods
.method isRunning()Z
    .registers 2

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 845
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 846
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 847
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_11

    .line 850
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    .line 892
    :goto_10
    return-void

    .line 854
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #calls: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadWidgets(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v6, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 855
    .local v5, loadWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_1c

    .line 856
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    goto :goto_10

    .line 860
    :cond_1c
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 862
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 863
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    if-eqz v6, :cond_46

    .line 882
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_39
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    if-nez v6, :cond_43

    .line 883
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    const/4 v7, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z
    invoke-static {v6, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$402(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Z)Z

    .line 890
    :cond_43
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    goto :goto_10

    .line 865
    .restart local v3       #info:Landroid/content/pm/ResolveInfo;
    :cond_46
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #calls: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    invoke-static {v6, v0, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v4

    .line 866
    .local v4, item:[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-eqz v4, :cond_29

    .line 867
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4f
    array-length v6, v4

    if-ge v1, v6, :cond_29

    .line 868
    aget-object v6, v4, v1

    if-eqz v6, :cond_6c

    .line 870
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sec.android.widgetapp.stockclock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 872
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #calls: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadYahooWidgetForCsc()Z
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 867
    :cond_6c
    :goto_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 875
    :cond_6f
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c
.end method

.method stop()V
    .registers 2

    .prologue
    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    .line 835
    return-void
.end method
