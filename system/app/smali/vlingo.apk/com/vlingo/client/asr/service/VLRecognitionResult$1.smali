.class final Lcom/vlingo/client/asr/service/VLRecognitionResult$1;
.super Ljava/lang/Object;
.source "VLRecognitionResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VLRecognitionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vlingo/client/asr/service/VLRecognitionResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vlingo/client/asr/service/VLRecognitionResult;
    .registers 4
    .parameter "in"

    .prologue
    .line 75
    new-instance v0, Lcom/vlingo/client/asr/service/VLRecognitionResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vlingo/client/asr/service/VLRecognitionResult;-><init>(Landroid/os/Parcel;Lcom/vlingo/client/asr/service/VLRecognitionResult$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/vlingo/client/asr/service/VLRecognitionResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vlingo/client/asr/service/VLRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vlingo/client/asr/service/VLRecognitionResult;
    .registers 3
    .parameter "size"

    .prologue
    .line 79
    new-array v0, p1, [Lcom/vlingo/client/asr/service/VLRecognitionResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/vlingo/client/asr/service/VLRecognitionResult$1;->newArray(I)[Lcom/vlingo/client/asr/service/VLRecognitionResult;

    move-result-object v0

    return-object v0
.end method
