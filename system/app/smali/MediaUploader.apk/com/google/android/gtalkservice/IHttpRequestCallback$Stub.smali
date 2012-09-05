.class public abstract Lcom/google/android/gtalkservice/IHttpRequestCallback$Stub;
.super Landroid/os/Binder;
.source "IHttpRequestCallback.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IHttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IHttpRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IHttpRequestCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IHttpRequestCallback"

.field static final TRANSACTION_requestComplete:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.gtalkservice.IHttpRequestCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IHttpRequestCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IHttpRequestCallback;
    .registers 4
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.google.android.gtalkservice.IHttpRequestCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_16

    instance-of v2, v1, Lcom/google/android/gtalkservice/IHttpRequestCallback;

    if-eqz v2, :cond_16

    .line 28
    move-object v0, v1

    check-cast v0, Lcom/google/android/gtalkservice/IHttpRequestCallback;

    move-object p0, v0

    move-object v1, p0

    goto :goto_3

    .line 30
    :cond_16
    new-instance v1, Lcom/google/android/gtalkservice/IHttpRequestCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gtalkservice/IHttpRequestCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
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
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_1e

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v0, "com.google.android.gtalkservice.IHttpRequestCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_8

    .line 47
    :sswitch_10
    const-string v0, "com.google.android.gtalkservice.IHttpRequestCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IHttpRequestCallback$Stub;->requestComplete([B)V

    move v0, v1

    .line 51
    goto :goto_8

    .line 38
    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
