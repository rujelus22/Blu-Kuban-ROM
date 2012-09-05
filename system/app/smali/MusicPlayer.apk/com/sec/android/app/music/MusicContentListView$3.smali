.class Lcom/sec/android/app/music/MusicContentListView$3;
.super Ljava/lang/Object;
.source "MusicContentListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicContentListView;->invalidateAllViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicContentListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicContentListView;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sec/android/app/music/MusicContentListView$3;->this$0:Lcom/sec/android/app/music/MusicContentListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView$3;->this$0:Lcom/sec/android/app/music/MusicContentListView;

    #getter for: Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicContentListView;->access$400(Lcom/sec/android/app/music/MusicContentListView;)Lcom/sec/android/app/music/MusicGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView$3;->this$0:Lcom/sec/android/app/music/MusicContentListView;

    #getter for: Lcom/sec/android/app/music/MusicContentListView;->mNoItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicContentListView;->access$100(Lcom/sec/android/app/music/MusicContentListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicGridView;->setEmptyView(Landroid/view/View;)V

    .line 309
    return-void
.end method
