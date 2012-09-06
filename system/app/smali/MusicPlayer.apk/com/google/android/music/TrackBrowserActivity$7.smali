.class Lcom/google/android/music/TrackBrowserActivity$7;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->setTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrimaryTitle:Ljava/lang/CharSequence;

.field private final mSavedMediaList:Lcom/google/android/music/medialist/SongList;

.field private mScreenTitle:Ljava/lang/CharSequence;

.field private mSecondaryTitle:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1024
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1027
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mScreenTitle:Ljava/lang/CharSequence;

    .line 1028
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mPrimaryTitle:Ljava/lang/CharSequence;

    .line 1029
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSecondaryTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 5

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 1047
    :cond_a
    :goto_a
    return-void

    .line 1035
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mScreenTitle:Ljava/lang/CharSequence;

    .line 1036
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mPrimaryTitle:Ljava/lang/CharSequence;

    .line 1037
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getSecondaryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSecondaryTitle:Ljava/lang/CharSequence;

    .line 1038
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getAlbumId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_52

    .line 1040
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mAlbumArtist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1902(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    :goto_42
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1045
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->refreshMetaData(Landroid/content/Context;)V

    goto :goto_a

    .line 1042
    :cond_52
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mAlbumArtist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1902(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_42
.end method

.method public taskCompleted()V
    .registers 10

    .prologue
    .line 1051
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v5}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v5

    if-eq v4, v5, :cond_b

    .line 1085
    :cond_a
    :goto_a
    return-void

    .line 1055
    :cond_b
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mScreenTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mScreenTitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 1056
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mScreenTitle:Ljava/lang/CharSequence;

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v4, v5}, Lcom/google/android/music/TrackBrowserActivity;->access$2002(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1057
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->requestReconfig()V
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2100(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 1059
    :cond_29
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mPrimaryTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_69

    .line 1060
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v4

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$900(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_69

    .line 1062
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$900(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f100008

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1063
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_53

    .line 1064
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mPrimaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    :cond_53
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$900(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f100009

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #tv:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1067
    .restart local v3       #tv:Landroid/widget/TextView;
    if-eqz v3, :cond_69

    .line 1068
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_69
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mSongCount:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1073
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v4

    if-eqz v4, :cond_ae

    .line 1074
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1075
    .local v0, c:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 1076
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1077
    .local v2, songCount:I
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, displayText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mSongCount:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1083
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #displayText:Ljava/lang/CharSequence;
    .end local v2           #songCount:I
    :cond_ae
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$7;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mSongCount:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a
.end method
