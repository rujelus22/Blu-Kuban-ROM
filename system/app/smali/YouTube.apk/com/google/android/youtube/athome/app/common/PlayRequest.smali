.class public Lcom/google/android/youtube/athome/app/common/PlayRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final KEY_RESUME_TIME_MILLIS:Ljava/lang/String; = "resume_time_millis"

.field private static final KEY_VIDEO_ID:Ljava/lang/String; = "video_id"

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field public final resumeTimeMillis:I

.field public final videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/youtube/athome/app/common/o;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/app/common/o;-><init>()V

    sput-object v0, Lcom/google/android/youtube/athome/app/common/PlayRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    new-instance v0, Lcom/google/android/youtube/athome/app/common/p;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/app/common/p;-><init>()V

    sput-object v0, Lcom/google/android/youtube/athome/app/common/PlayRequest;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/youtube/athome/common/d;

    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1, p1}, Landroid/support/place/rpc/RpcData;-><init>(Landroid/os/Parcel;)V

    invoke-direct {v0, v1}, Lcom/google/android/youtube/athome/common/d;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/athome/app/common/PlayRequest;-><init>(Lcom/google/android/youtube/athome/common/d;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/athome/common/d;)V
    .registers 5
    .parameter

    .prologue
    .line 62
    const-string v0, "video_id"

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_time_millis"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/athome/app/common/PlayRequest;-><init>(Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/PlayRequest;->videoId:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/google/android/youtube/athome/app/common/PlayRequest;->resumeTimeMillis:I

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlayRequest [videoId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/PlayRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resumeTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/athome/app/common/PlayRequest;->resumeTimeMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/athome/app/common/PlayRequest;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 76
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 77
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 82
    const-string v0, "video_id"

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/PlayRequest;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "resume_time_millis"

    iget v1, p0, Lcom/google/android/youtube/athome/app/common/PlayRequest;->resumeTimeMillis:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 84
    return-void
.end method
