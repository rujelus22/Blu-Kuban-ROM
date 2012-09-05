.class public abstract Landroid/app/enterprise/IEmailAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IEmailAccountPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IEmailAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IEmailAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IEmailAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IEmailAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x1

.field static final TRANSACTION_addNewAccount_ex:I = 0x2

.field static final TRANSACTION_deleteAccount:I = 0x1d

.field static final TRANSACTION_getAccountDetails:I = 0x1c

.field static final TRANSACTION_getAccountId:I = 0x1b

.field static final TRANSACTION_getAllEmailAccounts:I = 0x1f

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x1e

.field static final TRANSACTION_setAccountName:I = 0x3

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x8

.field static final TRANSACTION_setAsDefaultAccount:I = 0x1a

.field static final TRANSACTION_setEmailAddress:I = 0x4

.field static final TRANSACTION_setInComingProtocol:I = 0xa

.field static final TRANSACTION_setInComingServerAcceptAllCertificates:I = 0xe

.field static final TRANSACTION_setInComingServerAddress:I = 0xb

.field static final TRANSACTION_setInComingServerLogin:I = 0xf

.field static final TRANSACTION_setInComingServerPassword:I = 0x10

.field static final TRANSACTION_setInComingServerPathPrefix:I = 0x11

.field static final TRANSACTION_setInComingServerPort:I = 0xc

.field static final TRANSACTION_setInComingServerSSL:I = 0xd

.field static final TRANSACTION_setOutGoingProtocol:I = 0x12

.field static final TRANSACTION_setOutGoingServerAcceptAllCertificates:I = 0x16

.field static final TRANSACTION_setOutGoingServerAddress:I = 0x13

.field static final TRANSACTION_setOutGoingServerLogin:I = 0x17

.field static final TRANSACTION_setOutGoingServerPassword:I = 0x18

.field static final TRANSACTION_setOutGoingServerPathPrefix:I = 0x19

.field static final TRANSACTION_setOutGoingServerPort:I = 0x14

.field static final TRANSACTION_setOutGoingServerSSL:I = 0x15

.field static final TRANSACTION_setSenderName:I = 0x6

.field static final TRANSACTION_setSignature:I = 0x7

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x9

