.class public abstract Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;
.super Landroid/os/Binder;
.source "YstockRemoteServiceCallback.java"

# interfaces
.implements Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;
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
    const-string v1, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
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
    sparse-switch p1, :sswitch_data_b2

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 42
    :sswitch_9
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 50
    .local v1, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->SearchStockArrived(Ljava/util/Map;)V

    goto :goto_8

    .line 56
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v1           #cl:Ljava/lang/ClassLoader;
    :sswitch_24
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 59
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->StockInfoArrived(Ljava/util/Map;)V

    goto :goto_8

    .line 65
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v1           #cl:Ljava/lang/ClassLoader;
    :sswitch_39
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 68
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->StockChartArrived(Ljava/util/Map;)V

    goto :goto_8

    .line 74
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v1           #cl:Ljava/lang/ClassLoader;
    :sswitch_4e
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 77
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 78
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->CurrencyArrived(Ljava/util/Map;)V

    goto :goto_8

    .line 83
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v1           #cl:Ljava/lang/ClassLoader;
    :sswitch_63
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 86
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 87
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->CurrencyChartArrived(Ljava/util/Map;)V

    goto :goto_8

    .line 92
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v1           #cl:Ljava/lang/ClassLoader;
    :sswitch_78
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 95
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 96
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->IndexInfoArrived(Ljava/util/Map;)V

    goto/16 :goto_8

    .line 101
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v1           #cl:Ljava/lang/ClassLoader;
    :sswitch_8e
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 104
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 105
    .restart local v0       #_arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->IndexChartArrived(Ljava/util/Map;)V

    goto/16 :goto_8

    .line 110
    .end local v0           #_arg0:Ljava/util/Map;
    .end local v1           #cl:Ljava/lang/ClassLoader;
    :sswitch_a4
    const-string v3, "com.sec.android.widgetapp.service.YstockRemoteServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/service/YstockRemoteServiceCallback$Stub;->errorReport(I)V

    goto/16 :goto_8

    .line 38
    :sswitch_data_b2
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_63
        0x6 -> :sswitch_78
        0x7 -> :sswitch_8e
        0x8 -> :sswitch_a4
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
