.class public final Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;",
        ">;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3556
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->url_:Ljava/lang/Object;

    .line 3557
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->maybeForceBuilderInitialization()V

    .line 3558
    return-void
.end method

.method static synthetic access$4600()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 1

    .prologue
    .line 3551
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 1

    .prologue
    .line 3563
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3561
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    .registers 3

    .prologue
    .line 3582
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    .line 3583
    .local v0, result:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3584
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3586
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->build()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    .registers 6

    .prologue
    .line 3600
    new-instance v1, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V

    .line 3601
    .local v1, result:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->bitField0_:I

    .line 3602
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3603
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3604
    or-int/lit8 v2, v2, 0x1

    .line 3606
    :cond_10
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->access$4802(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3607
    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->access$4902(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;I)I

    .line 3608
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 2

    .prologue
    .line 3567
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->url_:Ljava/lang/Object;

    .line 3569
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->bitField0_:I

    .line 3570
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 3

    .prologue
    .line 3574
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

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
    .line 3551
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    .registers 2

    .prologue
    .line 3578
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3620
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 3612
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3616
    :cond_6
    :goto_6
    return-object p0

    .line 3613
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3614
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3628
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3629
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 3634
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3636
    :sswitch_d
    return-object p0

    .line 3641
    :sswitch_e
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->bitField0_:I

    .line 3642
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 3629
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 3551
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3551
    check-cast p1, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

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
    .line 3551
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3667
    if-nez p1, :cond_8

    .line 3668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3670
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->bitField0_:I

    .line 3671
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->url_:Ljava/lang/Object;

    .line 3673
    return-object p0
.end method
