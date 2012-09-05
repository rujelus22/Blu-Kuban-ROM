.class public abstract Lcom/google/android/gtalkservice/IGTalkService$Stub;
.super Landroid/os/Binder;
.source "IGTalkService.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IGTalkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IGTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IGTalkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.gtalkservice.IGTalkService"

.field static final TRANSACTION_createGTalkConnection:I = 0x1

.field static final TRANSACTION_dismissNotificationFor:I = 0x7

.field static final TRANSACTION_dismissNotifications:I = 0x6

.field static final TRANSACTION_getActiveConnections:I = 0x2

.field static final TRANSACTION_getConnectionForUser:I = 0x3

.field static final TRANSACTION_getDefaultConnection:I = 0x4

.field static final TRANSACTION_getImSessionForAccountId:I = 0x5

.field static final TRANSACTION_printDiagnostics:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;
    .registers 4
    .parameter

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "com.google.android.gtalkservice.IGTalkService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_16

    instance-of v2, v1, Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v2, :cond_16

    .line 33
    move-object v0, v1

    check-cast v0, Lcom/google/android/gtalkservice/IGTalkService;

    move-object p0, v0

    move-object v1, p0

    goto :goto_3

    .line 35
    :cond_16
    new-instance v1, Lcom/google/android/gtalkservice/IGTalkService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_c0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 47
    :sswitch_a
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 48
    goto :goto_9

    .line 52
    :sswitch_11
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gtalkservice/IGTalkConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkConnectionListener;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V

    move v0, v3

    .line 58
    goto :goto_9

    .line 62
    :sswitch_27
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getActiveConnections()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    move v0, v3

    .line 66
    goto :goto_9

    .line 70
    :sswitch_38
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v0, :cond_53

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_4e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v3

    .line 76
    goto :goto_9

    :cond_53
    move-object v0, v2

    .line 75
    goto :goto_4e

    .line 80
    :sswitch_55
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v0, :cond_6c

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IGTalkConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v3

    .line 84
    goto :goto_9

    :cond_6c
    move-object v0, v2

    .line 83
    goto :goto_67

    .line 88
    :sswitch_6e
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v0, :cond_89

    invoke-interface {v0}, Lcom/google/android/gtalkservice/IImSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v3

    .line 94
    goto :goto_9

    :cond_89
    move-object v0, v2

    .line 93
    goto :goto_84

    .line 98
    :sswitch_8b
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->dismissNotifications(J)V

    move v0, v3

    .line 102
    goto/16 :goto_9

    .line 106
    :sswitch_9a
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 111
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->dismissNotificationFor(Ljava/lang/String;J)V

    move v0, v3

    .line 112
    goto/16 :goto_9

    .line 116
    :sswitch_ad
    const-string v0, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->printDiagnostics()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 120
    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_27
        0x3 -> :sswitch_38
        0x4 -> :sswitch_55
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_8b
        0x7 -> :sswitch_9a
        0x8 -> :sswitch_ad
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
