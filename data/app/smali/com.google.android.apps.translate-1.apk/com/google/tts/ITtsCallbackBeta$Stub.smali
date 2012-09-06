.class public abstract Lcom/google/tts/ITtsCallbackBeta$Stub;
.super Landroid/os/Binder;
.source "ITtsCallbackBeta.java"

# interfaces
.implements Lcom/google/tts/ITtsCallbackBeta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/ITtsCallbackBeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tts/ITtsCallbackBeta$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.tts.ITtsCallbackBeta"

.field static final TRANSACTION_utteranceCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.google.tts.ITtsCallbackBeta"

    invoke-virtual {p0, p0, v0}, Lcom/google/tts/ITtsCallbackBeta$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/tts/ITtsCallbackBeta;
    .registers 3
    .parameter "obj"

    .prologue
    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    .line 42
    :goto_3
    return-object v0

    .line 38
    :cond_4
    const-string v1, "com.google.tts.ITtsCallbackBeta"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/tts/ITtsCallbackBeta;

    if-eqz v1, :cond_13

    .line 40
    check-cast v0, Lcom/google/tts/ITtsCallbackBeta;

    goto :goto_3

    .line 42
    :cond_13
    new-instance v0, Lcom/google/tts/ITtsCallbackBeta$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/tts/ITtsCallbackBeta$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 50
    sparse-switch p1, :sswitch_data_1c

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 54
    :sswitch_9
    const-string v2, "com.google.tts.ITtsCallbackBeta"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 59
    :sswitch_f
    const-string v2, "com.google.tts.ITtsCallbackBeta"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/tts/ITtsCallbackBeta$Stub;->utteranceCompleted(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
