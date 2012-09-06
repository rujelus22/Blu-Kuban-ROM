.class Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;
.super Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;
.source "MusicSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/MusicSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllFeedsDownstreamState"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState;-><init>(Lcom/google/android/music/sync/google/MusicSyncAdapter$1;)V

    .line 219
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->TRACKS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    .line 220
    return-void
.end method


# virtual methods
.method public onDoneWithFeed()V
    .registers 3

    .prologue
    .line 224
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$2;->$SwitchMap$com$google$android$music$sync$google$MusicSyncAdapter$DownstreamState$Feed:[I

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    invoke-virtual {v1}, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 240
    :goto_d
    return-void

    .line 227
    :pswitch_e
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLAYLISTS:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_d

    .line 232
    :pswitch_13
    sget-object v0, Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;->PLENTRIES:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_d

    .line 237
    :pswitch_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$AllFeedsDownstreamState;->mFeed:Lcom/google/android/music/sync/google/MusicSyncAdapter$DownstreamState$Feed;

    goto :goto_d

    .line 224
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_13
        :pswitch_18
    .end packed-switch
.end method
