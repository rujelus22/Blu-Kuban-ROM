.class public final Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DebugRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 51936
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 52036
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 51937
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->maybeForceBuilderInitialization()V

    .line 51938
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 1

    .prologue
    .line 51943
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 51941
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    .registers 6

    .prologue
    .line 51980
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 51981
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 51982
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 51983
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 51984
    or-int/lit8 v2, v2, 0x1

    .line 51986
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->access$73502(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 51987
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->access$73602(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;I)I

    .line 51988
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 51931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 51931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 2

    .prologue
    .line 51947
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 51948
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 51949
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 51950
    return-object p0
.end method

.method public clearDebugType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 2

    .prologue
    .line 52053
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 52054
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 52056
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 51931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 51931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 3

    .prologue
    .line 51954
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

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
    .line 51931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDebugType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    .registers 2

    .prologue
    .line 52041
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 51931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    .registers 2

    .prologue
    .line 51958
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasDebugType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52038
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 51931
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

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
    .line 51931
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52008
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 52009
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 52014
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52016
    :sswitch_d
    return-object p0

    .line 52021
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 52022
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    move-result-object v2

    .line 52023
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    if-eqz v2, :cond_0

    .line 52024
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 52025
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    goto :goto_0

    .line 52009
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 51992
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 51996
    :cond_6
    :goto_6
    return-object p0

    .line 51993
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->hasDebugType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51994
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->getDebugType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->setDebugType(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    goto :goto_6
.end method

.method public setDebugType(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 52044
    if-nez p1, :cond_8

    .line 52045
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52047
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 52048
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 52050
    return-object p0
.end method
