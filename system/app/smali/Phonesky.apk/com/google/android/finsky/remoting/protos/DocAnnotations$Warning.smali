.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Warning"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasLocalizedMessage:Z

.field private localizedMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1029
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->localizedMessage_:Ljava/lang/String;

    .line 1066
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->cachedSize:I

    .line 1029
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1069
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->cachedSize:I

    if-gez v0, :cond_7

    .line 1071
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->getSerializedSize()I

    .line 1073
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->cachedSize:I

    return v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->localizedMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->hasLocalizedMessage()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1080
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1083
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->cachedSize:I

    .line 1084
    return v0
.end method

.method public hasLocalizedMessage()Z
    .registers 2

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->hasLocalizedMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1093
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 1097
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1098
    :sswitch_d
    return-object p0

    .line 1103
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->setLocalizedMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    goto :goto_0

    .line 1093
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
    .line 1026
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    move-result-object v0

    return-object v0
.end method

.method public setLocalizedMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    .registers 3
    .parameter "value"

    .prologue
    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->hasLocalizedMessage:Z

    .line 1039
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->localizedMessage_:Ljava/lang/String;

    .line 1040
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
    .line 1061
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->hasLocalizedMessage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1062
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1064
    :cond_e
    return-void
.end method
