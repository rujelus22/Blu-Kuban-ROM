.class Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;
.super Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;
.source "MusicSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/MusicSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TickledDownstreamState"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;)V
    .registers 4
    .parameter "feed"

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$1;)V

    .line 187
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$2;->$SwitchMap$com$google$android$music$sync$google$MusicSyncAdapter$DownstreamState$Feed:[I

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 197
    :goto_f
    return-void

    .line 189
    :pswitch_10
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->TRACKS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_f

    .line 194
    :pswitch_15
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLAYLISTS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_f

    .line 187
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public onDoneWithFeed()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    sget-object v1, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLAYLISTS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    if-ne v0, v1, :cond_b

    .line 203
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLENTRIES:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    .line 208
    :goto_a
    return-void

    .line 206
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$TickledDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_a
.end method
