.class public abstract Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "IPhoneRestrictionPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IPhoneRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IPhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IPhoneRestrictionPolicy"

.field static final TRANSACTION_addIncomingCallRestriction:I = 0x6

.field static final TRANSACTION_addIncomingSmsRestriction:I = 0x1b

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x13

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x27

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x14

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x28

.field static final TRANSACTION_addOutgoingCallRestriction:I = 0x5

.field static final TRANSACTION_addOutgoingSmsRestriction:I = 0x1a

.field static final TRANSACTION_canIncomingCall:I = 0xa

.field static final TRANSACTION_canIncomingSms:I = 0x1f

.field static final TRANSACTION_canOutgoingCall:I = 0x9

.field static final TRANSACTION_canOutgoingSms:I = 0x1e

.field static final TRANSACTION_checkDataCallLimit:I = 0x30

.field static final TRANSACTION_checkEnableUseOfPacketData:I = 0x2f

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x29

.field static final TRANSACTION_enableLimitNumberOfCalls:I = 0xd

.field static final TRANSACTION_enableLimitNumberOfSms:I = 0x20

.field static final TRANSACTION_getDataCallLimitEnabled:I = 0x2b

.field static final TRANSACTION_getEmergencyCallOnly:I = 0xc

.field static final TRANSACTION_getIncomingCallRestriction:I = 0x2

.field static final TRANSACTION_getIncomingSmsRestriction:I = 0x17

.field static final TRANSACTION_getLimitOfDataCalls:I = 0x2d

.field static final TRANSACTION_getLimitOfIncomingCalls:I = 0x10

.field static final TRANSACTION_getLimitOfIncomingSms:I = 0x24

.field static final TRANSACTION_getLimitOfOutgoingCalls:I = 0x12

.field static final TRANSACTION_getLimitOfOutgoingSms:I = 0x26

.field static final TRANSACTION_getOutgoingCallRestriction:I = 0x1

.field static final TRANSACTION_getOutgoingSmsRestriction:I = 0x16

.field static final TRANSACTION_isLimitNumberOfCallsEnabled:I = 0xe

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x21

.field static final TRANSACTION_removeIncomingCallRestriction:I = 0x4

.field static final TRANSACTION_removeIncomingSmsRestriction:I = 0x19

.field static final TRANSACTION_removeOutgoingCallRestriction:I = 0x3

.field static final TRANSACTION_removeOutgoingSmsRestriction:I = 0x18

.field static final TRANSACTION_resetCallsCount:I = 0x15

.field static final TRANSACTION_resetDataCallLimitCounter:I = 0x2e

.field static final TRANSACTION_resetSmsCount:I = 0x22

.field static final TRANSACTION_setDataCallLimitEnabled:I = 0x2a

.field static final TRANSACTION_setEmergencyCallOnly:I = 0xb

.field static final TRANSACTION_setIncomingCallRestriction:I = 0x8

.field static final TRANSACTION_setIncomingSmsRestriction:I = 0x1d

.field static final TRANSACTION_setLimitOfDataCalls:I = 0x2c

.field static final TRANSACTION_setLimitOfIncomingCalls:I = 0xf

.field static final TRANSACTION_setLimitOfIncomingSms:I = 0x23

.field static final TRANSACTION_setLimitOfOutgoingCalls:I = 0x11

.field static final TRANSACTION_setLimitOfOutgoingSms:I = 0x25

.field static final TRANSACTION_setOutgoingCallRestriction:I = 0x7

.field static final TRANSACTION_setOutgoingSmsRestriction:I = 0x1c

.field static final TRANSACTION_updateDataLimitState:I = 0x32

