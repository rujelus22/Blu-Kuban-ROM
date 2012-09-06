.class Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAlreadyInPartyModeQueue:Z

.field final synthetic this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$projection:[Ljava/lang/String;

.field final synthetic val$songId:J

.field final synthetic val$trackId:J

.field final synthetic val$vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;Landroid/content/ContentResolver;[Ljava/lang/String;JJLcom/google/android/music/widgets/TrackListView$ViewHolder;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    iput-object p2, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$projection:[Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$songId:J

    iput-wide p6, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$trackId:J

    iput-object p8, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 890
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$projection:[Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$songId:J

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/music/athome/AtHomeContentProvider;->getSong(Landroid/content/ContentResolver;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 892
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    :goto_12
    iput-boolean v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->mAlreadyInPartyModeQueue:Z

    .line 893
    iget-wide v3, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$trackId:J

    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    iget-wide v5, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->trackId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_27

    .line 894
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    iget-boolean v3, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->mAlreadyInPartyModeQueue:Z

    if-eqz v3, :cond_25

    const/4 v2, 0x3

    :cond_25
    iput v2, v1, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeQueueState:I

    .line 897
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 898
    return-void

    .line 892
    :cond_2b
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public taskCompleted()V
    .registers 5

    .prologue
    .line 901
    iget-wide v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$trackId:J

    iget-object v2, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    iget-wide v2, v2, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->trackId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 902
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    iget-object v0, v0, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->syncProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->mAlreadyInPartyModeQueue:Z

    if-eqz v0, :cond_2d

    .line 904
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    iget-object v0, v0, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAddedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$2400(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 908
    :goto_24
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    iget-object v0, v0, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    :cond_2c
    return-void

    .line 906
    :cond_2d
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->val$vh:Lcom/google/android/music/widgets/TrackListView$ViewHolder;

    iget-object v0, v0, Lcom/google/android/music/widgets/TrackListView$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$4;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mAddToDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$2500(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24
.end method
