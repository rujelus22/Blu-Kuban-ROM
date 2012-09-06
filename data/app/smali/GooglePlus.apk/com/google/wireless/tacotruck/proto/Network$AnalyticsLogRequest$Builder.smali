.class public final Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37554
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37654
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 37555
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->maybeForceBuilderInitialization()V

    .line 37556
    return-void
.end method

.method static synthetic access$52000()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 1

    .prologue
    .line 37549
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 1

    .prologue
    .line 37561
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37559
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37549
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
    .registers 3

    .prologue
    .line 37580
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v0

    .line 37581
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37582
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37584
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37549
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
    .registers 6

    .prologue
    .line 37598
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 37599
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    .line 37600
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37601
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 37602
    or-int/lit8 v2, v2, 0x1

    .line 37604
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->access$52202(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 37605
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->access$52302(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;I)I

    .line 37606
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37549
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37549
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 2

    .prologue
    .line 37565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37566
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 37567
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    .line 37568
    return-object p0
.end method

.method public clearLogEnvelope()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 2

    .prologue
    .line 37690
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 37692
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    .line 37693
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37549
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37549
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 3

    .prologue
    .line 37572
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

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
    .line 37549
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37549
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37549
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;
    .registers 2

    .prologue
    .line 37576
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLogEnvelope()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 2

    .prologue
    .line 37659
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    return-object v0
.end method

.method public hasLogEnvelope()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37656
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 37618
    const/4 v0, 0x1

    return v0
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
    .line 37549
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37549
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

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
    .line 37549
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37626
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 37627
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 37632
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37634
    :sswitch_d
    return-object p0

    .line 37639
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->newBuilder()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    .line 37640
    .local v0, subBuilder:Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->hasLogEnvelope()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 37641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->getLogEnvelope()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 37643
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 37644
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->setLogEnvelope(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    goto :goto_0

    .line 37627
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 37610
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37614
    :cond_6
    :goto_6
    return-object p0

    .line 37611
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->hasLogEnvelope()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37612
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest;->getLogEnvelope()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->mergeLogEnvelope(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;

    goto :goto_6
.end method

.method public mergeLogEnvelope(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 37678
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 37680
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->newBuilder(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 37686
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    .line 37687
    return-object p0

    .line 37683
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    goto :goto_1f
.end method

.method public setLogEnvelope(Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 37672
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->build()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 37674
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    .line 37675
    return-object p0
.end method

.method public setLogEnvelope(Lcom/google/wireless/webapps/Analytics$LogEnvelope;)Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37662
    if-nez p1, :cond_8

    .line 37663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37665
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->logEnvelope_:Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    .line 37667
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogRequest$Builder;->bitField0_:I

    .line 37668
    return-object p0
.end method
