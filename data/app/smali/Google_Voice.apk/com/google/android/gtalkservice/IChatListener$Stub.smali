.class public abstract Lcom/google/android/gtalkservice/IChatListener$Stub;
.super Landroid/os/Binder;
.source "IChatListener.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IChatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IChatListener"

.field static final TRANSACTION_chatClosed:I = 0x4

.field static final TRANSACTION_chatRead:I = 0x3

.field static final TRANSACTION_convertedToGroupChat:I = 0x5

.field static final TRANSACTION_newMessageReceived:I = 0x1

.field static final TRANSACTION_newMessageSent:I = 0x2

.field static final TRANSACTION_participantJoined:I = 0x6

.field static final TRANSACTION_participantLeft:I = 0x7

.field static final TRANSACTION_useLightweightNotify:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.google.android.gtalkservice.IChatListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gtalkservice/IChatListener;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/google/android/gtalkservice/IChatListener;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/google/android/gtalkservice/IChatListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/IChatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_aa

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_8
    return v6

    .line 47
    :sswitch_9
    const-string v5, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v5, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IChatListener$Stub;->newMessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 63
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_23
    const-string v5, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->newMessageSent(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 72
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_33
    const-string v5, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->chatRead(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 81
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_43
    const-string v5, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->chatClosed(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 90
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_53
    const-string v5, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 97
    .local v2, _arg2:J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gtalkservice/IChatListener$Stub;->convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 103
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:J
    :sswitch_6b
    const-string v5, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IChatListener$Stub;->participantJoined(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 114
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_7f
    const-string v5, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IChatListener$Stub;->participantLeft(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 125
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_94
    const-string v5, "com.google.android.gtalkservice.IChatListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;->useLightweightNotify()Z

    move-result v4

    .line 127
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v4, :cond_a8

    move v5, v6

    :goto_a3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_a8
    const/4 v5, 0x0

    goto :goto_a3

    .line 43
    :sswitch_data_aa
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_33
        0x4 -> :sswitch_43
        0x5 -> :sswitch_53
        0x6 -> :sswitch_6b
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_94
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
