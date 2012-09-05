.class public final Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddressOrBuilder;"
    }
.end annotation


# instance fields
.field private addressable_:Z

.field private bitField0_:I

.field private gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

.field private jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1305
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .line 1348
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    .line 1391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->addressable_:Z

    .line 1162
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->maybeForceBuilderInitialization()V

    .line 1163
    return-void
.end method

.method static synthetic access$1400()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 1

    .prologue
    .line 1156
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 1

    .prologue
    .line 1168
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1166
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 3

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    .line 1192
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1193
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1195
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 6

    .prologue
    .line 1209
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V

    .line 1210
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1211
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1212
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1213
    or-int/lit8 v2, v2, 0x1

    .line 1215
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->access$1602(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .line 1216
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1217
    or-int/lit8 v2, v2, 0x2

    .line 1219
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->access$1702(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    .line 1220
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1221
    or-int/lit8 v2, v2, 0x4

    .line 1223
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->addressable_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->addressable_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->access$1802(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;Z)Z

    .line 1224
    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->access$1902(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;I)I

    .line 1225
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 2

    .prologue
    .line 1172
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1173
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .line 1174
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1175
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    .line 1176
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->addressable_:Z

    .line 1178
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1179
    return-object p0
.end method

.method public clearAddressable()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 2

    .prologue
    .line 1405
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->addressable_:Z

    .line 1408
    return-object p0
.end method

.method public clearGateway()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 2

    .prologue
    .line 1384
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    .line 1386
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1387
    return-object p0
.end method

.method public clearJID()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 2

    .prologue
    .line 1341
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .line 1343
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1344
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 3

    .prologue
    .line 1183
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

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
    .line 1156
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddressable()Z
    .registers 2

    .prologue
    .line 1396
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->addressable_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 1187
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getGateway()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    .registers 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    return-object v0
.end method

.method public getJID()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;
    .registers 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    return-object v0
.end method

.method public hasAddressable()Z
    .registers 3

    .prologue
    .line 1393
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

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

.method public hasGateway()Z
    .registers 3

    .prologue
    .line 1350
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

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

.method public hasJID()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1307
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

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
    .line 1156
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

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
    .line 1156
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1264
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 1269
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1271
    :sswitch_d
    return-object p0

    .line 1276
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    .line 1277
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->hasJID()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1278
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->getJID()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    .line 1280
    :cond_1f
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1281
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->setJID(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    goto :goto_0

    .line 1285
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;
    :sswitch_2b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    .line 1286
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1287
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->getGateway()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    .line 1289
    :cond_3c
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1290
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->setGateway(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    goto :goto_0

    .line 1294
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    :sswitch_48
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1295
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->addressable_:Z

    goto :goto_0

    .line 1264
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0xb -> :sswitch_e
        0x2b -> :sswitch_2b
        0x40 -> :sswitch_48
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1229
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1239
    :cond_6
    :goto_6
    return-object p0

    .line 1230
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->hasJID()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1231
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getJID()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeJID(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    .line 1233
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1234
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getGateway()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeGateway(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    .line 1236
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->hasAddressable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1237
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getAddressable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->setAddressable(Z)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    goto :goto_6
.end method

.method public mergeGateway(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1372
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1374
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    .line 1380
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1381
    return-object p0

    .line 1377
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    goto :goto_1f
.end method

.method public mergeJID(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1329
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1331
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .line 1337
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1338
    return-object p0

    .line 1334
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    goto :goto_1f
.end method

.method public setAddressable(Z)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1399
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1400
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->addressable_:Z

    .line 1402
    return-object p0
.end method

.method public setGateway(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1366
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    .line 1368
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1369
    return-object p0
.end method

.method public setGateway(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1356
    if-nez p1, :cond_8

    .line 1357
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1359
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->gateway_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    .line 1361
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1362
    return-object p0
.end method

.method public setJID(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1323
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .line 1325
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1326
    return-object p0
.end method

.method public setJID(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1313
    if-nez p1, :cond_8

    .line 1314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1316
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->jID_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$JID;

    .line 1318
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->bitField0_:I

    .line 1319
    return-object p0
.end method
