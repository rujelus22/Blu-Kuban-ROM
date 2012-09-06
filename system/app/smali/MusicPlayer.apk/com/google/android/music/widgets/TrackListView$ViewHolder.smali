.class Lcom/google/android/music/widgets/TrackListView$ViewHolder;
.super Ljava/lang/Object;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field album:Lcom/google/android/music/StatefulShadowTextView;

.field public albumId:J

.field artist:Lcom/google/android/music/StatefulShadowTextView;

.field comboColumn:Landroid/view/View;

.field contextMenu:Landroid/view/View;

.field duration:Lcom/google/android/music/StatefulShadowTextView;

.field hasRemote:Z

.field icon:Lcom/google/android/music/AsyncAlbumArtImageView;

.field partyModeAddButton:Landroid/widget/ImageView;

.field partyModeQueueState:I

.field play_indicator:Lcom/google/android/music/PlayingIndicator;

.field quickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

.field submitterFamilyName:Ljava/lang/String;

.field submitterGivenName:Ljava/lang/String;

.field submitterId:J

.field submitterPictureUrl:Ljava/lang/String;

.field syncProgress:Landroid/view/View;

.field title:Lcom/google/android/music/StatefulShadowTextView;

.field titleBuffer:Landroid/database/CharArrayBuffer;

.field trackId:J

.field year:Lcom/google/android/music/StatefulShadowTextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/widgets/TrackListView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/google/android/music/widgets/TrackListView$ViewHolder;-><init>()V

    return-void
.end method
