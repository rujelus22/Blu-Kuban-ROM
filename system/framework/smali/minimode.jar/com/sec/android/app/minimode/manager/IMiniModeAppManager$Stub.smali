.class public abstract Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;
.super Landroid/os/Binder;
.source "IMiniModeAppManager.java"

# interfaces
.implements Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.minimode.manager.IMiniModeAppManager"

.field static final TRANSACTION_closeAll:I = 0x6

.field static final TRANSACTION_closeOthers:I = 0x7

.field static final TRANSACTION_getAllRunningMiniApps:I = 0x12

.field static final TRANSACTION_getInstanceState:I = 0x11

.field static final TRANSACTION_getLastPosition:I = 0x9

.field static final TRANSACTION_getMiniModeAppCallback:I = 0x13

.field static final TRANSACTION_getPosition:I = 0xa

.field static final TRANSACTION_isOccupiedPosition:I = 0xd

.field static final TRANSACTION_move:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0xe

.field static final TRANSACTION_removePosition:I = 0xc

.field static final TRANSACTION_requestFocus:I = 0x5

.field static final TRANSACTION_setInstanceState:I = 0x10

.field static final TRANSACTION_setPosition:I = 0x8

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startWithPosition:I = 0x2

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0xf

.field static final TRANSACTION_updatePosition:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
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
    const-string v1, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_292

    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2a

    .line 50
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 55
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->start(Landroid/content/ComponentName;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 53
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_2a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_23

    .line 61
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4e

    .line 64
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 70
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->startWithPosition(Landroid/content/ComponentName;II)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 67
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :cond_4e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3f

    .line 79
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_50
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6a

    .line 82
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 87
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_63
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->stop(Landroid/content/ComponentName;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 85
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_6a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_63

    .line 93
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_6c
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8f

    .line 96
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 102
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->move(Landroid/content/ComponentName;II)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 99
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :cond_8f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_7f

    .line 111
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_91
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b3

    .line 114
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 120
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b5

    move v1, v6

    .line 121
    .local v1, _arg1:Z
    :goto_ab
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->requestFocus(Landroid/content/ComponentName;Z)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 117
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_b3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_a4

    :cond_b5
    move v1, v7

    .line 120
    goto :goto_ab

    .line 127
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_b7
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->closeAll()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 134
    :sswitch_c4
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_df

    .line 137
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 142
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_d7
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->closeOthers(Landroid/content/ComponentName;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 140
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_df
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_d7

    .line 148
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_e1
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_108

    .line 153
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 159
    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->setPosition(ILandroid/content/ComponentName;II)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 156
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :cond_108
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_f8

    .line 168
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_10a
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getLastPosition(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 172
    .local v4, _result:Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v4, :cond_124

    .line 174
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 178
    :cond_124
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 184
    .end local v0           #_arg0:I
    .end local v4           #_result:Landroid/graphics/Rect;
    :sswitch_129
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_151

    .line 189
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 194
    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_140
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v4

    .line 195
    .restart local v4       #_result:Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v4, :cond_153

    .line 197
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 192
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/graphics/Rect;
    :cond_151
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_140

    .line 201
    .restart local v4       #_result:Landroid/graphics/Rect;
    :cond_153
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 207
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/graphics/Rect;
    :sswitch_158
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17f

    .line 212
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 218
    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->updatePosition(ILandroid/content/ComponentName;II)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 215
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :cond_17f
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_16f

    .line 227
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_181
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a0

    .line 232
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 237
    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_198
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->removePosition(ILandroid/content/ComponentName;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 235
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :cond_1a0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_198

    .line 243
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_1a2
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->isOccupiedPosition(III)Z

    move-result v4

    .line 251
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v4, :cond_1bd

    move v7, v6

    :cond_1bd
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 257
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v4           #_result:Z
    :sswitch_1c2
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-result-object v0

    .line 261
    .local v0, _arg0:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1e9

    .line 262
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 268
    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_1dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 265
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v2           #_arg2:I
    :cond_1e9
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_1dd

    .line 275
    .end local v0           #_arg0:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_1eb
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-result-object v0

    .line 278
    .restart local v0       #_arg0:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 284
    .end local v0           #_arg0:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :sswitch_200
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_229

    .line 287
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 293
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22b

    .line 294
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 299
    .local v1, _arg1:Landroid/os/Bundle;
    :goto_221
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 290
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/Bundle;
    :cond_229
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_213

    .line 297
    :cond_22b
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_221

    .line 305
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/Bundle;
    :sswitch_22d
    const-string v8, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_251

    .line 308
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 313
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_240
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 314
    .local v4, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v4, :cond_253

    .line 316
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    invoke-virtual {v4, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 311
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/os/Bundle;
    :cond_251
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_240

    .line 320
    .restart local v4       #_result:Landroid/os/Bundle;
    :cond_253
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 326
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_result:Landroid/os/Bundle;
    :sswitch_258
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getAllRunningMiniApps()Ljava/util/List;

    move-result-object v5

    .line 328
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 334
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_269
    const-string v7, "com.sec.android.app.minimode.manager.IMiniModeAppManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_28e

    .line 337
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 342
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_27c
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-result-object v4

    .line 343
    .local v4, _result:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v4, :cond_290

    invoke-interface {v4}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_289
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 340
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_result:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :cond_28e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_27c

    .line 344
    .restart local v4       #_result:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :cond_290
    const/4 v7, 0x0

    goto :goto_289

    .line 38
    :sswitch_data_292
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_50
        0x4 -> :sswitch_6c
        0x5 -> :sswitch_91
        0x6 -> :sswitch_b7
        0x7 -> :sswitch_c4
        0x8 -> :sswitch_e1
        0x9 -> :sswitch_10a
        0xa -> :sswitch_129
        0xb -> :sswitch_158
        0xc -> :sswitch_181
        0xd -> :sswitch_1a2
        0xe -> :sswitch_1c2
        0xf -> :sswitch_1eb
        0x10 -> :sswitch_200
        0x11 -> :sswitch_22d
        0x12 -> :sswitch_258
        0x13 -> :sswitch_269
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
