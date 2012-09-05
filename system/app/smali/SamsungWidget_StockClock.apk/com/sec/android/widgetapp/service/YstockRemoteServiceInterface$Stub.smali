.class public abstract Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;
.super Landroid/os/Binder;
.source "YstockRemoteServiceInterface.java"

# interfaces
.implements Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface;
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
    const-string v0, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .registers 9
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_b6

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 42
    :sswitch_9
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->registerCallback(Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 56
    .end local v0           #_arg0:Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;
    :sswitch_23
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;

    move-result-object v0

    .line 59
    .restart local v0       #_arg0:Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->unregisterCallback(Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 65
    .end local v0           #_arg0:Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;
    :sswitch_37
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->searchStock(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 74
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_47
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->getStockInfo(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 83
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_57
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->getStockChart(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 94
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_6b
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->getCurrency(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 103
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_7b
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->getCurrencyChart(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 114
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_90
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->getIndexInfo(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 123
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a1
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceInterface"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceInterface$Stub;->getIndexChart(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 38
    :sswitch_data_b6
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_37
        0x4 -> :sswitch_47
        0x5 -> :sswitch_57
        0x6 -> :sswitch_6b
        0x7 -> :sswitch_7b
        0x8 -> :sswitch_90
        0x9 -> :sswitch_a1
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
