.class public Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "TwRemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;,
        Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static final sDefaultCacheSize:I = 0x28

.field private static final sDefaultLoadingViewHeight:I = 0x32

.field private static final sDefaultMessageType:I = 0x0

.field private static final sUnbindServiceDelay:I = 0x1388

.field private static final sUnbindServiceMessageType:I = 0x1


# instance fields
.field private final mAppWidgetId:I

.field private mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainQueue:Landroid/os/Handler;

.field private mNotifyDataSetChangedAfterOnServiceConnected:Z

.field private mRequestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field private mWorkerQueue:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;)V
    .registers 6
    .parameter "context"
    .parameter "intent"
    .parameter "callback"

    .prologue
    .line 717
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 718
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mContext:Landroid/content/Context;

    .line 719
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    .line 720
    const-string v0, "remoteAdapterAppWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mAppWidgetId:I

    .line 721
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 722
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_25

    .line 723
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null Intent must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_25
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mRequestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    .line 728
    const-string v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 729
    const-string v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 733
    :cond_39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteViewsCache-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    .line 734
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 735
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    .line 736
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    .line 739
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v1, 0x28

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 740
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    .line 741
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    .line 742
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->requestBindService()Z

    .line 743
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->onNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->updateRemoteViews(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mRequestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->updateTemporaryMetaData()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V

    return-void
.end method

.method private enqueueDeferredUnbindServiceMessage()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1128
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1130
    return-void
.end method

.method private getConvertViewTypeId(Landroid/view/View;)I
    .registers 5
    .parameter "convertView"

    .prologue
    .line 925
    const/4 v1, -0x1

    .line 926
    .local v1, typeId:I
    if-eqz p1, :cond_12

    .line 927
    const v2, 0x1020239

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 928
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_12

    .line 929
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 932
    :cond_12
    return v1
.end method

.method private loadNextIndexInBackground()V
    .registers 3

    .prologue
    .line 757
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$1;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    return-void
.end method

.method private onNotifyDataSetChanged()V
    .registers 6

    .prologue
    .line 1043
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 1045
    .local v1, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_6
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_41

    .line 1058
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    .line 1059
    :try_start_c
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 1060
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_5f

    .line 1063
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->updateTemporaryMetaData()V

    .line 1066
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$4;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1079
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 1080
    :goto_22
    return-void

    .line 1046
    :catch_23
    move-exception v0

    .line 1047
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1052
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_41
    move-exception v0

    .line 1053
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1060
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_5f
    move-exception v2

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method private processException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "method"
    .parameter "e"

    .prologue
    .line 785
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 790
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 791
    :try_start_2d
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 792
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_45

    .line 793
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 794
    :try_start_34
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 795
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_48

    .line 796
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$2;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 802
    return-void

    .line 792
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1

    .line 795
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private requestBindService()Z
    .registers 5

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1135
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mAppWidgetId:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->bind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1139
    :cond_13
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1140
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method private updateRemoteViews(IZ)V
    .registers 15
    .parameter "position"
    .parameter "isRequested"

    .prologue
    .line 834
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_9

    .line 877
    :goto_8
    return-void

    .line 835
    :cond_9
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v8

    .line 838
    .local v8, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    const/4 v3, 0x0

    .line 839
    .local v3, remoteViews:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    const-wide/16 v4, 0x0

    .line 841
    .local v4, itemId:J
    :try_start_12
    invoke-interface {v8, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    move-object v3, v0

    .line 842
    invoke-interface {v8, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1d} :catch_73

    move-result-wide v4

    .line 854
    if-nez v3, :cond_9c

    .line 858
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in updateRemoteViews("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " null RemoteViews "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "returned from RemoteViewsFactory."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 843
    :catch_4b
    move-exception v7

    .line 844
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in updateRemoteViews("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 849
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_73
    move-exception v7

    .line 850
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in updateRemoteViews("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 862
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_9c
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v11

    .line 864
    :try_start_9f
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILcom/sec/android/touchwiz/widget/TwRemoteViews;JZ)V

    .line 868
    move-object v9, v3

    .line 869
    .local v9, rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v1

    iget v10, v1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 870
    .local v10, typeId:I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;

    invoke-direct {v2, p0, p1, v9, v10}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$3;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;ILcom/sec/android/touchwiz/widget/TwRemoteViews;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 876
    monitor-exit v11

    goto/16 :goto_8

    .end local v9           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v10           #typeId:I
    :catchall_bc
    move-exception v1

    monitor-exit v11
    :try_end_be
    .catchall {:try_start_9f .. :try_end_be} :catchall_bc

    throw v1
.end method

.method private updateTemporaryMetaData()V
    .registers 10

    .prologue
    .line 805
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v2

    .line 810
    .local v2, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_6
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v4

    .line 811
    .local v4, hasStableIds:Z
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v7

    .line 812
    .local v7, viewTypeCount:I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v0

    .line 813
    .local v0, count:I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 814
    .local v5, loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    const/4 v3, 0x0

    .line 815
    .local v3, firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    if-lez v0, :cond_24

    if-nez v5, :cond_24

    .line 816
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .end local v3           #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    check-cast v3, Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    .line 818
    .restart local v3       #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    :cond_24
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    .line 819
    .local v6, tmpMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v6
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2b} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_2b} :catch_42

    .line 820
    :try_start_2b
    iput-boolean v4, v6, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 822
    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 823
    iput v0, v6, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 824
    invoke-virtual {v6, v5, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Lcom/sec/android/touchwiz/widget/TwRemoteViews;Lcom/sec/android/touchwiz/widget/TwRemoteViews;)V

    .line 825
    monitor-exit v6

    .line 831
    .end local v0           #count:I
    .end local v3           #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v4           #hasStableIds:Z
    .end local v5           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v6           #tmpMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7           #viewTypeCount:I
    :goto_37
    return-void

    .line 825
    .restart local v0       #count:I
    .restart local v3       #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v4       #hasStableIds:Z
    .restart local v5       #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v6       #tmpMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v7       #viewTypeCount:I
    :catchall_38
    move-exception v8

    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v8
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3b} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3b} :catch_42

    .line 826
    .end local v0           #count:I
    .end local v3           #firstView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v4           #hasStableIds:Z
    .end local v5           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v6           #tmpMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7           #viewTypeCount:I
    :catch_3b
    move-exception v1

    .line 827
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_37

    .line 828
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_42
    move-exception v1

    .line 829
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_37
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    .line 749
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 752
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 754
    return-void

    .line 752
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 884
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 885
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 886
    :try_start_7
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->count:I

    monitor-exit v0

    return v1

    .line 887
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 892
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 896
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 897
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 898
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v0

    iget-wide v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    monitor-exit v2

    .line 900
    :goto_14
    return-wide v0

    :cond_15
    const-wide/16 v0, 0x0

    monitor-exit v2

    goto :goto_14

    .line 901
    :catchall_19
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getItemViewType(I)I
    .registers 6
    .parameter "position"

    .prologue
    .line 905
    const/4 v1, 0x0

    .line 906
    .local v1, typeId:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    .line 907
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 908
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v2

    iget v1, v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 912
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_25

    .line 914
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 915
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 916
    :try_start_1c
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v2

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_28

    .end local v0           #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    :goto_21
    return v2

    .line 910
    :cond_22
    const/4 v2, 0x0

    :try_start_23
    monitor-exit v3

    goto :goto_21

    .line 912
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v2

    .line 917
    .restart local v0       #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getRemoteViewsServiceIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 939
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsRemoteViewAt(I)Z

    move-result v10

    .line 940
    .local v10, isInCache:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v9

    .line 941
    .local v9, isConnected:Z
    const/4 v7, 0x0

    .line 943
    .local v7, hasNewItems:Z
    if-nez v10, :cond_85

    if-nez v9, :cond_85

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->requestBindService()Z

    .line 952
    :goto_27
    if-eqz v10, :cond_126

    .line 953
    const/4 v4, 0x0

    .line 954
    .local v4, convertViewChild:Landroid/view/View;
    const/4 v5, 0x0

    .line 955
    .local v5, convertViewTypeId:I
    const/4 v11, 0x0

    .line 957
    .local v11, layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_166

    .line 958
    move-object/from16 v0, p2

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object v11, v0

    .line 959
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 960
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->getConvertViewTypeId(Landroid/view/View;)I

    move-result v5

    move-object v12, v11

    .line 965
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v12, layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_48
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 966
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViews;

    move-result-object v16

    .line 967
    .local v16, rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v8

    .line 968
    .local v8, indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->isRequested:Z

    .line 969
    iget v0, v8, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    move/from16 v17, v0
    :try_end_72
    .catchall {:try_start_7 .. :try_end_72} :catchall_119

    .line 973
    .local v17, typeId:I
    if-eqz v12, :cond_be

    .line 974
    move/from16 v0, v17

    if-ne v5, v0, :cond_94

    .line 975
    :try_start_78
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7d} :catch_c6

    .line 1003
    if-eqz v7, :cond_82

    :try_start_7f
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_82
    monitor-exit v19

    move-object v13, v12

    .line 1018
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v8           #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v16           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v17           #typeId:I
    :goto_84
    return-object v13

    .line 949
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_119

    move-result v7

    goto :goto_27

    .line 978
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v8       #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v16       #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v17       #typeId:I
    :cond_94
    :try_start_94
    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_c6

    move-object v11, v12

    .line 984
    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_98
    :try_start_98
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 985
    .local v15, newView:Landroid/view/View;
    const v18, 0x1020239

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 987
    invoke-virtual {v11, v15}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_b6
    .catchall {:try_start_98 .. :try_end_b6} :catchall_11f
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b6} :catch_163

    .line 1003
    if-eqz v7, :cond_bb

    :try_start_b8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_bb
    monitor-exit v19
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_119

    move-object v13, v11

    goto :goto_84

    .line 980
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v15           #newView:Landroid/view/View;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_be
    :try_start_be
    new-instance v11, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;Landroid/content/Context;)V
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c5} :catch_c6

    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_98

    .line 990
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :catch_c6
    move-exception v6

    move-object v11, v12

    .line 993
    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v6, e:Ljava/lang/Exception;
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_c8
    :try_start_c8
    const-string v18, "RemoteViewsAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error inflating RemoteViews at position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", using"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "loading view instead"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v13, 0x0

    .line 997
    .local v13, loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v14

    .line 998
    .local v14, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v14
    :try_end_106
    .catchall {:try_start_c8 .. :try_end_106} :catchall_11f

    .line 999
    :try_start_106
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static {v14, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->access$1600(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v13

    .line 1000
    monitor-exit v14
    :try_end_111
    .catchall {:try_start_106 .. :try_end_111} :catchall_11c

    .line 1003
    if-eqz v7, :cond_116

    :try_start_113
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_116
    monitor-exit v19

    goto/16 :goto_84

    .line 1020
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #hasNewItems:Z
    .end local v8           #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v9           #isConnected:Z
    .end local v10           #isInCache:Z
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v13           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .end local v16           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v17           #typeId:I
    :catchall_119
    move-exception v18

    monitor-exit v19
    :try_end_11b
    .catchall {:try_start_113 .. :try_end_11b} :catchall_119

    throw v18

    .line 1000
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v7       #hasNewItems:Z
    .restart local v8       #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v9       #isConnected:Z
    .restart local v10       #isInCache:Z
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v13       #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v14       #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v16       #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v17       #typeId:I
    :catchall_11c
    move-exception v18

    :try_start_11d
    monitor-exit v14
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    :try_start_11e
    throw v18
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11f

    .line 1003
    .end local v6           #e:Ljava/lang/Exception;
    .end local v13           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_11f
    move-exception v18

    :goto_120
    if-eqz v7, :cond_125

    :try_start_122
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_125
    throw v18

    .line 1008
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v8           #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v16           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v17           #typeId:I
    :cond_126
    const/4 v13, 0x0

    .line 1009
    .restart local v13       #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v14

    .line 1010
    .restart local v14       #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v14
    :try_end_132
    .catchall {:try_start_122 .. :try_end_132} :catchall_119

    .line 1011
    :try_start_132
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    #calls: Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static {v14, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->access$1600(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v13

    .line 1012
    monitor-exit v14
    :try_end_13d
    .catchall {:try_start_132 .. :try_end_13d} :catchall_15d

    .line 1014
    :try_start_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mRequestedViews:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    .line 1016
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->loadNextIndexInBackground()V

    .line 1018
    monitor-exit v19
    :try_end_15b
    .catchall {:try_start_13d .. :try_end_15b} :catchall_119

    goto/16 :goto_84

    .line 1012
    :catchall_15d
    move-exception v18

    :try_start_15e
    monitor-exit v14
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_15d

    :try_start_15f
    throw v18
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_119

    .line 1003
    .end local v13           #loadingView:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v8       #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v16       #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .restart local v17       #typeId:I
    :catchall_160
    move-exception v18

    move-object v11, v12

    .end local v12           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_120

    .line 990
    :catch_163
    move-exception v6

    goto/16 :goto_c8

    .end local v3           #context:Landroid/content/Context;
    .end local v8           #indexMetaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v16           #rv:Lcom/sec/android/touchwiz/widget/TwRemoteViews;
    .end local v17           #typeId:I
    :cond_166
    move-object v12, v11

    .end local v11           #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v12       #layout:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsFrameLayout;
    goto/16 :goto_48
.end method

.method public getViewTypeCount()I
    .registers 3

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1025
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1026
    :try_start_7
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    monitor-exit v0

    return v1

    .line 1027
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "msg"

    .prologue
    .line 1112
    const/4 v0, 0x0

    .line 1113
    .local v0, result:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1c

    .line 1123
    :goto_6
    return v0

    .line 1115
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1116
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mAppWidgetId:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->unbind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1118
    :cond_1a
    const/4 v0, 0x1

    .line 1119
    goto :goto_6

    .line 1113
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public hasStableIds()Z
    .registers 3

    .prologue
    .line 1031
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mCache:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1032
    .local v0, metaData:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1033
    :try_start_7
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    monitor-exit v0

    return v1

    .line 1034
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1084
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1088
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mServiceConnection:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1089
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    if-eqz v0, :cond_13

    .line 1104
    :goto_12
    return-void

    .line 1093
    :cond_13
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 1094
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->requestBindService()Z

    goto :goto_12

    .line 1098
    :cond_19
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$5;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$5;-><init>(Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12
.end method

.method superNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 1107
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1108
    return-void
.end method
