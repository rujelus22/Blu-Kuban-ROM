.class Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->onUpdateItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    iput p2, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 198
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->mDone:Z
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->access$100(Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 210
    :cond_8
    :goto_8
    return-void

    .line 201
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->access$500(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->access$500(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 205
    .local v0, firstVisible:I
    iget v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;->val$position:I

    if-lt v1, v0, :cond_8

    iget v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;->val$position:I

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    #getter for: Lcom/sec/android/app/myfiles/ListAdapter;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ListAdapter;->access$500(Lcom/sec/android/app/myfiles/ListAdapter;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_8

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager$3;->this$1:Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/ListAdapter$ImageThumbnailManager;->this$0:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->notifyDataSetChanged()V

    goto :goto_8
.end method
