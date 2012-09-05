.class public final Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryMutation"
.end annotation


# instance fields
.field private appDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

.field private cachedSize:I

.field private deleted_:Z

.field private docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private documentHash_:J

.field private hasAppDetails:Z

.field private hasDeleted:Z

.field private hasDocid:Z

.field private hasDocumentHash:Z

.field private hasOfferType:Z

.field private hasSubscriptionDetails:Z

.field private offerType_:I

.field private subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 249
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 269
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->offerType_:I

    .line 286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->documentHash_:J

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->deleted_:Z

    .line 320
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->appDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    .line 340
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    .line 397
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->cachedSize:I

    .line 244
    return-void
.end method


# virtual methods
.method public getAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->appDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->cachedSize:I

    if-gez v0, :cond_7

    .line 401
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getSerializedSize()I

    .line 403
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->cachedSize:I

    return v0
.end method

.method public getDeleted()Z
    .registers 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->deleted_:Z

    return v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getDocumentHash()J
    .registers 3

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->documentHash_:J

    return-wide v0
.end method

.method public getOfferType()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->offerType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocid()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 409
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasOfferType()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 413
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getOfferType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocumentHash()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 417
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocumentHash()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDeleted()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 421
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDeleted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasAppDetails()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 425
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasSubscriptionDetails()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 429
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_61
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->cachedSize:I

    .line 433
    return v0
.end method

.method public getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    return-object v0
.end method

.method public hasAppDetails()Z
    .registers 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasAppDetails:Z

    return v0
.end method

.method public hasDeleted()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDeleted:Z

    return v0
.end method

.method public hasDocid()Z
    .registers 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocid:Z

    return v0
.end method

.method public hasDocumentHash()Z
    .registers 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocumentHash:Z

    return v0
.end method

.method public hasOfferType()Z
    .registers 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasOfferType:Z

    return v0
.end method

.method public hasSubscriptionDetails()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasSubscriptionDetails:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 441
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4a

    .line 445
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    :sswitch_d
    return-object p0

    .line 451
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 452
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 453
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 457
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 461
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setDocumentHash(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 465
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setDeleted(Z)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 469
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;-><init>()V

    .line 470
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 471
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setAppDetails(Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 475
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;-><init>()V

    .line 476
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 477
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->setSubscriptionDetails(Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    goto :goto_0

    .line 441
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1a
        0x18 -> :sswitch_22
        0x20 -> :sswitch_2a
        0x2a -> :sswitch_32
        0x32 -> :sswitch_3e
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
    .line 242
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    move-result-object v0

    return-object v0
.end method

.method public setAppDetails(Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .registers 3
    .parameter "value"

    .prologue
    .line 324
    if-nez p1, :cond_8

    .line 325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasAppDetails:Z

    .line 328
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->appDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    .line 329
    return-object p0
.end method

.method public setDeleted(Z)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .registers 3
    .parameter "value"

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDeleted:Z

    .line 308
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->deleted_:Z

    .line 309
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .registers 3
    .parameter "value"

    .prologue
    .line 253
    if-nez p1, :cond_8

    .line 254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 256
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocid:Z

    .line 257
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 258
    return-object p0
.end method

.method public setDocumentHash(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .registers 4
    .parameter "value"

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocumentHash:Z

    .line 291
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->documentHash_:J

    .line 292
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .registers 3
    .parameter "value"

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasOfferType:Z

    .line 274
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->offerType_:I

    .line 275
    return-object p0
.end method

.method public setSubscriptionDetails(Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;)Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    .registers 3
    .parameter "value"

    .prologue
    .line 344
    if-nez p1, :cond_8

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 347
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasSubscriptionDetails:Z

    .line 348
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    .line 349
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 380
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasOfferType()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 381
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getOfferType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 383
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDocumentHash()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 384
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocumentHash()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 386
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasDeleted()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 387
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDeleted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 389
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasAppDetails()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 390
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 392
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->hasSubscriptionDetails()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 393
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 395
    :cond_54
    return-void
.end method
