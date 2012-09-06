.class public abstract Lcom/google/android/music/dl/IDownloadManager$Stub;
.super Landroid/os/Binder;
.source "IDownloadManager.java"

# interfaces
.implements Lcom/google/android/music/dl/IDownloadManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/IDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/IDownloadManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadManager;
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
    const-string v1, "com.google.android.music.dl.IDownloadManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/music/dl/IDownloadManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/google/android/music/dl/IDownloadManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/google/android/music/dl/IDownloadManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/music/dl/IDownloadManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_188

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v5, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v7, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3b

    .line 50
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 56
    .local v0, _arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_23
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 57
    .local v1, _arg1:[Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/IDownloadManager$Stub;->streamSong(Lcom/google/android/music/dl/ContentIdentifier;[Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v2

    .line 58
    .local v2, _result:Lcom/google/android/music/dl/DownloadState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v2, :cond_3d

    .line 60
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v2, p3, v6}, Lcom/google/android/music/dl/DownloadState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 53
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v1           #_arg1:[Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #_result:Lcom/google/android/music/dl/DownloadState;
    :cond_3b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_23

    .line 64
    .restart local v1       #_arg1:[Lcom/google/android/music/dl/ContentIdentifier;
    .restart local v2       #_result:Lcom/google/android/music/dl/DownloadState;
    :cond_3d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v1           #_arg1:[Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #_result:Lcom/google/android/music/dl/DownloadState;
    :sswitch_41
    const-string v7, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6c

    .line 73
    sget-object v7, Lcom/google/android/music/dl/DownloadOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder;

    .line 79
    .local v0, _arg0:Lcom/google/android/music/dl/DownloadOrder;
    :goto_54
    sget-object v7, Lcom/google/android/music/dl/DownloadOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/music/dl/DownloadOrder;

    .line 80
    .local v1, _arg1:[Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/IDownloadManager$Stub;->streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;[Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v2

    .line 81
    .restart local v2       #_result:Lcom/google/android/music/dl/DownloadState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_6e

    .line 83
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v2, p3, v6}, Lcom/google/android/music/dl/DownloadState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 76
    .end local v0           #_arg0:Lcom/google/android/music/dl/DownloadOrder;
    .end local v1           #_arg1:[Lcom/google/android/music/dl/DownloadOrder;
    .end local v2           #_result:Lcom/google/android/music/dl/DownloadState;
    :cond_6c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/DownloadOrder;
    goto :goto_54

    .line 87
    .restart local v1       #_arg1:[Lcom/google/android/music/dl/DownloadOrder;
    .restart local v2       #_result:Lcom/google/android/music/dl/DownloadState;
    :cond_6e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 93
    .end local v0           #_arg0:Lcom/google/android/music/dl/DownloadOrder;
    .end local v1           #_arg1:[Lcom/google/android/music/dl/DownloadOrder;
    .end local v2           #_result:Lcom/google/android/music/dl/DownloadState;
    :sswitch_72
    const-string v7, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_96

    .line 96
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 101
    .local v0, _arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_85
    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v2

    .line 102
    .restart local v2       #_result:Lcom/google/android/music/dl/DownloadState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v2, :cond_98

    .line 104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v2, p3, v6}, Lcom/google/android/music/dl/DownloadState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 99
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #_result:Lcom/google/android/music/dl/DownloadState;
    :cond_96
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_85

    .line 108
    .restart local v2       #_result:Lcom/google/android/music/dl/DownloadState;
    :cond_98
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 114
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #_result:Lcom/google/android/music/dl/DownloadState;
    :sswitch_9d
    const-string v5, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bc

    .line 117
    sget-object v5, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 123
    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/IDownloadManager$Stub;->logStreamingStatusEvent(Lcom/google/android/music/dl/ContentIdentifier;I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 120
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v1           #_arg1:I
    :cond_bc
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_b0

    .line 130
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_be
    const-string v5, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->stop()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 137
    :sswitch_cb
    const-string v7, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->isDownloading()Z

    move-result v2

    .line 139
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v2, :cond_da

    move v5, v6

    :cond_da
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 145
    .end local v2           #_result:Z
    :sswitch_df
    const-string v7, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->isKeepOnDownloaderOn()Z

    move-result v2

    .line 147
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v2, :cond_ee

    move v5, v6

    :cond_ee
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 153
    .end local v2           #_result:Z
    :sswitch_f3
    const-string v5, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->getCurrentDownloads()Ljava/util/List;

    move-result-object v4

    .line 155
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 161
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    :sswitch_104
    const-string v7, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12e

    .line 164
    sget-object v7, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 170
    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadProgressListener;

    move-result-object v1

    .line 171
    .local v1, _arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/IDownloadManager$Stub;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v2

    .line 172
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v2, :cond_129

    move v5, v6

    :cond_129
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 167
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v1           #_arg1:Lcom/google/android/music/dl/IDownloadProgressListener;
    .end local v2           #_result:Z
    :cond_12e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_117

    .line 178
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :sswitch_130
    const-string v5, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadProgressListener;

    move-result-object v0

    .line 181
    .local v0, _arg0:Lcom/google/android/music/dl/IDownloadProgressListener;
    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 187
    .end local v0           #_arg0:Lcom/google/android/music/dl/IDownloadProgressListener;
    :sswitch_145
    const-string v5, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->getAvailableFreeSpace()J

    move-result-wide v2

    .line 189
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 195
    .end local v2           #_result:J
    :sswitch_156
    const-string v5, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->getTotalSpace()J

    move-result-wide v2

    .line 197
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 203
    .end local v2           #_result:J
    :sswitch_167
    const-string v5, "com.google.android.music.dl.IDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_186

    .line 206
    sget-object v5, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    .line 211
    .local v0, _arg0:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_17a
    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/IDownloadManager$Stub;->getDebugInfo(Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 209
    .end local v0           #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #_result:Ljava/lang/String;
    :cond_186
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/music/dl/ContentIdentifier;
    goto :goto_17a

    .line 38
    :sswitch_data_188
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_41
        0x3 -> :sswitch_72
        0x4 -> :sswitch_9d
        0x5 -> :sswitch_be
        0x6 -> :sswitch_cb
        0x7 -> :sswitch_df
        0x8 -> :sswitch_f3
        0x9 -> :sswitch_104
        0xa -> :sswitch_130
        0xb -> :sswitch_145
        0xc -> :sswitch_156
        0xd -> :sswitch_167
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
