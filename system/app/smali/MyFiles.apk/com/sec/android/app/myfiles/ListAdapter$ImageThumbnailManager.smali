.class Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;
.super Ljava/lang/Object;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageThumbnailManager"
.end annotation


# instance fields
.field private mDone:Z

.field private mLoader:Lcom/sec/android/app/myfiles/ImageLoader;

.field private mWorkerThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/sec/android/app/myfiles/ListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ListAdapter;)V
    .registers 5
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mDone:Z

    .line 83
    new-instance v0, Lcom/sec/android/app/myfiles/ImageLoader;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/ListAdapter;->access$000(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/myfiles/ImageLoader;-><init>(Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mLoader:Lcom/sec/android/app/myfiles/ImageLoader;

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$1;-><init>(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;Lcom/sec/android/app/myfiles/ListAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mWorkerThread:Ljava/lang/Thread;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mWorkerThread:Ljava/lang/Thread;

    const-string v1, "image-thumbnail-manager"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mDone:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;)Lcom/sec/android/app/myfiles/ImageLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mLoader:Lcom/sec/android/app/myfiles/ImageLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->loadNext()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->onPause()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->onUpdateItem(I)V

    return-void
.end method

.method private loadImage(Lcom/sec/android/app/myfiles/SimpleIcon;IZ)V
    .registers 10
    .parameter "image"
    .parameter "position"
    .parameter "isVisible"

    .prologue
    const/4 v2, 0x0

    .line 135
    new-instance v3, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;

    invoke-direct {v3, p0, p2}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;-><init>(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;I)V

    .line 183
    .local v3, r:Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mLoader:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object v1, p1

    move v4, p3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/myfiles/ImageLoader;->getBitmap(Lcom/sec/android/app/myfiles/SimpleIcon;ILcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;

    .line 184
    return-void
.end method

.method private loadNext()V
    .registers 7

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, counter:I
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapter;->access$400(Lcom/sec/android/app/myfiles/ListAdapter;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 118
    :try_start_8
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapter;->access$400(Lcom/sec/android/app/myfiles/ListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 119
    .local v2, item:Lcom/sec/android/app/myfiles/SimpleItem;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapter;->access$500(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 120
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/sec/android/app/myfiles/ListAdapter;->access$500(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    #setter for: Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I
    invoke-static {v3, v5}, Lcom/sec/android/app/myfiles/ListAdapter;->access$602(Lcom/sec/android/app/myfiles/ListAdapter;I)I

    .line 122
    :cond_35
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapter;->access$600(Lcom/sec/android/app/myfiles/ListAdapter;)I

    move-result v3

    if-lt v0, v3, :cond_64

    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mStartPosition:I
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapter;->access$600(Lcom/sec/android/app/myfiles/ListAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    if-ge v0, v3, :cond_64

    .line 124
    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->isImage()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->isIcon()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->isSkipThumb()Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_64

    .line 125
    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v0, v5}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->loadImage(Lcom/sec/android/app/myfiles/SimpleIcon;IZ)V

    .line 131
    .end local v2           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_62
    monitor-exit v4

    .line 132
    return-void

    .line 129
    .restart local v2       #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 131
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :catchall_67
    move-exception v3

    monitor-exit v4
    :try_end_69
    .catchall {:try_start_8 .. :try_end_69} :catchall_67

    throw v3
.end method

.method private onPause()V
    .registers 4

    .prologue
    .line 218
    monitor-enter p0

    .line 219
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mDone:Z

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 221
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_2f

    .line 232
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_2e

    .line 234
    const-string v0, "[MyFiles]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ImageThumbnailManager.onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2e
    return-void

    .line 221
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private onUpdateItem(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 195
    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->access$000(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;-><init>(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_31

    .line 214
    const-string v0, "[MyFiles]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ImageThumbnailManager.onKick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 212
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method
