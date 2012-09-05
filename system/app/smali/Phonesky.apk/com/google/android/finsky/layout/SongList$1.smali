.class Lcom/google/android/finsky/layout/SongList$1;
.super Ljava/lang/Object;
.source "SongList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/SongList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SongList;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongList$1;->this$0:Lcom/google/android/finsky/layout/SongList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 38
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList$1;->this$0:Lcom/google/android/finsky/layout/SongList;

    #getter for: Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/finsky/layout/SongList;->access$100(Lcom/google/android/finsky/layout/SongList;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/SongList$1;->this$0:Lcom/google/android/finsky/layout/SongList;

    #getter for: Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/layout/SongList;->access$000(Lcom/google/android/finsky/layout/SongList;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/SongSnippet;

    .line 39
    .local v1, song:Lcom/google/android/finsky/layout/SongSnippet;
    if-nez v1, :cond_15

    .line 53
    :cond_14
    :goto_14
    return-void

    .line 43
    :cond_15
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SongSnippet;->setState(I)V

    .line 45
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList$1;->this$0:Lcom/google/android/finsky/layout/SongList;

    #getter for: Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/google/android/finsky/layout/SongList;->access$200(Lcom/google/android/finsky/layout/SongList;)Landroid/widget/ScrollView;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 46
    const-string v2, "Unable to scroll the highlighted song into view."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 49
    :cond_2a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .local v0, position:Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/SongSnippet;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 51
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList$1;->this$0:Lcom/google/android/finsky/layout/SongList;

    #getter for: Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/google/android/finsky/layout/SongList;->access$200(Lcom/google/android/finsky/layout/SongList;)Landroid/widget/ScrollView;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_14
.end method
