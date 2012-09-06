.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestSpecificPropertiesProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasIfNoneMatch:Z

.field private ifNoneMatch_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17175
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->ifNoneMatch_:Ljava/lang/String;

    .line 17212
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->cachedSize:I

    .line 17175
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17215
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 17217
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->getSerializedSize()I

    .line 17219
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->cachedSize:I

    return v0
.end method

.method public getIfNoneMatch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17181
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->ifNoneMatch_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 17224
    const/4 v0, 0x0

    .line 17225
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->hasIfNoneMatch()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17226
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->getIfNoneMatch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17229
    :cond_11
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->cachedSize:I

    .line 17230
    return v0
.end method

.method public hasIfNoneMatch()Z
    .registers 2

    .prologue
    .line 17182
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->hasIfNoneMatch:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17238
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17239
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 17243
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17244
    :sswitch_d
    return-object p0

    .line 17249
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->setIfNoneMatch(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    goto :goto_0

    .line 17239
    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 17173
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    move-result-object v0

    return-object v0
.end method

.method public setIfNoneMatch(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->hasIfNoneMatch:Z

    .line 17185
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->ifNoneMatch_:Ljava/lang/String;

    .line 17186
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
    .line 17207
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->hasIfNoneMatch()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17208
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;->getIfNoneMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17210
    :cond_e
    return-void
.end method
