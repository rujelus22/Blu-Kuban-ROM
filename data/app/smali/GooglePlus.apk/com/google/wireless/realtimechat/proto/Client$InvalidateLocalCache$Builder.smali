.class public final Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCacheOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;",
        "Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCacheOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private version_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34054
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 34055
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->maybeForceBuilderInitialization()V

    .line 34056
    return-void
.end method

.method static synthetic access$47300()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 1

    .prologue
    .line 34049
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 1

    .prologue
    .line 34061
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34059
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34049
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 3

    .prologue
    .line 34080
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    .line 34081
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 34082
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 34084
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34049
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 6

    .prologue
    .line 34098
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;-><init>(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 34099
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

    .line 34100
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 34101
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 34102
    or-int/lit8 v2, v2, 0x1

    .line 34104
    :cond_10
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->version_:I

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->version_:I
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->access$47502(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;I)I

    .line 34105
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->access$47602(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;I)I

    .line 34106
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34049
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34049
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 2

    .prologue
    .line 34065
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34066
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->version_:I

    .line 34067
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

    .line 34068
    return-object p0
.end method

.method public clearVersion()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 2

    .prologue
    .line 34164
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

    .line 34165
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->version_:I

    .line 34167
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34049
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34049
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 3

    .prologue
    .line 34072
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

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
    .line 34049
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 34049
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34049
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2

    .prologue
    .line 34076
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 34155
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->version_:I

    return v0
.end method

.method public hasVersion()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34152
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

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
    .line 34118
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
    .line 34049
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34049
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

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
    .line 34049
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 34127
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 34132
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34134
    :sswitch_d
    return-object p0

    .line 34139
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

    .line 34140
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->version_:I

    goto :goto_0

    .line 34127
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 34110
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34114
    :cond_6
    :goto_6
    return-object p0

    .line 34111
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34112
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->setVersion(I)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    goto :goto_6
.end method

.method public setVersion(I)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34158
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->bitField0_:I

    .line 34159
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->version_:I

    .line 34161
    return-object p0
.end method
