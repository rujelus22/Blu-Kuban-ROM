.class Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;
.super Ljava/lang/Object;
.source "HostedPhotosFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCachedFirstVisibleIndex:I

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->mCachedFirstVisibleIndex:I

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/google/android/apps/plus/views/ColumnGridView;IIII)V
    .registers 13
    .parameter "view"
    .parameter "firstItem"
    .parameter "visibleOffset"
    .parameter "viewItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 429
    if-eqz p4, :cond_a

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    move-result-object v4

    if-nez v4, :cond_b

    .line 442
    :cond_a
    :goto_a
    return-void

    .line 433
    :cond_b
    add-int v0, p2, p3

    .line 434
    .local v0, firstVisibleIndex:I
    iget v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->mCachedFirstVisibleIndex:I

    if-eq v4, v0, :cond_a

    .line 436
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getColumnCount()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v5, p5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 438
    .local v1, index:I
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getTimestampForItem(I)J

    move-result-wide v2

    .line 439
    .local v2, timestamp:J
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$300(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Lcom/google/android/apps/plus/views/PhotoAlbumView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mDateFormat:Ljava/text/DateFormat;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$400(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/PhotoAlbumView;->setDate(Ljava/lang/String;)V

    .line 440
    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->mCachedFirstVisibleIndex:I

    goto :goto_a
.end method

.method public onScrollStateChanged(Lcom/google/android/apps/plus/views/ColumnGridView;I)V
    .registers 7
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 412
    if-nez p2, :cond_e

    .line 413
    const/16 v2, 0x8

    .line 423
    .local v2, visibility:I
    :goto_4
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$300(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Lcom/google/android/apps/plus/views/PhotoAlbumView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/views/PhotoAlbumView;->setDateVisibility(I)V

    .line 424
    return-void

    .line 415
    .end local v2           #visibility:I
    :cond_e
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 416
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_25

    const/4 v1, 0x1

    .line 417
    .local v1, hasResults:Z
    :goto_21
    if-eqz v1, :cond_27

    .line 418
    const/4 v2, 0x0

    .restart local v2       #visibility:I
    goto :goto_4

    .line 416
    .end local v1           #hasResults:Z
    .end local v2           #visibility:I
    :cond_25
    const/4 v1, 0x0

    goto :goto_21

    .line 420
    .restart local v1       #hasResults:Z
    :cond_27
    const/16 v2, 0x8

    .restart local v2       #visibility:I
    goto :goto_4
.end method
