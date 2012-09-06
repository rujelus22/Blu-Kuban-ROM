.class public final Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;",
        "Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private includeInvited_:Z

.field private includeMembers_:Z

.field private includeSuggested_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8257
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8258
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 8259
    return-void
.end method

.method static synthetic access$10800()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 1

    .prologue
    .line 8252
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 1

    .prologue
    .line 8264
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8262
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    .registers 3

    .prologue
    .line 8287
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    .line 8288
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8289
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8291
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    .registers 6

    .prologue
    .line 8305
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 8306
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8307
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8308
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8309
    or-int/lit8 v2, v2, 0x1

    .line 8311
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeMembers_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeMembers_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->access$11002(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;Z)Z

    .line 8312
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 8313
    or-int/lit8 v2, v2, 0x2

    .line 8315
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeSuggested_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeSuggested_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->access$11102(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;Z)Z

    .line 8316
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 8317
    or-int/lit8 v2, v2, 0x4

    .line 8319
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeInvited_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->includeInvited_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->access$11202(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;Z)Z

    .line 8320
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->access$11302(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;I)I

    .line 8321
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8268
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8269
    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeMembers_:Z

    .line 8270
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8271
    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeSuggested_:Z

    .line 8272
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8273
    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeInvited_:Z

    .line 8274
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8275
    return-object p0
.end method

.method public clearIncludeInvited()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 2

    .prologue
    .line 8437
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeInvited_:Z

    .line 8440
    return-object p0
.end method

.method public clearIncludeMembers()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 2

    .prologue
    .line 8395
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeMembers_:Z

    .line 8398
    return-object p0
.end method

.method public clearIncludeSuggested()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 2

    .prologue
    .line 8416
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeSuggested_:Z

    .line 8419
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 3

    .prologue
    .line 8279
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

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
    .line 8252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;
    .registers 2

    .prologue
    .line 8283
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeInvited()Z
    .registers 2

    .prologue
    .line 8428
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeInvited_:Z

    return v0
.end method

.method public getIncludeMembers()Z
    .registers 2

    .prologue
    .line 8386
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeMembers_:Z

    return v0
.end method

.method public getIncludeSuggested()Z
    .registers 2

    .prologue
    .line 8407
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeSuggested_:Z

    return v0
.end method

.method public hasIncludeInvited()Z
    .registers 3

    .prologue
    .line 8425
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasIncludeMembers()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8383
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIncludeSuggested()Z
    .registers 3

    .prologue
    .line 8404
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 8339
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
    .line 8252
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8252
    check-cast p1, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

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
    .line 8252
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8347
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 8348
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 8353
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8355
    :sswitch_d
    return-object p0

    .line 8360
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8361
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeMembers_:Z

    goto :goto_0

    .line 8365
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8366
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeSuggested_:Z

    goto :goto_0

    .line 8370
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8371
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeInvited_:Z

    goto :goto_0

    .line 8348
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 8325
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8335
    :cond_6
    :goto_6
    return-object p0

    .line 8326
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->hasIncludeMembers()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8327
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getIncludeMembers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->setIncludeMembers(Z)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    .line 8329
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->hasIncludeSuggested()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 8330
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getIncludeSuggested()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->setIncludeSuggested(Z)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    .line 8332
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->hasIncludeInvited()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8333
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest;->getIncludeInvited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->setIncludeInvited(Z)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;

    goto :goto_6
.end method

.method public setIncludeInvited(Z)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8431
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8432
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeInvited_:Z

    .line 8434
    return-object p0
.end method

.method public setIncludeMembers(Z)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8389
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8390
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeMembers_:Z

    .line 8392
    return-object p0
.end method

.method public setIncludeSuggested(Z)Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8410
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->bitField0_:I

    .line 8411
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesRequest$Builder;->includeSuggested_:Z

    .line 8413
    return-object p0
.end method
