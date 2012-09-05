.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusBarNotificationProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private contentText_:Ljava/lang/String;

.field private contentTitle_:Ljava/lang/String;

.field private hasContentText:Z

.field private hasContentTitle:Z

.field private hasTickerText:Z

.field private tickerText_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19319
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19324
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->tickerText_:Ljava/lang/String;

    .line 19341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentTitle_:Ljava/lang/String;

    .line 19358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentText_:Ljava/lang/String;

    .line 19397
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->cachedSize:I

    .line 19319
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 19399
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 19401
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getSerializedSize()I

    .line 19403
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->cachedSize:I

    return v0
.end method

.method public getContentText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19359
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentText_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19342
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 19407
    const/4 v0, 0x0

    .line 19408
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasTickerText()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 19409
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getTickerText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19412
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentTitle()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 19413
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19416
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentText()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 19417
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19420
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->cachedSize:I

    .line 19421
    return v0
.end method

.method public getTickerText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19325
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->tickerText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasContentText()Z
    .registers 2

    .prologue
    .line 19360
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentText:Z

    return v0
.end method

.method public hasContentTitle()Z
    .registers 2

    .prologue
    .line 19343
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentTitle:Z

    return v0
.end method

.method public hasTickerText()Z
    .registers 2

    .prologue
    .line 19326
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasTickerText:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19428
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 19429
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 19433
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19434
    :sswitch_d
    return-object p0

    .line 19439
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->setTickerText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    goto :goto_0

    .line 19443
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->setContentTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    goto :goto_0

    .line 19447
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->setContentText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    goto :goto_0

    .line 19429
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19317
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    move-result-object v0

    return-object v0
.end method

.method public setContentText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 19362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentText:Z

    .line 19363
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentText_:Ljava/lang/String;

    .line 19364
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 19345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentTitle:Z

    .line 19346
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentTitle_:Ljava/lang/String;

    .line 19347
    return-object p0
.end method

.method public setTickerText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 19328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasTickerText:Z

    .line 19329
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->tickerText_:Ljava/lang/String;

    .line 19330
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19386
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasTickerText()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 19387
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getTickerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19389
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentTitle()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 19390
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19392
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentText()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 19393
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19395
    :cond_2a
    return-void
.end method
