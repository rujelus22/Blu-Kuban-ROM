.class public abstract Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IEmailServiceCallback.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IEmailServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailServiceCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailServiceCallback;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 19
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
    .line 38
    sparse-switch p1, :sswitch_data_80

    .line 98
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 42
    :sswitch_8
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_7

    .line 47
    :sswitch_11
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 51
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 53
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 54
    .local v6, _arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxListStatus(JII)V

    .line 55
    const/4 v1, 0x1

    goto :goto_7

    .line 59
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_29
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 63
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 65
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 66
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 67
    const/4 v1, 0x1

    goto :goto_7

    .line 71
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_41
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 75
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 77
    .local v4, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 79
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg3:I
    move-object v1, p0

    .line 80
    invoke-virtual/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    .line 81
    const/4 v1, 0x1

    goto :goto_7

    .line 85
    .end local v2           #_arg0:J
    .end local v4           #_arg1:J
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    :sswitch_5e
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 89
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 93
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg3:I
    move-object v8, p0

    move-wide v9, v2

    move-object v11, v4

    move v12, v6

    move v13, v7

    .line 94
    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->sendMessageStatus(JLjava/lang/String;II)V

    .line 95
    const/4 v1, 0x1

    goto :goto_7

    .line 38
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_29
        0x3 -> :sswitch_41
        0x4 -> :sswitch_5e
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
