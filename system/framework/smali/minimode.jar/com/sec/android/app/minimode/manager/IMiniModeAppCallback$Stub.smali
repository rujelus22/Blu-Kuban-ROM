.class public abstract Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;
.super Landroid/os/Binder;
.source "IMiniModeAppCallback.java"

# interfaces
.implements Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.minimode.manager.IMiniModeAppCallback"

.field static final TRANSACTION_closeAllRequested:I = 0x4

.field static final TRANSACTION_closeRequestedFrom:I = 0x3

.field static final TRANSACTION_createSnapshot:I = 0x5

.field static final TRANSACTION_focusChanged:I = 0x1

.field static final TRANSACTION_movementRequested:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.sec.android.app.minimode.manager.IMiniModeAppCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.sec.android.app.minimode.manager.IMiniModeAppCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_9a

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 47
    :sswitch_a
    const-string v5, "com.sec.android.app.minimode.manager.IMiniModeAppCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v5, "com.sec.android.app.minimode.manager.IMiniModeAppCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    .line 55
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 61
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    move v1, v4

    .line 62
    .local v1, _arg1:Z
    :cond_2a
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->focusChanged(Landroid/content/ComponentName;Z)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 58
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_31
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_23

    .line 68
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_33
    const-string v5, "com.sec.android.app.minimode.manager.IMiniModeAppCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_55

    .line 71
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 77
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->movementRequested(Landroid/content/ComponentName;II)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :cond_55
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_46

    .line 86
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_57
    const-string v5, "com.sec.android.app.minimode.manager.IMiniModeAppCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_71

    .line 89
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 94
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_6a
    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->closeRequestedFrom(Landroid/content/ComponentName;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 92
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_71
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6a

    .line 100
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_73
    const-string v5, "com.sec.android.app.minimode.manager.IMiniModeAppCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->closeAllRequested()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 107
    :sswitch_7f
    const-string v5, "com.sec.android.app.minimode.manager.IMiniModeAppCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;->createSnapshot()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 109
    .local v3, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v3, :cond_95

    .line 111
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v3, p3, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 115
    :cond_95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 43
    :sswitch_data_9a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_33
        0x3 -> :sswitch_57
        0x4 -> :sswitch_73
        0x5 -> :sswitch_7f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
