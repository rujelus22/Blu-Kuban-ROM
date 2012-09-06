.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Term"
.end annotation


# instance fields
.field private body_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBody:Z

.field private hasHeader:Z

.field private header_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3259
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3264
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->header_:Ljava/lang/String;

    .line 3281
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->body_:Ljava/lang/String;

    .line 3317
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->cachedSize:I

    .line 3259
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 3320
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->cachedSize:I

    if-gez v0, :cond_7

    .line 3322
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getSerializedSize()I

    .line 3324
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->cachedSize:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3265
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 3329
    const/4 v0, 0x0

    .line 3330
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3331
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3334
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3335
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3338
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->cachedSize:I

    .line 3339
    return v0
.end method

.method public hasBody()Z
    .registers 2

    .prologue
    .line 3283
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasBody:Z

    return v0
.end method

.method public hasHeader()Z
    .registers 2

    .prologue
    .line 3266
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasHeader:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3347
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3348
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 3352
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3353
    :sswitch_d
    return-object p0

    .line 3358
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    goto :goto_0

    .line 3362
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->setBody(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    goto :goto_0

    .line 3348
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x2a -> :sswitch_e
        0x32 -> :sswitch_16
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
    .line 3256
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    .registers 3
    .parameter "value"

    .prologue
    .line 3285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasBody:Z

    .line 3286
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->body_:Ljava/lang/String;

    .line 3287
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    .registers 3
    .parameter "value"

    .prologue
    .line 3268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasHeader:Z

    .line 3269
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->header_:Ljava/lang/String;

    .line 3270
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
    .line 3309
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3310
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3312
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3313
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3315
    :cond_1c
    return-void
.end method