.field static final TRANSACTION_updateDateAndDataCallCounters:I = 0x31


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;
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
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/app/enterprise/IPhoneRestrictionPolicy;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_4aa

    .line 530
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 42
    :sswitch_a
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    move v1, v9

    .line 50
    .local v1, _arg0:Z
    :goto_1c
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getOutgoingCallRestriction(Z)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Ljava/lang/String;
    :cond_27
    move v1, v10

    .line 49
    goto :goto_1c

    .line 57
    :sswitch_29
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    move v1, v9

    .line 60
    .restart local v1       #_arg0:Z
    :goto_35
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getIncomingCallRestriction(Z)Ljava/lang/String;

    move-result-object v7

    .line 61
    .restart local v7       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Ljava/lang/String;
    :cond_40
    move v1, v10

    .line 59
    goto :goto_35

    .line 67
    :sswitch_42
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeOutgoingCallRestriction()Z

    move-result v7

    .line 69
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v7, :cond_51

    move v10, v9

    :cond_51
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 75
    .end local v7           #_result:Z
    :sswitch_55
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeIncomingCallRestriction()Z

    move-result v7

    .line 77
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v7, :cond_64

    move v10, v9

    :cond_64
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 83
    .end local v7           #_result:Z
    :sswitch_68
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 87
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v7, :cond_7b

    move v10, v9

    :cond_7b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 93
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_7f
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 97
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v7, :cond_92

    move v10, v9

    :cond_92
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 103
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_97
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 107
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v7, :cond_aa

    move v10, v9

    :cond_aa
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 113
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_af
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 117
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v7, :cond_c2

    move v10, v9

    :cond_c2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 123
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_c7
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v7

    .line 127
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v7, :cond_da

    move v10, v9

    :cond_da
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_df
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v7

    .line 137
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v7, :cond_f2

    move v10, v9

    :cond_f2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 143
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_f7
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_112

    move v1, v9

    .line 146
    .local v1, _arg0:Z
    :goto_103
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setEmergencyCallOnly(Z)Z

    move-result v7

    .line 147
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v7, :cond_10d

    move v10, v9

    :cond_10d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_112
    move v1, v10

    .line 145
    goto :goto_103

    .line 153
    :sswitch_114
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12f

    move v1, v9

    .line 156
    .restart local v1       #_arg0:Z
    :goto_120
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v7

    .line 157
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v7, :cond_12a

    move v10, v9

    :cond_12a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_12f
    move v1, v10

    .line 155
    goto :goto_120

    .line 163
    :sswitch_131
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14c

    move v1, v9

    .line 166
    .restart local v1       #_arg0:Z
    :goto_13d
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->enableLimitNumberOfCalls(Z)Z

    move-result v7

    .line 167
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v7, :cond_147

    move v10, v9

    :cond_147
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_14c
    move v1, v10

    .line 165
    goto :goto_13d

    .line 173
    :sswitch_14e
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isLimitNumberOfCallsEnabled()Z

    move-result v7

    .line 175
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v7, :cond_15d

    move v10, v9

    :cond_15d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 181
    .end local v7           #_result:Z
    :sswitch_162
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .local v3, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 188
    .local v5, _arg2:I
    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfIncomingCalls(III)Z

    move-result v7

    .line 189
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v7, :cond_17d

    move v10, v9

    :cond_17d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 195
    .end local v1           #_arg0:I
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v7           #_result:Z
    :sswitch_182
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfIncomingCalls(I)I

    move-result v7

    .line 199
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 205
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_197
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    .restart local v3       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 212
    .restart local v5       #_arg2:I
    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfOutgoingCalls(III)Z

    move-result v7

    .line 213
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v7, :cond_1b2

    move v10, v9

    :cond_1b2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 219
    .end local v1           #_arg0:I
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v7           #_result:Z
    :sswitch_1b7
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfOutgoingCalls(I)I

    move-result v7

    .line 223
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 229
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_1cc
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfIncomingCalls()Z

    move-result v7

    .line 231
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v7, :cond_1db

    move v10, v9

    :cond_1db
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 237
    .end local v7           #_result:Z
    :sswitch_1e0
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v7

    .line 239
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v7, :cond_1ef

    move v10, v9

    :cond_1ef
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 245
    .end local v7           #_result:Z
    :sswitch_1f4
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetCallsCount()Z

    move-result v7

    .line 247
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v7, :cond_203

    move v10, v9

    :cond_203
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 253
    .end local v7           #_result:Z
    :sswitch_208
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_220

    move v1, v9

    .line 256
    .local v1, _arg0:Z
    :goto_214
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getOutgoingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Ljava/lang/String;
    :cond_220
    move v1, v10

    .line 255
    goto :goto_214

    .line 263
    :sswitch_222
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23a

    move v1, v9

    .line 266
    .restart local v1       #_arg0:Z
    :goto_22e
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getIncomingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v7

    .line 267
    .restart local v7       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Ljava/lang/String;
    :cond_23a
    move v1, v10

    .line 265
    goto :goto_22e

    .line 273
    :sswitch_23c
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeOutgoingSmsRestriction()Z

    move-result v7

    .line 275
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v7, :cond_24b

    move v10, v9

    :cond_24b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 281
    .end local v7           #_result:Z
    :sswitch_250
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeIncomingSmsRestriction()Z

    move-result v7

    .line 283
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v7, :cond_25f

    move v10, v9

    :cond_25f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 289
    .end local v7           #_result:Z
    :sswitch_264
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 293
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v7, :cond_277

    move v10, v9

    :cond_277
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 299
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_27c
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 303
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v7, :cond_28f

    move v10, v9

    :cond_28f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 309
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_294
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 313
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v7, :cond_2a7

    move v10, v9

    :cond_2a7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 319
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_2ac
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 323
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v7, :cond_2bf

    move v10, v9

    :cond_2bf
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 329
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_2c4
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v7

    .line 333
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v7, :cond_2d7

    move v10, v9

    :cond_2d7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 339
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_2dc
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v7

    .line 343
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v7, :cond_2ef

    move v10, v9

    :cond_2ef
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 349
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_2f4
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30f

    move v1, v9

    .line 352
    .local v1, _arg0:Z
    :goto_300
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->enableLimitNumberOfSms(Z)Z

    move-result v7

    .line 353
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v7, :cond_30a

    move v10, v9

    :cond_30a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_30f
    move v1, v10

    .line 351
    goto :goto_300

    .line 359
    :sswitch_311
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v7

    .line 361
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v7, :cond_320

    move v10, v9

    :cond_320
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 367
    .end local v7           #_result:Z
    :sswitch_325
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetSmsCount()Z

    move-result v7

    .line 369
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v7, :cond_334

    move v10, v9

    :cond_334
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 375
    .end local v7           #_result:Z
    :sswitch_339
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .restart local v3       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 382
    .restart local v5       #_arg2:I
    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfIncomingSms(III)Z

    move-result v7

    .line 383
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v7, :cond_354

    move v10, v9

    :cond_354
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 389
    .end local v1           #_arg0:I
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v7           #_result:Z
    :sswitch_359
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 392
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfIncomingSms(I)I

    move-result v7

    .line 393
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 399
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_36e
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 405
    .restart local v3       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 406
    .restart local v5       #_arg2:I
    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfOutgoingSms(III)Z

    move-result v7

    .line 407
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v7, :cond_389

    move v10, v9

    :cond_389
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 413
    .end local v1           #_arg0:I
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v7           #_result:Z
    :sswitch_38e
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 416
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfOutgoingSms(I)I

    move-result v7

    .line 417
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 423
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_3a3
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfIncomingSms()Z

    move-result v7

    .line 425
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v7, :cond_3b2

    move v10, v9

    :cond_3b2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 431
    .end local v7           #_result:Z
    :sswitch_3b7
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfOutgoingSms()Z

    move-result v7

    .line 433
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v7, :cond_3c6

    move v10, v9

    :cond_3c6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 439
    .end local v7           #_result:Z
    :sswitch_3cb
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v7

    .line 441
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v7, :cond_3da

    move v10, v9

    :cond_3da
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 447
    .end local v7           #_result:Z
    :sswitch_3df
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3fa

    move v1, v9

    .line 450
    .local v1, _arg0:Z
    :goto_3eb
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setDataCallLimitEnabled(Z)Z

    move-result v7

    .line 451
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v7, :cond_3f5

    move v10, v9

    :cond_3f5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_3fa
    move v1, v10

    .line 449
    goto :goto_3eb

    .line 457
    :sswitch_3fc
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getDataCallLimitEnabled()Z

    move-result v7

    .line 459
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v7, :cond_40b

    move v10, v9

    :cond_40b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 465
    .end local v7           #_result:Z
    :sswitch_410
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 469
    .local v1, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 471
    .local v3, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .local v5, _arg2:J
    move-object v0, p0

    .line 472
    invoke-virtual/range {v0 .. v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfDataCalls(JJJ)Z

    move-result v7

    .line 473
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v7, :cond_42c

    move v10, v9

    :cond_42c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 479
    .end local v1           #_arg0:J
    .end local v3           #_arg1:J
    .end local v5           #_arg2:J
    .end local v7           #_result:Z
    :sswitch_431
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfDataCalls(I)J

    move-result-wide v7

    .line 483
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 489
    .end local v1           #_arg0:I
    .end local v7           #_result:J
    :sswitch_446
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetDataCallLimitCounter()Z

    move-result v7

    .line 491
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v7, :cond_455

    move v10, v9

    :cond_455
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 497
    .end local v7           #_result:Z
    :sswitch_45a
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_475

    move v1, v9

    .line 500
    .local v1, _arg0:Z
    :goto_466
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->checkEnableUseOfPacketData(Z)Z

    move-result v7

    .line 501
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v7, :cond_470

    move v10, v9

    :cond_470
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_475
    move v1, v10

    .line 499
    goto :goto_466

    .line 507
    :sswitch_477
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->checkDataCallLimit()Z

    move-result v7

    .line 509
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v7, :cond_486

    move v10, v9

    :cond_486
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 515
    .end local v7           #_result:Z
    :sswitch_48b
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 518
    .local v1, _arg0:J
    invoke-virtual {p0, v1, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->updateDateAndDataCallCounters(J)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 524
    .end local v1           #_arg0:J
    :sswitch_49c
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->updateDataLimitState()V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_4aa
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_29
        0x3 -> :sswitch_42
        0x4 -> :sswitch_55
        0x5 -> :sswitch_68
        0x6 -> :sswitch_7f
        0x7 -> :sswitch_97
        0x8 -> :sswitch_af
        0x9 -> :sswitch_c7
        0xa -> :sswitch_df
        0xb -> :sswitch_f7
        0xc -> :sswitch_114
        0xd -> :sswitch_131
        0xe -> :sswitch_14e
        0xf -> :sswitch_162
        0x10 -> :sswitch_182
        0x11 -> :sswitch_197
        0x12 -> :sswitch_1b7
        0x13 -> :sswitch_1cc
        0x14 -> :sswitch_1e0
        0x15 -> :sswitch_1f4
        0x16 -> :sswitch_208
        0x17 -> :sswitch_222
        0x18 -> :sswitch_23c
        0x19 -> :sswitch_250
        0x1a -> :sswitch_264
        0x1b -> :sswitch_27c
        0x1c -> :sswitch_294
        0x1d -> :sswitch_2ac
        0x1e -> :sswitch_2c4
        0x1f -> :sswitch_2dc
        0x20 -> :sswitch_2f4
        0x21 -> :sswitch_311
        0x22 -> :sswitch_325
        0x23 -> :sswitch_339
        0x24 -> :sswitch_359
        0x25 -> :sswitch_36e
        0x26 -> :sswitch_38e
        0x27 -> :sswitch_3a3
        0x28 -> :sswitch_3b7
        0x29 -> :sswitch_3cb
        0x2a -> :sswitch_3df
        0x2b -> :sswitch_3fc
        0x2c -> :sswitch_410
        0x2d -> :sswitch_431
        0x2e -> :sswitch_446
        0x2f -> :sswitch_45a
        0x30 -> :sswitch_477
        0x31 -> :sswitch_48b
        0x32 -> :sswitch_49c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
