.class Lcom/sec/android/app/videoplayer/view/VideoListView$3;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;->initMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 2
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_8

    .line 838
    const/4 v0, 0x0

    .line 844
    :goto_7
    return v0

    .line 840
    :cond_8
    const v0, 0x7f0a0029

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 841
    .local v5, title:Ljava/lang/String;
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_31

    .line 842
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$3;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$900(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/videoplayer/popup/VideoListLongClickPopup;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    .line 844
    :cond_31
    const/4 v0, 0x1

    goto :goto_7
.end method
