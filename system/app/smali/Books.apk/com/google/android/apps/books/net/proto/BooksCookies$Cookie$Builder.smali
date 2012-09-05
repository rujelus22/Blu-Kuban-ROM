.class public final Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BooksCookies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;",
        "Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 1

    .prologue
    .line 274
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->create()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 3

    .prologue
    .line 283
    new-instance v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    invoke-direct {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;-><init>()V

    .line 284
    .local v0, builder:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    new-instance v1, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;-><init>(Lcom/google/android/apps/books/net/proto/BooksCookies$1;)V

    iput-object v1, v0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    .line 285
    return-object v0
.end method


# virtual methods
.method public addPorts(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$300(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 609
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$302(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/util/List;)Ljava/util/List;

    .line 611
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$300(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    return-object p0
.end method

.method public build()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 316
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->buildPartial()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    .registers 4

    .prologue
    .line 329
    iget-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    if-nez v1, :cond_c

    .line 330
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$300(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_25

    .line 334
    iget-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    iget-object v2, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$300(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$302(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/util/List;)Ljava/util/List;

    .line 337
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    .line 338
    .local v0, returnMe:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    .line 339
    return-object v0
.end method

.method public clone()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 3

    .prologue
    .line 302
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->create()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->mergeFrom(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->clone()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->clone()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->clone()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    invoke-virtual {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 343
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getDefaultInstance()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 377
    :cond_6
    :goto_6
    return-object p0

    .line 344
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 345
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setName(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 347
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 348
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setValue(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 350
    :cond_21
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 351
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setComment(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 353
    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasCommentUrl()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 354
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getCommentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setCommentUrl(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 356
    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasExpiryDate()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 357
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getExpiryDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setExpiryDate(J)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 359
    :cond_48
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasDomain()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 360
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setDomain(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 362
    :cond_55
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasPath()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 363
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setPath(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 365
    :cond_62
    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$300(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$300(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 367
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$302(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/util/List;)Ljava/util/List;

    .line 369
    :cond_82
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$300(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->ports_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$300(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    :cond_8f
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasIsSecure()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 372
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getIsSecure()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setIsSecure(Z)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 374
    :cond_9c
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setVersion(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 386
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_78

    .line 390
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    :sswitch_d
    return-object p0

    .line 396
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setName(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 400
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setValue(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 404
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setComment(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 408
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setCommentUrl(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 412
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setExpiryDate(J)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 416
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setDomain(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 420
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setPath(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 424
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->addPorts(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 428
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 429
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 430
    .local v1, limit:I
    :goto_56
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_64

    .line 431
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->addPorts(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_56

    .line 433
    :cond_64
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 437
    .end local v0           #length:I
    .end local v1           #limit:I
    :sswitch_68
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setIsSecure(Z)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 441
    :sswitch_70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setVersion(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    goto :goto_0

    .line 386
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x40 -> :sswitch_46
        0x42 -> :sswitch_4e
        0x48 -> :sswitch_68
        0x50 -> :sswitch_70
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 499
    if-nez p1, :cond_8

    .line 500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 502
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasComment:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$802(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 503
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->comment_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$902(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method public setCommentUrl(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 520
    if-nez p1, :cond_8

    .line 521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 523
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasCommentUrl:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1002(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->commentUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1102(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 559
    if-nez p1, :cond_8

    .line 560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 562
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasDomain:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1402(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 563
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->domain_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1502(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;

    .line 564
    return-object p0
.end method

.method public setExpiryDate(J)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasExpiryDate:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1202(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 542
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->expiryDate_:J
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1302(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;J)J

    .line 543
    return-object p0
.end method

.method public setIsSecure(Z)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasIsSecure:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1802(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 636
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->isSecure_:Z
    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1902(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 637
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 457
    if-nez p1, :cond_8

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 460
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasName:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$402(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$502(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 580
    if-nez p1, :cond_8

    .line 581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 583
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasPath:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1602(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 584
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->path_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$1702(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 478
    if-nez p1, :cond_8

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 481
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasValue:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$602(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->value_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$702(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    return-object p0
.end method

.method public setVersion(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$2002(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;Z)Z

    .line 654
    iget-object v0, p0, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->result:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    #setter for: Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->version_:I
    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->access$2102(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;I)I

    .line 655
    return-object p0
.end method
