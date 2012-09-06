.class public final Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Constants.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Constants$ProtoConstantsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants$ProtoConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Constants$ProtoConstants;",
        "Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Constants$ProtoConstantsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 893
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->maybeForceBuilderInitialization()V

    .line 894
    return-void
.end method

.method static synthetic access$700()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 1

    .prologue
    .line 887
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->create()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 1

    .prologue
    .line 899
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 897
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 3

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->buildPartial()Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-result-object v0

    .line 917
    .local v0, result:Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 918
    invoke-static {v0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 920
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->build()Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 3

    .prologue
    .line 924
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Constants$1;)V

    .line 925
    .local v0, result:Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->buildPartial()Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 1

    .prologue
    .line 903
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 904
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->clear()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->clear()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 3

    .prologue
    .line 908
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->create()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->buildPartial()Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$ProtoConstants;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->clone()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->clone()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->clone()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

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
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->clone()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 2

    .prologue
    .line 912
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->getDefaultInstance()Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 934
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Constants$ProtoConstants;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 929
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->getDefaultInstance()Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 930
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 941
    const/4 v2, 0x0

    .line 943
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 948
    if-eqz v2, :cond_10

    .line 949
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$ProtoConstants;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    .line 952
    :cond_10
    return-object p0

    .line 944
    :catch_11
    move-exception v1

    .line 945
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    move-object v2, v0

    .line 946
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 948
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 949
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$ProtoConstants;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    :cond_21
    throw v3
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
    .line 887
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 887
    check-cast p1, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$ProtoConstants;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

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
    .line 887
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method
