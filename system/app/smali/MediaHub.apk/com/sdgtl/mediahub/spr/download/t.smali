.class public abstract Lcom/sdgtl/mediahub/spr/download/t;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/download/s;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p0, p0, v0}, Lcom/sdgtl/mediahub/spr/download/t;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/sdgtl/mediahub/spr/download/s;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sdgtl/mediahub/spr/download/s;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/s;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/sdgtl/mediahub/spr/download/u;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/download/u;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_108

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    :sswitch_b
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v3, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    move v1, v2

    :cond_2b
    invoke-virtual {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/download/t;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;Z)J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_a

    :sswitch_36
    const-string v1, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_49

    sget-object v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    :cond_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/download/t;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_54
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/download/t;->a()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_60
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/download/t;->b()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6f

    move v1, v2

    :cond_6f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_73
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/download/t;->a(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8a

    move v1, v2

    :cond_8a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_8f
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/download/t;->d()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_a0
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/download/t;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_b1
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/download/t;->a(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_c6
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/download/t;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_db
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/download/t;->c()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_f1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_f6
    const-string v0, "com.sdgtl.mediahub.spr.download.IDownload"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/download/t;->f()J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_a

    nop

    :sswitch_data_108
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_36
        0x3 -> :sswitch_54
        0x4 -> :sswitch_60
        0x5 -> :sswitch_73
        0x6 -> :sswitch_8f
        0x7 -> :sswitch_a0
        0x8 -> :sswitch_b1
        0x9 -> :sswitch_c6
        0xa -> :sswitch_db
        0xb -> :sswitch_f6
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
