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


# virtual methods
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
    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_94

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_8
    return v6

    .line 47
    :sswitch_9
    const-string v6, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 48
    goto :goto_8

    .line 52
    :sswitch_10
    const-string v6, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    .line 55
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 61
    .local v0, _arg0:Landroid/content/Intent;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    move-result-object v2

    .line 62
    .local v2, _arg1:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    invoke-virtual {p0, v0, v2}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->startListening(Landroid/content/Intent;Lcom/vlingo/client/asr/service/IVLRecognitionListener;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 64
    goto :goto_8

    .line 58
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v2           #_arg1:Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    :cond_33
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_23

    .line 68
    .end local v0           #_arg0:Landroid/content/Intent;
    :sswitch_35
    const-string v6, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->stopListening()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 71
    goto :goto_8

    .line 75
    :sswitch_42
    const-string v6, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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

    move v6, v7

    .line 81
    goto :goto_8

    .line 85
    .end local v0           #_arg0:J
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/vlingo/client/asr/service/VLRecognitionResult;>;"
    :sswitch_57
    const-string v6, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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

    move v6, v7

    .line 91
    goto :goto_8

    .line 95
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_6c
    const-string v6, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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

    move v6, v7

    .line 103
    goto :goto_8

    .line 107
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:J
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_85
    const-string v6, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;->cancel()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 110
    goto/16 :goto_8

    .line 43
    nop

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_35
        0x3 -> :sswitch_42
        0x4 -> :sswitch_57
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_85
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
