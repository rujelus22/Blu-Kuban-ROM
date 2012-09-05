.class public abstract Lcom/sec/android/app/sns/ISnsService$Stub;
.super Landroid/os/Binder;
.source "ISnsService.java"

# interfaces
.implements Lcom/sec/android/app/sns/ISnsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/ISnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.sns.ISnsService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/sns/ISnsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_9e

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 42
    :sswitch_9
    const-string v2, "com.sec.android.app.sns.ISnsService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v2, "com.sec.android.app.sns.ISnsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsRequesterCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/sec/android/app/sns/ISnsRequesterCallback;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/ISnsService$Stub;->registerCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)I

    move-result v1

    .line 51
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 57
    .end local v0           #_arg0:Lcom/sec/android/app/sns/ISnsRequesterCallback;
    .end local v1           #_result:I
    :sswitch_27
    const-string v2, "com.sec.android.app.sns.ISnsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsRequesterCallback;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Lcom/sec/android/app/sns/ISnsRequesterCallback;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/ISnsService$Stub;->unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 66
    .end local v0           #_arg0:Lcom/sec/android/app/sns/ISnsRequesterCallback;
    :sswitch_3b
    const-string v2, "com.sec.android.app.sns.ISnsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/ISnsService$Stub;->isLoggedIn(I)I

    move-result v1

    .line 70
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 76
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_4f
    const-string v2, "com.sec.android.app.sns.ISnsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/ISnsService$Stub;->getLoggedInAccount(I)[Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_8

    .line 86
    .end local v0           #_arg0:I
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_63
    const-string v2, "com.sec.android.app.sns.ISnsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/sns/ISnsService$Stub;->getSessionKeys()[Ljava/lang/String;

    move-result-object v1

    .line 88
    .restart local v1       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_8

    .line 94
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_73
    const-string v2, "com.sec.android.app.sns.ISnsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/ISnsService$Stub;->setSyncPendingState(I)Z

    move-result v1

    .line 98
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_8b

    move v2, v3

    :goto_86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_8b
    const/4 v2, 0x0

    goto :goto_86

    .line 104
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_8d
    const-string v2, "com.sec.android.app.sns.ISnsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/ISnsService$Stub;->setSessionInvalid(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 38
    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_63
        0x6 -> :sswitch_73
        0x7 -> :sswitch_8d
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
