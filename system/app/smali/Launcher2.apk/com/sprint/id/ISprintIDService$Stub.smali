.class public abstract Lcom/sprint/id/ISprintIDService$Stub;
.super Landroid/os/Binder;
.source "ISprintIDService.java"

# interfaces
.implements Lcom/sprint/id/ISprintIDService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/id/ISprintIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/id/ISprintIDService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sprint.id.ISprintIDService"

.field static final TRANSACTION_addDesktopItemNoNotify:I = 0x3

.field static final TRANSACTION_deleteFavoritesByID:I = 0x9

.field static final TRANSACTION_deleteWidgetsFromHostByID:I = 0x6

.field static final TRANSACTION_getCurrentDesktopContainerItems:I = 0x2

.field static final TRANSACTION_getHomeScreenCount:I = 0x8

.field static final TRANSACTION_getLauncherComponentName:I = 0x7

.field static final TRANSACTION_notifyAppWidgetReset:I = 0x5

.field static final TRANSACTION_notifyFavoritesChanges:I = 0x4

.field static final TRANSACTION_wipeDesktopContainer:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sprint.id.ISprintIDService"

    invoke-virtual {p0, p0, v0}, Lcom/sprint/id/ISprintIDService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sprint/id/ISprintIDService;
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
    const-string v1, "com.sprint.id.ISprintIDService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sprint/id/ISprintIDService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/sprint/id/ISprintIDService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/sprint/id/ISprintIDService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sprint/id/ISprintIDService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_ba

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sprint/id/ISprintIDService$Stub;->wipeDesktopContainer()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 54
    :sswitch_1c
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/sprint/id/ISprintIDService$Stub;->getCurrentDesktopContainerItems()Ljava/util/List;

    move-result-object v2

    .line 56
    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 62
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :sswitch_2c
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f

    .line 65
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 70
    .local v0, _arg0:Landroid/content/ContentValues;
    :goto_3f
    invoke-virtual {p0, v0}, Lcom/sprint/id/ISprintIDService$Stub;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    .local v1, _result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v1, :cond_51

    .line 73
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v1, p3, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 68
    .end local v0           #_arg0:Landroid/content/ContentValues;
    .end local v1           #_result:Landroid/net/Uri;
    :cond_4f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ContentValues;
    goto :goto_3f

    .line 77
    .restart local v1       #_result:Landroid/net/Uri;
    :cond_51
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 83
    .end local v0           #_arg0:Landroid/content/ContentValues;
    .end local v1           #_result:Landroid/net/Uri;
    :sswitch_55
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/sprint/id/ISprintIDService$Stub;->notifyFavoritesChanges()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 90
    :sswitch_61
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/sprint/id/ISprintIDService$Stub;->notifyAppWidgetReset()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 97
    :sswitch_6d
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 100
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/sprint/id/ISprintIDService$Stub;->deleteWidgetsFromHostByID([I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 106
    .end local v0           #_arg0:[I
    :sswitch_7d
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/sprint/id/ISprintIDService$Stub;->getLauncherComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 108
    .local v1, _result:Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v1, :cond_93

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v1, p3, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 114
    :cond_93
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v1           #_result:Landroid/content/ComponentName;
    :sswitch_98
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/sprint/id/ISprintIDService$Stub;->getHomeScreenCount()I

    move-result v1

    .line 122
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 128
    .end local v1           #_result:I
    :sswitch_a9
    const-string v4, "com.sprint.id.ISprintIDService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 131
    .restart local v0       #_arg0:[I
    invoke-virtual {p0, v0}, Lcom/sprint/id/ISprintIDService$Stub;->deleteFavoritesByID([I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    :sswitch_data_ba
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_55
        0x5 -> :sswitch_61
        0x6 -> :sswitch_6d
        0x7 -> :sswitch_7d
        0x8 -> :sswitch_98
        0x9 -> :sswitch_a9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
