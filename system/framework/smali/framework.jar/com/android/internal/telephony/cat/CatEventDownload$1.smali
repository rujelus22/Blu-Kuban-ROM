.class final Lcom/android/internal/telephony/cat/CatEventDownload$1;
.super Ljava/lang/Object;
.source "CatEventDownload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatEventDownload;
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
        "Lcom/android/internal/telephony/cat/CatEventDownload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatEventDownload;
    .registers 7
    .parameter "source"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, eventType:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, language:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, browserTerminationCause:I
    packed-switch v1, :pswitch_data_2a

    .line 85
    :pswitch_f
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/16 v4, 0xfe

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    :goto_16
    return-object v3

    .line 79
    :pswitch_17
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    goto :goto_16

    .line 81
    :pswitch_1d
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(ILjava/lang/String;)V

    goto :goto_16

    .line 83
    :pswitch_23
    new-instance v3, Lcom/android/internal/telephony/cat/CatEventDownload;

    invoke-direct {v3, v1, v0}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(II)V

    goto :goto_16

    .line 76
    nop

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_17
        :pswitch_17
        :pswitch_f
        :pswitch_1d
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatEventDownload;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/CatEventDownload;
    .registers 3
    .parameter "size"

    .prologue
    .line 91
    new-array v0, p1, [Lcom/android/internal/telephony/cat/CatEventDownload;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatEventDownload$1;->newArray(I)[Lcom/android/internal/telephony/cat/CatEventDownload;

    move-result-object v0

    return-object v0
.end method
