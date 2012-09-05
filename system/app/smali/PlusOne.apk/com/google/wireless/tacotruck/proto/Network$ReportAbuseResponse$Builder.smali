.class public final Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22681
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22682
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->maybeForceBuilderInitialization()V

    .line 22683
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 1

    .prologue
    .line 22688
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22686
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    .registers 3

    .prologue
    .line 22723
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 22724
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 1

    .prologue
    .line 22692
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22693
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 3

    .prologue
    .line 22697
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

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
    .line 22676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 22676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    .registers 2

    .prologue
    .line 22701
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
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
    .line 22676
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

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
    .line 22676
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22741
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 22742
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 22747
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22749
    :pswitch_d
    return-object p0

    .line 22742
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 22728
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 22729
    :cond_6
    return-object p0
.end method
