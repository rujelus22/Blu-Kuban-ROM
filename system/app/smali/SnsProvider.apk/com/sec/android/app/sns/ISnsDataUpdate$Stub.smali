.class public abstract Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;
.super Landroid/os/Binder;
.source "ISnsDataUpdate.java"

# interfaces
.implements Lcom/sec/android/app/sns/ISnsDataUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/ISnsDataUpdate;
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
    const-string v0, "com.sec.android.app.sns.ISnsDataUpdate"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_58

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_8
    return v5

    .line 42
    :sswitch_9
    const-string v6, "com.sec.android.app.sns.ISnsDataUpdate"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v6, "com.sec.android.app.sns.ISnsDataUpdate"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 51
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26

    move v2, v5

    .line 52
    .local v2, _arg1:Z
    :goto_1f
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;->updateActivityReadFlag(JZ)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 51
    .end local v2           #_arg1:Z
    :cond_26
    const/4 v2, 0x0

    goto :goto_1f

    .line 58
    .end local v0           #_arg0:J
    :sswitch_28
    const-string v6, "com.sec.android.app.sns.ISnsDataUpdate"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, _arg0:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 63
    .local v4, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 64
    .local v2, _arg1:Ljava/util/Map;
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;->updateFriendLinkPhonebook(ILjava/util/Map;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 70
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/util/Map;
    .end local v4           #cl:Ljava/lang/ClassLoader;
    :sswitch_44
    const-string v6, "com.sec.android.app.sns.ISnsDataUpdate"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 74
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 75
    .local v2, _arg1:J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;->updateFriendLinkPhonebookLong(JJ)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_28
        0x3 -> :sswitch_44
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
