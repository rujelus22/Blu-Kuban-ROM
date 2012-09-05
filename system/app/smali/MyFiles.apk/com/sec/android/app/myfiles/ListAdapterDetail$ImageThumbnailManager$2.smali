.class Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;
.super Ljava/lang/Object;
.source "ListAdapterDetail.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->loadImage(Lcom/sec/android/app/myfiles/SimpleIcon;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    iput p2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "b"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->mDone:Z
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->access$100(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 139
    if-eqz p1, :cond_d

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    :cond_d
    :goto_d
    return-void

    .line 144
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->access$400(Lcom/sec/android/app/myfiles/ListAdapterDetail;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 146
    :try_start_17
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->access$400(Lcom/sec/android/app/myfiles/ListAdapterDetail;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 148
    .local v1, item:Lcom/sec/android/app/myfiles/SimpleItem;
    if-eqz p1, :cond_39

    .line 149
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/app/myfiles/SimpleIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/SimpleItem;->setIsIcon(Z)V

    .line 154
    :cond_39
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/SimpleItem;->setSkipThumb(Z)V
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3d} :catch_5b

    .line 159
    .end local v1           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    :goto_3d
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_64

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterDetail;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->access$000(Lcom/sec/android/app/myfiles/ListAdapterDetail;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2$1;-><init>(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    monitor-enter v3

    .line 178
    :try_start_51
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 179
    monitor-exit v3

    goto :goto_d

    :catchall_58
    move-exception v2

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_58

    throw v2

    .line 155
    :catch_5b
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    :try_start_5c
    const-string v2, "[MyFiles]"

    const-string v4, "TextListAdapter : loadImage : Exception is occured"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_64
    move-exception v2

    monitor-exit v3
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_64

    throw v2
.end method
