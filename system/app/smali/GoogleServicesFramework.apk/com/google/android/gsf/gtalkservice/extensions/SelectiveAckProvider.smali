.class public Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAckProvider;
.super Ljava/lang/Object;
.source "SelectiveAckProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SELECTIVE_ACK:Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 48
    const/16 v0, 0xc

    return v0
.end method

.method public parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .registers 7
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 36
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;-><init>()V

    .line 38
    .local v0, ack:Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 40
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v1, :cond_17

    .line 41
    invoke-virtual {p1, v4, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/extensions/SelectiveAck;->addId(Ljava/lang/String;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 44
    :cond_17
    return-object v0
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .registers 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SelectiveAckProvider.parseIQ(XmlPullParser parser) should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
