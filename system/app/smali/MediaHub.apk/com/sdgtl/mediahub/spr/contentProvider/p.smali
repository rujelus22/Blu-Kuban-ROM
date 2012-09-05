.class public abstract Lcom/sdgtl/mediahub/spr/contentProvider/p;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/contentProvider/o;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-virtual {p0, p0, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/p;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/sdgtl/mediahub/spr/contentProvider/o;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sdgtl/mediahub/spr/contentProvider/o;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/sdgtl/mediahub/spr/contentProvider/o;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/q;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/contentProvider/q;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_ae

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/p;->a()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    :sswitch_20
    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_37
    invoke-virtual {p0, v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/p;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    :cond_42
    const/4 v0, 0x0

    goto :goto_37

    :sswitch_44
    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/p;->a(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_54
    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/p;->a(JI)J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    :sswitch_6c
    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/p;->b(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_7c
    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_97

    move v0, v1

    :goto_88
    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/p;->a(Z)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_92

    move v2, v1

    :cond_92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :cond_97
    move v0, v2

    goto :goto_88

    :sswitch_99
    const-string v0, "com.sdgtl.mediahub.spr.contentProvider.IContentProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/p;->b()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a8

    move v2, v1

    :cond_a8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    nop

    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_44
        0x4 -> :sswitch_54
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_7c
        0x7 -> :sswitch_99
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
