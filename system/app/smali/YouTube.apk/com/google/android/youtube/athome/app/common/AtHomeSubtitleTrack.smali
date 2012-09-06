.class public Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field private static final KEY_LANGUAGE_CODE:Ljava/lang/String; = "languageCode"

.field private static final KEY_TRACK_NAME:Ljava/lang/String; = "trackName"

.field private static final KEY_VIDEO_ID:Ljava/lang/String; = "videoId"

.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field public final languageCode:Ljava/lang/String;

.field public final trackName:Ljava/lang/String;

.field public final videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/youtube/athome/app/common/f;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/app/common/f;-><init>()V

    sput-object v0, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;->videoId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;->languageCode:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;->trackName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/athome/app/common/f;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 59
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 60
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 62
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    const-string v0, "videoId"

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "languageCode"

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "trackName"

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/AtHomeSubtitleTrack;->trackName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
