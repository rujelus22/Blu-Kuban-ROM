.class public abstract Lcom/a/a/a/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.vending.licensing.ILicenseResultListener"

    invoke-virtual {p0, p0, v0}, Lcom/a/a/a/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/a/a/a/a;
    .registers 3
    .parameter

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v0, "com.android.vending.licensing.ILicenseResultListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/a/a/a/a;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/a/a/a/a;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/a/a/a/c;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_24

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 45
    :sswitch_9
    const-string v1, "com.android.vending.licensing.ILicenseResultListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v1, "com.android.vending.licensing.ILicenseResultListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {p0, v1, v2, v3}, Lcom/a/a/a/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 41
    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
