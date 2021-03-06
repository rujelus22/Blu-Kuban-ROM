.class public abstract Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.super Landroid/os/Binder;
.source "IConnectionStateListener.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IConnectionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IConnectionStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IConnectionStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IConnectionStateListener"

.field static final TRANSACTION_connectionStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IConnectionStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IConnectionStateListener;
    .registers 4
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "com.google.android.gtalkservice.IConnectionStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_16

    instance-of v2, v1, Lcom/google/android/gtalkservice/IConnectionStateListener;

    if-eqz v2, :cond_16

    .line 33
    move-object v0, v1

    check-cast v0, Lcom/google/android/gtalkservice/IConnectionStateListener;

    move-object p0, v0

    move-object v1, p0

    goto :goto_3

    .line 35
    :cond_16
    new-instance v1, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_40

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 47
    :sswitch_a
    const-string v0, "com.google.android.gtalkservice.IConnectionStateListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    .line 48
    goto :goto_9

    .line 52
    :sswitch_11
    const-string v0, "com.google.android.gtalkservice.IConnectionStateListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 55
    sget-object v0, Lcom/google/android/gtalkservice/ConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/ConnectionState;

    move-object v1, v0

    .line 61
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 62
    sget-object v0, Lcom/google/android/gtalkservice/ConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/ConnectionError;

    .line 67
    :goto_33
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    .line 69
    goto :goto_9

    :cond_3b
    move-object v1, v3

    .line 58
    goto :goto_25

    :cond_3d
    move-object v0, v3

    .line 65
    goto :goto_33

    .line 43
    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_11
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
