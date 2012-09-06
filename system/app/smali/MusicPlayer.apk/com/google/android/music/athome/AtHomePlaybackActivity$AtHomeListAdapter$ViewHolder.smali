.class Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AtHomePlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field albumId:J

.field albumName:Ljava/lang/String;

.field artistName:Ljava/lang/String;

.field dim_layer:Landroid/widget/ImageView;

.field line1:Lcom/google/android/music/StatefulShadowTextView;

.field line2:Lcom/google/android/music/StatefulShadowTextView;

.field play_indicator:Lcom/google/android/music/PlayingIndicator;

.field quick_contact:Landroid/widget/QuickContactBadge;

.field submitterFamilyName:Ljava/lang/String;

.field submitterGivenName:Ljava/lang/String;

.field submitterId:J

.field submitterPictureUrl:Ljava/lang/String;

.field final synthetic this$1:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

.field trackTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter$ViewHolder;->this$1:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
