.class public abstract Landroid/app/enterprise/IPasswordPolicy$Stub;
.super Landroid/os/Binder;
.source "IPasswordPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IPasswordPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IPasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IPasswordPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IPasswordPolicy"

.field static final TRANSACTION_addRequiredPasswordPattern:I = 0x4

.field static final TRANSACTION_deleteAllRestrictions:I = 0x5

.field static final TRANSACTION_enforcePwdChange:I = 0xb

.field static final TRANSACTION_getMaximumFailedPasswordsForDisable:I = 0xe

.field static final TRANSACTION_getPasswordChangeTimeout:I = 0x9

.field static final TRANSACTION_getPasswordLockDelay:I = 0x2

.field static final TRANSACTION_getRequiredPwdPatternRestrictions:I = 0x6

.field static final TRANSACTION_isChangeRequested:I = 0xa

.field static final TRANSACTION_isPasswordPatternMatched:I = 0x7

.field static final TRANSACTION_setMaximumFailedPasswordsForDisable:I = 0xd

.field static final TRANSACTION_setPasswordChangeTimeout:I = 0x8

.field static final TRANSACTION_setPasswordLockDelay:I = 0x1

.field static final TRANSACTION_setPwdChangeRequested:I = 0xc

.field static final TRANSACTION_setRequiredPasswordPattern:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.app.enterprise.IPasswordPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/app/enterprise/IPasswordPolicy;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/app/enterprise/IPasswordPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IPasswordPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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

    .line 41
    sparse-switch p1, :sswitch_data_13a

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v2, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setPasswordLockDelay(I)Z

    move-result v1

    .line 54
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v1, :cond_23

    move v2, v3

    :cond_23
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_27
    const-string v2, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getPasswordLockDelay()I

    move-result v1

    .line 62
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v1           #_result:I
    :sswitch_37
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setRequiredPasswordPattern(Ljava/lang/String;)Z

    move-result v1

    .line 72
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v1, :cond_4a

    move v2, v3

    :cond_4a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_4e
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->addRequiredPasswordPattern(Ljava/lang/String;)Z

    move-result v1

    .line 82
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v1, :cond_61

    move v2, v3

    :cond_61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_65
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->deleteAllRestrictions()Z

    move-result v1

    .line 90
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v1, :cond_74

    move v2, v3

    :cond_74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 96
    .end local v1           #_result:Z
    :sswitch_78
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_90

    move v0, v3

    .line 99
    .local v0, _arg0:Z
    :goto_84
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_result:Ljava/lang/String;
    :cond_90
    move v0, v2

    .line 98
    goto :goto_84

    .line 106
    :sswitch_92
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v1

    .line 110
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v1, :cond_a5

    move v2, v3

    :cond_a5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_aa
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setPasswordChangeTimeout(I)Z

    move-result v1

    .line 120
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_bd

    move v2, v3

    :cond_bd
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 126
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_c2
    const-string v2, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getPasswordChangeTimeout()I

    move-result v1

    .line 128
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 134
    .end local v1           #_result:I
    :sswitch_d3
    const-string v2, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->isChangeRequested()I

    move-result v1

    .line 136
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 142
    .end local v1           #_result:I
    :sswitch_e4
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->enforcePwdChange()Z

    move-result v1

    .line 144
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v1, :cond_f3

    move v2, v3

    :cond_f3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 150
    .end local v1           #_result:Z
    :sswitch_f8
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setPwdChangeRequested(I)Z

    move-result v1

    .line 154
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v1, :cond_10b

    move v2, v3

    :cond_10b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 160
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_110
    const-string v4, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->setMaximumFailedPasswordsForDisable(I)Z

    move-result v1

    .line 164
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v1, :cond_123

    move v2, v3

    :cond_123
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 170
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_128
    const-string v2, "android.app.enterprise.IPasswordPolicy"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->getMaximumFailedPasswordsForDisable()I

    move-result v1

    .line 172
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_13a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_37
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_65
        0x6 -> :sswitch_78
        0x7 -> :sswitch_92
        0x8 -> :sswitch_aa
        0x9 -> :sswitch_c2
        0xa -> :sswitch_d3
        0xb -> :sswitch_e4
        0xc -> :sswitch_f8
        0xd -> :sswitch_110
        0xe -> :sswitch_128
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
