.class public final Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusOneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/plus1/proto/PlusOneProtos$Operation;",
        "Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2900()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 1

    .prologue
    .line 1273
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 3

    .prologue
    .line 1282
    new-instance v0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    invoke-direct {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;-><init>()V

    .line 1283
    .local v0, builder:Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    new-instance v1, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;-><init>(Lcom/google/android/plus1/proto/PlusOneProtos$1;)V

    iput-object v1, v0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    .line 1284
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    .registers 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1313
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1315
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    .registers 4

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    if-nez v1, :cond_c

    .line 1329
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1332
    :cond_c
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    .line 1333
    .local v0, returnMe:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    .line 1334
    return-object v0
.end method

.method public clone()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 3

    .prologue
    .line 1301
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

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
    .line 1273
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1338
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1351
    :cond_6
    :goto_6
    return-object p0

    .line 1339
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1340
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setType(I)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    .line 1342
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1343
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setValue(Z)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    .line 1345
    :cond_21
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1346
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    .line 1348
    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasAbuseToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1349
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getAbuseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1359
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1360
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 1364
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1365
    :sswitch_d
    return-object p0

    .line 1370
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setType(I)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    goto :goto_0

    .line 1374
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setValue(Z)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    goto :goto_0

    .line 1378
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    goto :goto_0

    .line 1382
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    goto :goto_0

    .line 1360
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
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
    .line 1273
    invoke-virtual {p0, p1, p2}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

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
    .line 1273
    invoke-virtual {p0, p1, p2}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1455
    if-nez p1, :cond_8

    .line 1456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1458
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasAbuseToken:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->access$3702(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z

    .line 1459
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->abuseToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->access$3802(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Ljava/lang/String;)Ljava/lang/String;

    .line 1460
    return-object p0
.end method

.method public setType(I)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasType:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->access$3102(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z

    .line 1399
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->type_:I
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->access$3202(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;I)I

    .line 1400
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1434
    if-nez p1, :cond_8

    .line 1435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1437
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasUri:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->access$3502(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z

    .line 1438
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->uri_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->access$3602(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Ljava/lang/String;)Ljava/lang/String;

    .line 1439
    return-object p0
.end method

.method public setValue(Z)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasValue:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->access$3302(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z

    .line 1417
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->value_:Z
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->access$3402(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;Z)Z

    .line 1418
    return-object p0
.end method
