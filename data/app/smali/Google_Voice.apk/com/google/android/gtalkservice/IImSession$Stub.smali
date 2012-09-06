.class public abstract Lcom/google/android/gtalkservice/IImSession$Stub;
.super Landroid/os/Binder;
.source "IImSession.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IImSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IImSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IImSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IImSession"

.field static final TRANSACTION_addConnectionStateListener:I = 0x7

.field static final TRANSACTION_addContact:I = 0xd

.field static final TRANSACTION_addGroupChatInvitationListener:I = 0x1b

.field static final TRANSACTION_addRemoteChatListener:I = 0x1d

.field static final TRANSACTION_addRemoteRosterListener:I = 0x1f

.field static final TRANSACTION_approveSubscriptionRequest:I = 0x14

.field static final TRANSACTION_blockContact:I = 0x10

.field static final TRANSACTION_clearContactFlags:I = 0x13

.field static final TRANSACTION_closeAllChatSessions:I = 0x24

.field static final TRANSACTION_createChatSession:I = 0x16

.field static final TRANSACTION_createGroupChatSession:I = 0x18

.field static final TRANSACTION_declineGroupChatInvitation:I = 0x1a

.field static final TRANSACTION_declineSubscriptionRequest:I = 0x15

.field static final TRANSACTION_editContact:I = 0xe

.field static final TRANSACTION_getAccountId:I = 0x2

.field static final TRANSACTION_getChatSession:I = 0x17

.field static final TRANSACTION_getConnectionState:I = 0x6

.field static final TRANSACTION_getPresence:I = 0xa

.field static final TRANSACTION_getServiceProviderId:I = 0x1

.field static final TRANSACTION_getUsername:I = 0x3

.field static final TRANSACTION_goOffRecordInRoom:I = 0x22

.field static final TRANSACTION_goOffRecordWithContacts:I = 0x21

.field static final TRANSACTION_hideContact:I = 0x12

.field static final TRANSACTION_isOffRecordWithContact:I = 0x23

.field static final TRANSACTION_joinGroupChatSession:I = 0x19

.field static final TRANSACTION_login:I = 0x4

.field static final TRANSACTION_logout:I = 0x5

.field static final TRANSACTION_pinContact:I = 0x11

.field static final TRANSACTION_pruneOldChatSessions:I = 0x25

.field static final TRANSACTION_removeConnectionStateListener:I = 0x8

.field static final TRANSACTION_removeContact:I = 0xf

.field static final TRANSACTION_removeGroupChatInvitationListener:I = 0x1c

.field static final TRANSACTION_removeRemoteChatListener:I = 0x1e

.field static final TRANSACTION_removeRemoteRosterListener:I = 0x20

.field static final TRANSACTION_setPresence:I = 0x9

.field static final TRANSACTION_uploadAvatar:I = 0xb

