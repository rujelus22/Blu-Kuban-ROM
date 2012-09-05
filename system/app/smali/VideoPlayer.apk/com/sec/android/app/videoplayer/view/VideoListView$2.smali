.class Lcom/sec/android/app/videoplayer/view/VideoListView$2;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 812
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 814
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 815
    .local v0, position:I
    packed-switch p2, :pswitch_data_46

    .line 830
    :cond_d
    :goto_d
    const/4 v1, 0x0

    return v1

    .line 817
    :pswitch_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_d

    .line 818
    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    if-le v1, v2, :cond_d

    .line 819
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_d

    .line 823
    :pswitch_26
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_d

    .line 824
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 825
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_d

    .line 815
    :pswitch_data_46
    .packed-switch 0x15
        :pswitch_f
        :pswitch_26
    .end packed-switch
.end method
