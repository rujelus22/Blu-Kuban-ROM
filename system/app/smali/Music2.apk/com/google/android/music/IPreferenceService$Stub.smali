.class public abstract Lcom/google/android/music/IPreferenceService$Stub;
.super Landroid/os/Binder;
.source "IPreferenceService.java"

# interfaces
.implements Lcom/google/android/music/IPreferenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/IPreferenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/IPreferenceService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.music.IPreferenceService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/music/IPreferenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IPreferenceService;
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
    const-string v1, "com.google.android.music.IPreferenceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/music/IPreferenceService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/google/android/music/IPreferenceService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/google/android/music/IPreferenceService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/music/IPreferenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_ae

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 42
    :sswitch_9
    const-string v5, "com.google.android.music.IPreferenceService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v5, "com.google.android.music.IPreferenceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/music/IPreferenceService$Stub;->getCurrentPreferences()Ljava/util/Map;

    move-result-object v3

    .line 49
    .local v3, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_8

    .line 55
    .end local v3           #_result:Ljava/util/Map;
    :sswitch_1f
    const-string v5, "com.google.android.music.IPreferenceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/music/IPreferenceService$Stub;->remove(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 64
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2f
    const-string v5, "com.google.android.music.IPreferenceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    move v1, v4

    .line 69
    .local v1, _arg1:Z
    :goto_3f
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/IPreferenceService$Stub;->setBooleanPreference(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 68
    .end local v1           #_arg1:Z
    :cond_46
    const/4 v1, 0x0

    goto :goto_3f

    .line 75
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_48
    const-string v5, "com.google.android.music.IPreferenceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/IPreferenceService$Stub;->setStringPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_5c
    const-string v5, "com.google.android.music.IPreferenceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 91
    .local v1, _arg1:J
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/IPreferenceService$Stub;->setLongPreference(Ljava/lang/String;J)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 97
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:J
    :sswitch_70
    const-string v5, "com.google.android.music.IPreferenceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/IPreferenceService$Stub;->setIntPreference(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 108
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_84
    const-string v5, "com.google.android.music.IPreferenceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/music/IPreferenceChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IPreferenceChangeListener;

    move-result-object v0

    .line 111
    .local v0, _arg0:Lcom/google/android/music/IPreferenceChangeListener;
    invoke-virtual {p0, v0}, Lcom/google/android/music/IPreferenceService$Stub;->registerPreferenceChangeListener(Lcom/google/android/music/IPreferenceChangeListener;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 117
    .end local v0           #_arg0:Lcom/google/android/music/IPreferenceChangeListener;
    :sswitch_99
    const-string v5, "com.google.android.music.IPreferenceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/music/IPreferenceChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IPreferenceChangeListener;

    move-result-object v0

    .line 120
    .restart local v0       #_arg0:Lcom/google/android/music/IPreferenceChangeListener;
    invoke-virtual {p0, v0}, Lcom/google/android/music/IPreferenceService$Stub;->unregisterPreferenceChangeListener(Lcom/google/android/music/IPreferenceChangeListener;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 38
    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_48
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_70
        0x7 -> :sswitch_84
        0x8 -> :sswitch_99
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
