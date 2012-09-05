.class Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;
.super Ljava/lang/Object;
.source "ListAdapterThumb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/ListAdapterThumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageThumbnailManager"
.end annotation


# instance fields
.field private mDone:Z

.field private mLoader:Lcom/sec/android/app/myfiles/ImageLoader;

.field private mWorkerThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ListAdapterThumb;)V
    .registers 5
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mDone:Z

    .line 70
    new-instance v0, Lcom/sec/android/app/myfiles/ImageLoader;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$000(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/myfiles/ListAdapterThumb;->type:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/myfiles/ImageLoader;-><init>(Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mLoader:Lcom/sec/android/app/myfiles/ImageLoader;

    .line 72
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$1;-><init>(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;Lcom/sec/android/app/myfiles/ListAdapterThumb;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mWorkerThread:Ljava/lang/Thread;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mWorkerThread:Ljava/lang/Thread;

    const-string v1, "image-thumbnail-manager"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mDone:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;)Lcom/sec/android/app/myfiles/ImageLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mLoader:Lcom/sec/android/app/myfiles/ImageLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->loadNext()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->onPause()V

    return-void
.end method

.method private loadImage(Lcom/sec/android/app/myfiles/SimpleIcon;IZ)V
    .registers 10
    .parameter "image"
    .parameter "position"
    .parameter "isVisible"

    .prologue
    const/4 v2, 0x0

    .line 125
    new-instance v3, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    invoke-direct {v3, p0, p2}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;-><init>(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;I)V

    .line 177
    .local v3, r:Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mLoader:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object v1, p1

    move v4, p3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/myfiles/ImageLoader;->getBitmap(Lcom/sec/android/app/myfiles/SimpleIcon;ILcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;

    .line 178
    return-void
.end method

.method private loadNext()V
    .registers 7

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, counter:I
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$400(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 107
    :try_start_8
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$400(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Ljava/util/List;

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

    .line 108
    .local v2, item:Lcom/sec/android/app/myfiles/SimpleItem;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mGrid:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$500(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Landroid/widget/GridView;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 109
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mGrid:Landroid/widget/GridView;
    invoke-static {v5}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$500(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v5

    #setter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mStartPosition:I
    invoke-static {v3, v5}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$602(Lcom/sec/android/app/myfiles/ListAdapterThumb;I)I

    .line 111
    :cond_35
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mStartPosition:I
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$600(Lcom/sec/android/app/myfiles/ListAdapterThumb;)I

    move-result v3

    if-lt v0, v3, :cond_64

    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mStartPosition:I
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$600(Lcom/sec/android/app/myfiles/ListAdapterThumb;)I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    if-ge v0, v3, :cond_64

    .line 113
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

    .line 114
    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v0, v5}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->loadImage(Lcom/sec/android/app/myfiles/SimpleIcon;IZ)V

    .line 120
    .end local v2           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_62
    monitor-exit v4

    .line 121
    return-void

    .line 118
    .restart local v2       #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 120
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
    .line 189
    monitor-enter p0

    .line 190
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mDone:Z

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 192
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_29

    .line 204
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

    .line 205
    return-void

    .line 192
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method
