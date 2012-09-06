.class public Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field private static final KEY_AD:Ljava/lang/String; = "ad"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final KEY_SUBTITLES_ENABLED:Ljava/lang/String; = "subtitlesEnabled"

.field private static final KEY_VIDEO_ID:Ljava/lang/String; = "videoId"

.field public static RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator; = null

.field public static final STATE_BUFFERING:I = 0x5

.field public static final STATE_ENDED:I = 0x3

.field public static final STATE_ERROR:I = 0x2

.field public static final STATE_PAUSED:I = 0x1

.field public static final STATE_PLAYING:I = 0x0

.field public static final STATE_PLAYING_AD:I = 0x6

.field public static final STATE_STOPPED:I = 0x4

.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field public final ad:Lcom/google/android/youtube/athome/app/common/a;

.field public final state:I

.field public final subtitlesEnabled:Z

.field public final videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/youtube/athome/app/common/d;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/app/common/d;-><init>()V

    sput-object v0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Lcom/google/android/youtube/athome/app/common/a;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->state:I

    .line 64
    iput-object p2, p0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->videoId:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->ad:Lcom/google/android/youtube/athome/app/common/a;

    .line 66
    iput-boolean p4, p0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->subtitlesEnabled:Z

    .line 67
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/google/android/youtube/athome/app/common/a;ZLcom/google/android/youtube/athome/app/common/d;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;-><init>(ILjava/lang/String;Lcom/google/android/youtube/athome/app/common/a;Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 96
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 97
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 70
    const-string v0, "state"

    iget v1, p0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->state:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 71
    const-string v0, "videoId"

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "ad"

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->ad:Lcom/google/android/youtube/athome/app/common/a;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 73
    const-string v0, "subtitlesEnabled"

    iget-boolean v1, p0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->subtitlesEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    return-void
.end method
