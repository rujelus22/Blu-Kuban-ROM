.class public final Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$StartFetchEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;",
        "Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Webclient$StartFetchEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fetchImmediately_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1317
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->maybeForceBuilderInitialization()V

    .line 1318
    return-void
.end method

.method static synthetic access$1900()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 1

    .prologue
    .line 1311
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 1

    .prologue
    .line 1323
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1321
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->build()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    .registers 3

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    .line 1343
    .local v0, result:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1344
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1346
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    .registers 6

    .prologue
    .line 1360
    new-instance v1, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;-><init>(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V

    .line 1361
    .local v1, result:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

    .line 1362
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1363
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1364
    or-int/lit8 v2, v2, 0x1

    .line 1366
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->fetchImmediately_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->fetchImmediately_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->access$2102(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;Z)Z

    .line 1367
    #setter for: Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->access$2202(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;I)I

    .line 1368
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 2

    .prologue
    .line 1327
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->fetchImmediately_:Z

    .line 1329
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

    .line 1330
    return-object p0
.end method

.method public clearFetchImmediately()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 2

    .prologue
    .line 1426
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

    .line 1427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->fetchImmediately_:Z

    .line 1429
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 3

    .prologue
    .line 1334
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

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
    .line 1311
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    .registers 2

    .prologue
    .line 1338
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    return-object v0
.end method

.method public getFetchImmediately()Z
    .registers 2

    .prologue
    .line 1417
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->fetchImmediately_:Z

    return v0
.end method

.method public hasFetchImmediately()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1414
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

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
    .line 1380
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
    .line 1311
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1311
    check-cast p1, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

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
    .line 1311
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1389
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 1394
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1396
    :sswitch_d
    return-object p0

    .line 1401
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

    .line 1402
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->fetchImmediately_:Z

    goto :goto_0

    .line 1389
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1372
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1376
    :cond_6
    :goto_6
    return-object p0

    .line 1373
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->hasFetchImmediately()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1374
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getFetchImmediately()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->setFetchImmediately(Z)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    goto :goto_6
.end method

.method public setFetchImmediately(Z)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1420
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->bitField0_:I

    .line 1421
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->fetchImmediately_:Z

    .line 1423
    return-object p0
.end method
