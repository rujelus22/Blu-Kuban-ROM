.class Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;
.super Ljava/lang/Object;
.source "ListAdapterThumb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->run(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 151
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->mDone:Z
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->access$100(Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 169
    :cond_a
    :goto_a
    return-void

    .line 155
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$700(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 156
    :try_start_16
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mAgeMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$700(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget v3, v3, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_70

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$500(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$500(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 164
    .local v0, firstVisible:I
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->val$position:I

    if-lt v1, v0, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->val$position:I

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapterThumb;->mGrid:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->access$500(Lcom/sec/android/app/myfiles/ListAdapterThumb;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_a

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapterThumb$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->notifyDataSetChanged()V

    goto :goto_a

    .line 157
    .end local v0           #firstVisible:I
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1
.end method