.field static final TRANSACTION_uploadAvatarFromDb:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IImSession;
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
    const-string v1, "com.google.android.gtalkservice.IImSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/google/android/gtalkservice/IImSession;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/google/android/gtalkservice/IImSession$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/gtalkservice/IImSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_306

    .line 416
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_a
    return v7

    .line 47
    :sswitch_b
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 52
    :sswitch_11
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getServiceProviderId()J

    move-result-wide v4

    .line 54
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_a

    .line 60
    .end local v4           #_result:J
    :sswitch_21
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getAccountId()J

    move-result-wide v4

    .line 62
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_a

    .line 68
    .end local v4           #_result:J
    :sswitch_31
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 76
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_41
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_55

    move v3, v7

    .line 83
    .local v3, _arg2:Z
    :cond_55
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gtalkservice/IImSession$Stub;->login(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 89
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Z
    :sswitch_5c
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->logout()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 96
    :sswitch_68
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v4

    .line 98
    .local v4, _result:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v4, :cond_7d

    .line 100
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {v4, p3, v7}, Lcom/google/android/gtalkservice/ConnectionState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 104
    :cond_7d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 110
    .end local v4           #_result:Lcom/google/android/gtalkservice/ConnectionState;
    :sswitch_81
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IConnectionStateListener;

    move-result-object v0

    .line 113
    .local v0, _arg0:Lcom/google/android/gtalkservice/IConnectionStateListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 119
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IConnectionStateListener;
    :sswitch_96
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IConnectionStateListener;

    move-result-object v0

    .line 122
    .restart local v0       #_arg0:Lcom/google/android/gtalkservice/IConnectionStateListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 128
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IConnectionStateListener;
    :sswitch_ab
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c6

    .line 131
    sget-object v8, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence;

    .line 136
    .local v0, _arg0:Lcom/google/android/gtalkservice/Presence;
    :goto_be
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->setPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 134
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/Presence;
    :cond_c6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/gtalkservice/Presence;
    goto :goto_be

    .line 142
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/Presence;
    :sswitch_c8
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v4

    .line 144
    .local v4, _result:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v4, :cond_de

    .line 146
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {v4, p3, v7}, Lcom/google/android/gtalkservice/Presence;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 150
    :cond_de
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 156
    .end local v4           #_result:Lcom/google/android/gtalkservice/Presence;
    :sswitch_e3
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_fb

    .line 159
    sget-object v8, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 164
    .local v0, _arg0:Landroid/graphics/Bitmap;
    :goto_f6
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->uploadAvatar(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a

    .line 162
    .end local v0           #_arg0:Landroid/graphics/Bitmap;
    :cond_fb
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/graphics/Bitmap;
    goto :goto_f6

    .line 169
    .end local v0           #_arg0:Landroid/graphics/Bitmap;
    :sswitch_fd
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->uploadAvatarFromDb()V

    goto/16 :goto_a

    .line 175
    :sswitch_107
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gtalkservice/IImSession$Stub;->addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_a

    .line 187
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:[Ljava/lang/String;
    :sswitch_11d
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3       #_arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gtalkservice/IImSession$Stub;->editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_a

    .line 199
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:[Ljava/lang/String;
    :sswitch_133
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeContact(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 207
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_141
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->blockContact(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 215
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_14f
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->pinContact(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 223
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_15d
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->hideContact(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 231
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_16b
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->clearContactFlags(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 239
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_179
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 246
    .restart local v3       #_arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gtalkservice/IImSession$Stub;->approveSubscriptionRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 252
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:[Ljava/lang/String;
    :sswitch_192
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->declineSubscriptionRequest(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 261
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1a3
    const-string v9, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v4

    .line 265
    .local v4, _result:Lcom/google/android/gtalkservice/IChatSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v4, :cond_1b9

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_1b9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 271
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Lcom/google/android/gtalkservice/IChatSession;
    :sswitch_1be
    const-string v9, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v4

    .line 275
    .restart local v4       #_result:Lcom/google/android/gtalkservice/IChatSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v4, :cond_1d4

    invoke-interface {v4}, Lcom/google/android/gtalkservice/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_1d4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 281
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Lcom/google/android/gtalkservice/IChatSession;
    :sswitch_1d9
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 292
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[Ljava/lang/String;
    :sswitch_1ee
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gtalkservice/IImSession$Stub;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 305
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_207
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 316
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_21c
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    move-result-object v0

    .line 319
    .local v0, _arg0:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 325
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    :sswitch_231
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    move-result-object v0

    .line 328
    .restart local v0       #_arg0:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 334
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    :sswitch_246
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 337
    .local v0, _arg0:Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 343
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_25b
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gtalkservice/IChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IChatListener;

    move-result-object v0

    .line 346
    .restart local v0       #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 352
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IChatListener;
    :sswitch_270
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IRosterListener;

    move-result-object v0

    .line 355
    .local v0, _arg0:Lcom/google/android/gtalkservice/IRosterListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 361
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IRosterListener;
    :sswitch_285
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gtalkservice/IRosterListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IRosterListener;

    move-result-object v0

    .line 364
    .restart local v0       #_arg0:Lcom/google/android/gtalkservice/IRosterListener;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 370
    .end local v0           #_arg0:Lcom/google/android/gtalkservice/IRosterListener;
    :sswitch_29a
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 373
    .local v6, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 375
    .local v0, _arg0:Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2ba

    move v2, v7

    .line 376
    .local v2, _arg1:Z
    :goto_2b2
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->goOffRecordWithContacts(Ljava/util/List;Z)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .end local v2           #_arg1:Z
    :cond_2ba
    move v2, v3

    .line 375
    goto :goto_2b2

    .line 382
    .end local v0           #_arg0:Ljava/util/List;
    .end local v6           #cl:Ljava/lang/ClassLoader;
    :sswitch_2bc
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2d4

    move v2, v7

    .line 387
    .restart local v2       #_arg1:Z
    :goto_2cc
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gtalkservice/IImSession$Stub;->goOffRecordInRoom(Ljava/lang/String;Z)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .end local v2           #_arg1:Z
    :cond_2d4
    move v2, v3

    .line 386
    goto :goto_2cc

    .line 393
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2d6
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IImSession$Stub;->isOffRecordWithContact(Ljava/lang/String;)Z

    move-result v4

    .line 397
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v4, :cond_2e9

    move v3, v7

    :cond_2e9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 403
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2ee
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IImSession$Stub;->closeAllChatSessions()V

    goto/16 :goto_a

    .line 409
    :sswitch_2f8
    const-string v8, "com.google.android.gtalkservice.IImSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 412
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IImSession$Stub;->pruneOldChatSessions(J)V

    goto/16 :goto_a

    .line 43
    :sswitch_data_306
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_21
        0x3 -> :sswitch_31
        0x4 -> :sswitch_41
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_68
        0x7 -> :sswitch_81
        0x8 -> :sswitch_96
        0x9 -> :sswitch_ab
        0xa -> :sswitch_c8
        0xb -> :sswitch_e3
        0xc -> :sswitch_fd
        0xd -> :sswitch_107
        0xe -> :sswitch_11d
        0xf -> :sswitch_133
        0x10 -> :sswitch_141
        0x11 -> :sswitch_14f
        0x12 -> :sswitch_15d
        0x13 -> :sswitch_16b
        0x14 -> :sswitch_179
        0x15 -> :sswitch_192
        0x16 -> :sswitch_1a3
        0x17 -> :sswitch_1be
        0x18 -> :sswitch_1d9
        0x19 -> :sswitch_1ee
        0x1a -> :sswitch_207
        0x1b -> :sswitch_21c
        0x1c -> :sswitch_231
        0x1d -> :sswitch_246
        0x1e -> :sswitch_25b
        0x1f -> :sswitch_270
        0x20 -> :sswitch_285
        0x21 -> :sswitch_29a
        0x22 -> :sswitch_2bc
        0x23 -> :sswitch_2d6
        0x24 -> :sswitch_2ee
        0x25 -> :sswitch_2f8
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
