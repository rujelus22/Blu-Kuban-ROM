.class Lcom/sec/android/app/music/MusicContentListView$4;
.super Ljava/lang/Object;
.source "MusicContentListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicContentListView;->reQueryListCursor(Z)V
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
    .line 330
    iput-object p1, p0, Lcom/sec/android/app/music/MusicContentListView$4;->this$0:Lcom/sec/android/app/music/MusicContentListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView$4;->this$0:Lcom/sec/android/app/music/MusicContentListView;

    #getter for: Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;
    invoke-static {v0}, Lcom/sec/android/app/music/MusicContentListView;->access$200(Lcom/sec/android/app/music/MusicContentListView;)Lcom/sec/android/app/music/widget/CommonMusicListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView$4;->this$0:Lcom/sec/android/app/music/MusicContentListView;

    #getter for: Lcom/sec/android/app/music/MusicContentListView;->mNoItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicContentListView;->access$100(Lcom/sec/android/app/music/MusicContentListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->setEmptyView(Landroid/view/View;)V

    .line 334
    return-void
.end method
