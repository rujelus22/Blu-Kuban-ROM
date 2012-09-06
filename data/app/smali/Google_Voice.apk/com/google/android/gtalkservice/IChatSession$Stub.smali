.class public abstract Lcom/google/android/gtalkservice/IChatSession$Stub;
.super Landroid/os/Binder;
.source "IChatSession.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IChatSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IChatSession"

.field static final TRANSACTION_addRemoteChatListener:I = 0x9

.field static final TRANSACTION_getParticipants:I = 0x3

.field static final TRANSACTION_getUnsentComposedMessage:I = 0x8

.field static final TRANSACTION_inviteContact:I = 0x4

.field static final TRANSACTION_isGroupChat:I = 0x1

.field static final TRANSACTION_isOffTheRecord:I = 0xb

.field static final TRANSACTION_leave:I = 0x5

.field static final TRANSACTION_markAsRead:I = 0x2

.field static final TRANSACTION_removeRemoteChatListener:I = 0xa

.field static final TRANSACTION_saveUnsentComposedMessage:I = 0x7

.field static final TRANSACTION_sendChatMessage:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatSession;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "com.google.android.gtalkservice.IChatSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Lcom/google/android/gtalkservice/IChatSession;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/IChatSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_c4

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 48
    :sswitch_a
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :sswitch_10
    const-string v4, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->isGroupChat()Z

    move-result v1

    .line 55
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v1, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 61
    .end local v1           #_result:Z
    :sswitch_23
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->markAsRead()V

    goto :goto_9

    .line 67
    :sswitch_2c
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getParticipants()[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_9

    .line 75
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_3c
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->inviteContact(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 84
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4c
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->leave()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 91
    :sswitch_58
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->sendChatMessage(Ljava/lang/String;)V

    goto :goto_9

    .line 99
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_65
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->saveUnsentComposedMessage(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 108
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_75
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->getUnsentComposedMessage()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 116
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_85
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 119
    .local v0, _arg0:Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 125
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_9a
    const-string v2, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 128
    .restart local v0       #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 134
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_af
    const-string v4, "com.google.android.gtalkservice.IChatSession"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IChatSession$Stub;->isOffTheRecord()Z

    move-result v1

    .line 136
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v1, :cond_be

    move v2, v3

    :cond_be
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 44
    nop

    :sswitch_data_c4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_4c
        0x6 -> :sswitch_58
        0x7 -> :sswitch_65
        0x8 -> :sswitch_75
        0x9 -> :sswitch_85
        0xa -> :sswitch_9a
        0xb -> :sswitch_af
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
