.class public Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field private static final KEY_CURRENT_POSITION:Ljava/lang/String; = "currentPosition"

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field public final currentPositionMillis:I

.field public final durationMillis:I

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/youtube/athome/common/a;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/common/a;-><init>()V

    sput-object v0, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;->title:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;->currentPositionMillis:I

    .line 30
    iput p3, p0, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;->durationMillis:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/google/android/youtube/athome/common/a;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 58
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 59
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 61
    return-void
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 34
    const-string v0, "title"

    iget-object v1, p0, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "currentPosition"

    iget v1, p0, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;->currentPositionMillis:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 36
    const-string v0, "duration"

    iget v1, p0, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;->durationMillis:I

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 37
    return-void
.end method
