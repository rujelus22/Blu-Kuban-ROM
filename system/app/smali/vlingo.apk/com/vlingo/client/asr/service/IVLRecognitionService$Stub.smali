.class public abstract Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;
.super Landroid/os/Binder;
.source "IVLRecognitionService.java"

# interfaces
.implements Lcom/vlingo/client/asr/service/IVLRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/IVLRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vlingo.client.asr.service.IVLRecognitionService"

.field static final TRANSACTION_cancel:I = 0x6

.field static final TRANSACTION_getNBestAtCursor:I = 0x5

.field static final TRANSACTION_getNBestForWord:I = 0x4

.field static final TRANSACTION_getRecognitionResults:I = 0x3

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p0, p0, v0}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vlingo/client/asr/service/IVLRecognitionService;
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
    const-string v1, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/vlingo/client/asr/service/IVLRecognitionService;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/vlingo/client/asr/service/IVLRecognitionService;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_8c

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_8
    return v6

    .line 47
    :sswitch_9
    const-string v7, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v7, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_31

    .line 55
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 61
    .local v0, _arg0:Landroid/content/Intent;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v2

    .line 62
    .local v2, _arg1:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-virtual {p0, v0, v2}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->startListening(Landroid/content/Intent;Lcom/vlingo/client/asr/service/IVLRecognitionListener;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 58
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v2           #_arg1:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    :cond_31
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_22

    .line 68
    .end local v0           #_arg0:Landroid/content/Intent;
    :sswitch_33
    const-string v7, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->stopListening()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 75
    :sswitch_3f
    const-string v7, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 78
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->getRecognitionResults(J)Ljava/util/List;

    move-result-object v4

    .line 79
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Lcom/vlingo/client/asr/service/VLRecognitionResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_8

    .line 85
    .end local v0           #_arg0:J
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/vlingo/client/asr/service/VLRecognitionResult;>;"
    :sswitch_53
    const-string v7, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->getNBestForWord(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 89
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_8

    .line 95
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_67
    const-string v7, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 100
    .local v2, _arg1:J
    invoke-virtual {p0, v0, v2, v3}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->getNBestAtCursor(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v5

    .line 101
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_8

    .line 107
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:J
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_7f
    const-string v7, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->cancel()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 43
    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_33
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_53
        0x5 -> :sswitch_67
        0x6 -> :sswitch_7f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
