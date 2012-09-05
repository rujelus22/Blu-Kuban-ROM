.class final Lcom/vlingo/client/core/tts/TTSDemand$1;
.super Ljava/lang/Object;
.source "TTSDemand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/tts/TTSDemand;
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
        "Lcom/vlingo/client/core/tts/TTSDemand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "in"

    .prologue
    .line 147
    new-instance v0, Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-direct {v0, p1}, Lcom/vlingo/client/core/tts/TTSDemand;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/tts/TTSDemand$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3
    .parameter "size"

    .prologue
    .line 151
    new-array v0, p1, [Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/tts/TTSDemand$1;->newArray(I)[Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    return-object v0
.end method
