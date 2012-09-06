.class Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAlreadyInPartyModeQueue:Z

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$projection:[Ljava/lang/String;

.field final synthetic val$songId:J

.field final synthetic val$trackId:J

.field final synthetic val$vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;[Ljava/lang/String;JJLcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$projection:[Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$songId:J

    iput-wide p6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$trackId:J

    iput-object p8, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 1821
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$projection:[Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$songId:J

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/music/athome/AtHomeContentProvider;->getSong(Landroid/content/ContentResolver;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 1823
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    :goto_12
    iput-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->mAlreadyInPartyModeQueue:Z

    .line 1824
    iget-wide v3, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$trackId:J

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    iget-wide v5, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->trackId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_27

    .line 1825
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    iget-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->mAlreadyInPartyModeQueue:Z

    if-eqz v3, :cond_25

    const/4 v2, 0x3

    :cond_25
    iput v2, v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeQueueState:I

    .line 1828
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1829
    return-void

    .line 1823
    :cond_2b
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public taskCompleted()V
    .registers 5

    .prologue
    .line 1832
    iget-wide v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$trackId:J

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    iget-wide v2, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->trackId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 1833
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->syncProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1834
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->mAlreadyInPartyModeQueue:Z

    if-eqz v0, :cond_2d

    .line 1835
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAddedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->access$3700(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1839
    :goto_24
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1841
    :cond_2c
    return-void

    .line 1837
    :cond_2d
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->val$vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->partyModeAddButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAddToDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->access$3800(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_24
.end method