.field static final TRANSACTION_setSyncInterval:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IEmailAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailAccountPolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.app.enterprise.IEmailAccountPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/app/enterprise/IEmailAccountPolicy;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/app/enterprise/IEmailAccountPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
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
    .line 42
    sparse-switch p1, :sswitch_data_540

    .line 467
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 46
    :sswitch_8
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    goto :goto_7

    .line 51
    :sswitch_11
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 61
    .local v7, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 71
    .local v12, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, _arg10:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 74
    invoke-virtual/range {v3 .. v14}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v27

    .line 75
    .local v27, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    const/4 v3, 0x1

    goto :goto_7

    .line 81
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:I
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:Ljava/lang/String;
    .end local v10           #_arg6:Ljava/lang/String;
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:I
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Ljava/lang/String;
    .end local v27           #_result:J
    :sswitch_56
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 87
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 89
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 91
    .restart local v7       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 93
    .restart local v8       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 95
    .restart local v9       #_arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 97
    .restart local v10       #_arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 99
    .restart local v11       #_arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 101
    .restart local v12       #_arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 103
    .restart local v13       #_arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 105
    .restart local v14       #_arg10:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d7

    const/4 v15, 0x1

    .line 107
    .local v15, _arg11:Z
    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d9

    const/16 v16, 0x1

    .line 109
    .local v16, _arg12:Z
    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_dc

    const/16 v17, 0x1

    .line 111
    .local v17, _arg13:Z
    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_df

    const/16 v18, 0x1

    .line 113
    .local v18, _arg14:Z
    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e2

    const/16 v19, 0x1

    .line 115
    .local v19, _arg15:Z
    :goto_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e5

    const/16 v20, 0x1

    .line 117
    .local v20, _arg16:Z
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 119
    .local v21, _arg17:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e8

    const/16 v22, 0x1

    .local v22, _arg18:Z
    :goto_c4
    move-object/from16 v3, p0

    .line 120
    invoke-virtual/range {v3 .. v22}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v27

    .line 121
    .restart local v27       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 105
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Z
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    .end local v19           #_arg15:Z
    .end local v20           #_arg16:Z
    .end local v21           #_arg17:Ljava/lang/String;
    .end local v22           #_arg18:Z
    .end local v27           #_result:J
    :cond_d7
    const/4 v15, 0x0

    goto :goto_90

    .line 107
    .restart local v15       #_arg11:Z
    :cond_d9
    const/16 v16, 0x0

    goto :goto_98

    .line 109
    .restart local v16       #_arg12:Z
    :cond_dc
    const/16 v17, 0x0

    goto :goto_a0

    .line 111
    .restart local v17       #_arg13:Z
    :cond_df
    const/16 v18, 0x0

    goto :goto_a8

    .line 113
    .restart local v18       #_arg14:Z
    :cond_e2
    const/16 v19, 0x0

    goto :goto_b0

    .line 115
    .restart local v19       #_arg15:Z
    :cond_e5
    const/16 v20, 0x0

    goto :goto_b8

    .line 119
    .restart local v20       #_arg16:Z
    .restart local v21       #_arg17:Ljava/lang/String;
    :cond_e8
    const/16 v22, 0x0

    goto :goto_c4

    .line 127
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:I
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:Ljava/lang/String;
    .end local v10           #_arg6:Ljava/lang/String;
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:I
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Ljava/lang/String;
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Z
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    .end local v19           #_arg15:Z
    .end local v20           #_arg16:Z
    .end local v21           #_arg17:Ljava/lang/String;
    :sswitch_eb
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 131
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 132
    .local v25, _arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setAccountName(Ljava/lang/String;J)Z

    move-result v27

    .line 133
    .local v27, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v27, :cond_110

    const/4 v3, 0x1

    :goto_108
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 134
    :cond_110
    const/4 v3, 0x0

    goto :goto_108

    .line 139
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_112
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 144
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setEmailAddress(Ljava/lang/String;J)J

    move-result-wide v27

    .line 145
    .local v27, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 151
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:J
    :sswitch_136
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 155
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 156
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSyncInterval(IJ)Z

    move-result v27

    .line 157
    .local v27, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v27, :cond_15b

    const/4 v3, 0x1

    :goto_153
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 158
    :cond_15b
    const/4 v3, 0x0

    goto :goto_153

    .line 163
    .end local v4           #_arg0:I
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_15d
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 168
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSenderName(Ljava/lang/String;J)Z

    move-result v27

    .line 169
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v27, :cond_182

    const/4 v3, 0x1

    :goto_17a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 170
    :cond_182
    const/4 v3, 0x0

    goto :goto_17a

    .line 175
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_184
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 180
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSignature(Ljava/lang/String;J)Z

    move-result v27

    .line 181
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v27, :cond_1a9

    const/4 v3, 0x1

    :goto_1a1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 182
    :cond_1a9
    const/4 v3, 0x0

    goto :goto_1a1

    .line 187
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_1ab
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d3

    const/4 v4, 0x1

    .line 191
    .local v4, _arg0:Z
    :goto_1b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 192
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(ZJ)Z

    move-result v27

    .line 193
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v27, :cond_1d5

    const/4 v3, 0x1

    :goto_1cb
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 189
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :cond_1d3
    const/4 v4, 0x0

    goto :goto_1b9

    .line 194
    .restart local v4       #_arg0:Z
    .restart local v25       #_arg1:J
    .restart local v27       #_result:Z
    :cond_1d5
    const/4 v3, 0x0

    goto :goto_1cb

    .line 199
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_1d7
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1ff

    const/4 v4, 0x1

    .line 203
    .restart local v4       #_arg0:Z
    :goto_1e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 204
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(ZJ)Z

    move-result v27

    .line 205
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v27, :cond_201

    const/4 v3, 0x1

    :goto_1f7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 201
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :cond_1ff
    const/4 v4, 0x0

    goto :goto_1e5

    .line 206
    .restart local v4       #_arg0:Z
    .restart local v25       #_arg1:J
    .restart local v27       #_result:Z
    :cond_201
    const/4 v3, 0x0

    goto :goto_1f7

    .line 211
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_203
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 216
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingProtocol(Ljava/lang/String;J)Z

    move-result v27

    .line 217
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v27, :cond_228

    const/4 v3, 0x1

    :goto_220
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 218
    :cond_228
    const/4 v3, 0x0

    goto :goto_220

    .line 223
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_22a
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 227
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 228
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerAddress(Ljava/lang/String;J)J

    move-result-wide v27

    .line 229
    .local v27, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 235
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:J
    :sswitch_24e
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 239
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 240
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerPort(IJ)Z

    move-result v27

    .line 241
    .local v27, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v27, :cond_273

    const/4 v3, 0x1

    :goto_26b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 242
    :cond_273
    const/4 v3, 0x0

    goto :goto_26b

    .line 247
    .end local v4           #_arg0:I
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_275
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29d

    const/4 v4, 0x1

    .line 251
    .local v4, _arg0:Z
    :goto_283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 252
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerSSL(ZJ)Z

    move-result v27

    .line 253
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v27, :cond_29f

    const/4 v3, 0x1

    :goto_295
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 249
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :cond_29d
    const/4 v4, 0x0

    goto :goto_283

    .line 254
    .restart local v4       #_arg0:Z
    .restart local v25       #_arg1:J
    .restart local v27       #_result:Z
    :cond_29f
    const/4 v3, 0x0

    goto :goto_295

    .line 259
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_2a1
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c9

    const/4 v4, 0x1

    .line 263
    .restart local v4       #_arg0:Z
    :goto_2af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 264
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerAcceptAllCertificates(ZJ)Z

    move-result v27

    .line 265
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v27, :cond_2cb

    const/4 v3, 0x1

    :goto_2c1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 261
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :cond_2c9
    const/4 v4, 0x0

    goto :goto_2af

    .line 266
    .restart local v4       #_arg0:Z
    .restart local v25       #_arg1:J
    .restart local v27       #_result:Z
    :cond_2cb
    const/4 v3, 0x0

    goto :goto_2c1

    .line 271
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_2cd
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 276
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerLogin(Ljava/lang/String;J)J

    move-result-wide v27

    .line 277
    .local v27, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    move-object/from16 v0, p3

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 283
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:J
    :sswitch_2f1
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 287
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 288
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerPassword(Ljava/lang/String;J)Z

    move-result v27

    .line 289
    .local v27, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v27, :cond_316

    const/4 v3, 0x1

    :goto_30e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 290
    :cond_316
    const/4 v3, 0x0

    goto :goto_30e

    .line 295
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_318
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 299
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 300
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerPathPrefix(Ljava/lang/String;J)Z

    move-result v27

    .line 301
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v27, :cond_33d

    const/4 v3, 0x1

    :goto_335
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 302
    :cond_33d
    const/4 v3, 0x0

    goto :goto_335

    .line 307
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_33f
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 311
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 312
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingProtocol(Ljava/lang/String;J)Z

    move-result v27

    .line 313
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v27, :cond_364

    const/4 v3, 0x1

    :goto_35c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 314
    :cond_364
    const/4 v3, 0x0

    goto :goto_35c

    .line 319
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_366
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 323
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 324
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerAddress(Ljava/lang/String;J)J

    move-result-wide v27

    .line 325
    .local v27, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 327
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 331
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:J
    :sswitch_38a
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 335
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 336
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerPort(IJ)Z

    move-result v27

    .line 337
    .local v27, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v27, :cond_3af

    const/4 v3, 0x1

    :goto_3a7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 338
    :cond_3af
    const/4 v3, 0x0

    goto :goto_3a7

    .line 343
    .end local v4           #_arg0:I
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_3b1
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3d9

    const/4 v4, 0x1

    .line 347
    .local v4, _arg0:Z
    :goto_3bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 348
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerSSL(ZJ)Z

    move-result v27

    .line 349
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v27, :cond_3db

    const/4 v3, 0x1

    :goto_3d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 345
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :cond_3d9
    const/4 v4, 0x0

    goto :goto_3bf

    .line 350
    .restart local v4       #_arg0:Z
    .restart local v25       #_arg1:J
    .restart local v27       #_result:Z
    :cond_3db
    const/4 v3, 0x0

    goto :goto_3d1

    .line 355
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_3dd
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_405

    const/4 v4, 0x1

    .line 359
    .restart local v4       #_arg0:Z
    :goto_3eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 360
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerAcceptAllCertificates(ZJ)Z

    move-result v27

    .line 361
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v27, :cond_407

    const/4 v3, 0x1

    :goto_3fd
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 357
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :cond_405
    const/4 v4, 0x0

    goto :goto_3eb

    .line 362
    .restart local v4       #_arg0:Z
    .restart local v25       #_arg1:J
    .restart local v27       #_result:Z
    :cond_407
    const/4 v3, 0x0

    goto :goto_3fd

    .line 367
    .end local v4           #_arg0:Z
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_409
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 372
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerLogin(Ljava/lang/String;J)J

    move-result-wide v27

    .line 373
    .local v27, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    move-object/from16 v0, p3

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 375
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 379
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:J
    :sswitch_42d
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 383
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 384
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerPassword(Ljava/lang/String;J)Z

    move-result v27

    .line 385
    .local v27, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v27, :cond_452

    const/4 v3, 0x1

    :goto_44a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 386
    :cond_452
    const/4 v3, 0x0

    goto :goto_44a

    .line 391
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_454
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 395
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 396
    .restart local v25       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerPathPrefix(Ljava/lang/String;J)Z

    move-result v27

    .line 397
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v27, :cond_479

    const/4 v3, 0x1

    :goto_471
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 398
    :cond_479
    const/4 v3, 0x0

    goto :goto_471

    .line 403
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v25           #_arg1:J
    .end local v27           #_result:Z
    :sswitch_47b
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 406
    .local v23, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setAsDefaultAccount(J)Z

    move-result v27

    .line 407
    .restart local v27       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v27, :cond_49c

    const/4 v3, 0x1

    :goto_494
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 408
    :cond_49c
    const/4 v3, 0x0

    goto :goto_494

    .line 413
    .end local v23           #_arg0:J
    .end local v27           #_result:Z
    :sswitch_49e
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 417
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 419
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 420
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v27

    .line 421
    .local v27, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move-object/from16 v0, p3

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 423
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 427
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v27           #_result:J
    :sswitch_4c4
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 430
    .restart local v23       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v27

    .line 431
    .local v27, _result:Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v27, :cond_4ed

    .line 433
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v3, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 439
    :goto_4ea
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 437
    :cond_4ed
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4ea

    .line 443
    .end local v23           #_arg0:J
    .end local v27           #_result:Landroid/app/enterprise/Account;
    :sswitch_4f4
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 446
    .restart local v23       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->deleteAccount(J)Z

    move-result v27

    .line 447
    .local v27, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v27, :cond_515

    const/4 v3, 0x1

    :goto_50d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 448
    :cond_515
    const/4 v3, 0x0

    goto :goto_50d

    .line 453
    .end local v23           #_arg0:J
    .end local v27           #_result:Z
    :sswitch_517
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->sendAccountsChangedBroadcast()V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 460
    :sswitch_527
    const-string v3, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->getAllEmailAccounts()[Landroid/app/enterprise/Account;

    move-result-object v27

    .line 462
    .local v27, _result:[Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 464
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 42
    :sswitch_data_540
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_56
        0x3 -> :sswitch_eb
        0x4 -> :sswitch_112
        0x5 -> :sswitch_136
        0x6 -> :sswitch_15d
        0x7 -> :sswitch_184
        0x8 -> :sswitch_1ab
        0x9 -> :sswitch_1d7
        0xa -> :sswitch_203
        0xb -> :sswitch_22a
        0xc -> :sswitch_24e
        0xd -> :sswitch_275
        0xe -> :sswitch_2a1
        0xf -> :sswitch_2cd
        0x10 -> :sswitch_2f1
        0x11 -> :sswitch_318
        0x12 -> :sswitch_33f
        0x13 -> :sswitch_366
        0x14 -> :sswitch_38a
        0x15 -> :sswitch_3b1
        0x16 -> :sswitch_3dd
        0x17 -> :sswitch_409
        0x18 -> :sswitch_42d
        0x19 -> :sswitch_454
        0x1a -> :sswitch_47b
        0x1b -> :sswitch_49e
        0x1c -> :sswitch_4c4
        0x1d -> :sswitch_4f4
        0x1e -> :sswitch_517
        0x1f -> :sswitch_527
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
