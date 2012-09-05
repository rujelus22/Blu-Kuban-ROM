.class Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2$1;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;->run(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mDone:Z
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->access$100(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 175
    :cond_a
    :goto_a
    return-void

    .line 166
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->access$500(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->access$500(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 170
    .local v0, firstVisible:I
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;

    iget v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;->val$position:I

    if-lt v1, v0, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;

    iget v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;->val$position:I

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ListAdapter;->access$500(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_a

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2$1;->this$2:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$2;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->notifyDataSetChanged()V

    goto :goto_a
.end method
