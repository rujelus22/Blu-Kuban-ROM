.class Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopBinder"
.end annotation


# instance fields
.field private mAppAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private final mAppWidgets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mSAppWidgets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedApplications:Z

.field public mTerminate:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .parameter "launcher"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    .local p3, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    .local p4, sappWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    const/4 v6, 0x0

    .line 6350
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6344
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSkippedApplications:Z

    .line 6346
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    .line 6352
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 6353
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    .line 6356
    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    .line 6357
    .local v1, currentScreen:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6358
    .local v4, size:I
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    .line 6360
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 6361
    .local v5, ssize:I
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSAppWidgets:Ljava/util/LinkedList;

    .line 6363
    const/4 v2, 0x0

    .local v2, i:I
    :goto_30
    if-ge v2, v4, :cond_4a

    .line 6364
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 6365
    .local v0, appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget v6, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v6, v1, :cond_44

    .line 6366
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6363
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 6368
    :cond_44
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_41

    .line 6372
    .end local v0           #appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    if-ge v2, v5, :cond_65

    .line 6373
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 6374
    .local v3, sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v6, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v6, v1, :cond_5f

    .line 6375
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6372
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 6377
    :cond_5f
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_5c

    .line 6382
    .end local v3           #sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_65
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------> binding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " items "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " widgets "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " samsung app widgets"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6386
    return-void
.end method


# virtual methods
.method public continueBindingItems(I)V
    .registers 5
    .parameter "startPos"

    .prologue
    .line 6400
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------> continue binding items at offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6401
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6402
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 6438
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    .line 6439
    .local v0, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    if-eqz v1, :cond_f

    .line 6465
    :cond_e
    :goto_e
    return-void

    .line 6443
    :cond_f
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_40

    goto :goto_e

    .line 6445
    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->bindItems(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    invoke-static {v0, p0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$5900(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    goto :goto_e

    .line 6449
    :pswitch_1f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->bindApplications(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    invoke-static {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$6000(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    goto :goto_e

    .line 6453
    :pswitch_25
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->bindAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    invoke-static {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$6100(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    goto :goto_e

    .line 6457
    :pswitch_2b
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->isWidgetLoaded()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 6458
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSAppWidgets:Ljava/util/LinkedList;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->bindSamsungAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    invoke-static {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$6200(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    goto :goto_e

    .line 6460
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingSamsungAppWidgets()V

    goto :goto_e

    .line 6443
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_15
        :pswitch_25
        :pswitch_1f
        :pswitch_2b
    .end packed-switch
.end method

.method public skippedApplications()Z
    .registers 2

    .prologue
    .line 6433
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSkippedApplications:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public startBindingAppWidgets()V
    .registers 2

    .prologue
    .line 6422
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6423
    return-void
.end method

.method public startBindingApplications()Z
    .registers 4

    .prologue
    .line 6410
    const/4 v0, 0x0

    .line 6411
    .local v0, started:Z
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationsAdapter(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 6412
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v1, :cond_1b

    .line 6413
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSkippedApplications:Z

    .line 6418
    :goto_1a
    return v0

    .line 6415
    :cond_1b
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 6416
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public startBindingItems()V
    .registers 5

    .prologue
    .line 6390
    const-string v1, "Launcher"

    const-string v2, "------> start binding items"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6393
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    .line 6394
    .local v0, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-eqz v0, :cond_1d

    .line 6395
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->bindItems(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    invoke-static {v0, p0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$5900(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    .line 6396
    :cond_1d
    return-void
.end method

.method public startBindingSamsungAppWidgets()V
    .registers 2

    .prologue
    .line 6426
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6427
    return-void
.end method
