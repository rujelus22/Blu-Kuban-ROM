.class Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;
.super Ljava/lang/Object;
.source "ListAdapterThumb.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->loadImage(Lcom/sec/android/app/myfiles/SimpleIcon;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iput p2, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "b"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mDone:Z
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->access$100(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 128
    if-eqz p1, :cond_d

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    :cond_d
    :goto_d
    return-void

    .line 134
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$400(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 135
    :try_start_17
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$400(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mItems:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$400(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 138
    .local v0, item:Lcom/sec/android/app/myfiles/SimpleItem;
    if-eqz p1, :cond_65

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/SimpleItem;->setIsIcon(Z)V

    .line 140
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/myfiles/SimpleIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 147
    .end local v0           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_47
    :goto_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_17 .. :try_end_48} :catchall_6a

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$000(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;-><init>(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    monitor-enter v2

    .line 173
    :try_start_5b
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 174
    monitor-exit v2

    goto :goto_d

    :catchall_62
    move-exception v1

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_62

    throw v1

    .line 144
    .restart local v0       #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_65
    const/4 v1, 0x1

    :try_start_66
    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/SimpleItem;->setSkipThumb(Z)V

    goto :goto_47

    .line 147
    .end local v0           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :catchall_6a
    move-exception v1

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_6a

    throw v1
.end method
