.class public final Lcom/google/goggles/RestrictsProtos$Category$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RestrictsProtos.java"

# interfaces
.implements Lcom/google/goggles/RestrictsProtos$CategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/RestrictsProtos$Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/RestrictsProtos$Category;",
        "Lcom/google/goggles/RestrictsProtos$Category$Builder;",
        ">;",
        "Lcom/google/goggles/RestrictsProtos$CategoryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private domainSpecificId_:I

.field private domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1228
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRETTY_NAME:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    .line 1252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->name_:Ljava/lang/Object;

    .line 1288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->displayName_:Ljava/lang/Object;

    .line 1087
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->maybeForceBuilderInitialization()V

    .line 1088
    return-void
.end method

.method static synthetic access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 1

    .prologue
    .line 1081
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->create()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    .line 1128
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Category;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1129
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1132
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 1

    .prologue
    .line 1093
    new-instance v0, Lcom/google/goggles/RestrictsProtos$Category$Builder;

    invoke-direct {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1091
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Category;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1120
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1122
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->build()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/RestrictsProtos$Category;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1136
    new-instance v2, Lcom/google/goggles/RestrictsProtos$Category;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/RestrictsProtos$Category;-><init>(Lcom/google/goggles/RestrictsProtos$Category$Builder;Lcom/google/goggles/RestrictsProtos$1;)V

    .line 1137
    iget v3, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1138
    const/4 v1, 0x0

    .line 1139
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 1142
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    #setter for: Lcom/google/goggles/RestrictsProtos$Category;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;
    invoke-static {v2, v1}, Lcom/google/goggles/RestrictsProtos$Category;->access$1002(Lcom/google/goggles/RestrictsProtos$Category;Lcom/google/goggles/RestrictsProtos$Category$Domain;)Lcom/google/goggles/RestrictsProtos$Category$Domain;

    .line 1143
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 1144
    or-int/lit8 v0, v0, 0x2

    .line 1146
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/RestrictsProtos$Category;->name_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/RestrictsProtos$Category;->access$1102(Lcom/google/goggles/RestrictsProtos$Category;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 1148
    or-int/lit8 v0, v0, 0x4

    .line 1150
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/RestrictsProtos$Category;->displayName_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/RestrictsProtos$Category;->access$1202(Lcom/google/goggles/RestrictsProtos$Category;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 1152
    or-int/lit8 v0, v0, 0x8

    .line 1154
    :cond_33
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domainSpecificId_:I

    #setter for: Lcom/google/goggles/RestrictsProtos$Category;->domainSpecificId_:I
    invoke-static {v2, v1}, Lcom/google/goggles/RestrictsProtos$Category;->access$1302(Lcom/google/goggles/RestrictsProtos$Category;I)I

    .line 1155
    #setter for: Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/RestrictsProtos$Category;->access$1402(Lcom/google/goggles/RestrictsProtos$Category;I)I

    .line 1156
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 2

    .prologue
    .line 1097
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1098
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRETTY_NAME:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    .line 1099
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->name_:Ljava/lang/Object;

    .line 1101
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->displayName_:Ljava/lang/Object;

    .line 1103
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domainSpecificId_:I

    .line 1105
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1106
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->clear()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->clear()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayName()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 2

    .prologue
    .line 1312
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1313
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Category;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->displayName_:Ljava/lang/Object;

    .line 1315
    return-object p0
.end method

.method public clearDomain()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 2

    .prologue
    .line 1245
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1246
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRETTY_NAME:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    .line 1248
    return-object p0
.end method

.method public clearDomainSpecificId()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 2

    .prologue
    .line 1338
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1339
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domainSpecificId_:I

    .line 1341
    return-object p0
.end method

.method public clearName()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 2

    .prologue
    .line 1276
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1277
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->name_:Ljava/lang/Object;

    .line 1279
    return-object p0
.end method

.method public clone()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 3

    .prologue
    .line 1110
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->create()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->clone()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->clone()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->clone()Lcom/google/goggles/RestrictsProtos$Category$Builder;

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
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->clone()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Category;
    .registers 2

    .prologue
    .line 1114
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->displayName_:Ljava/lang/Object;

    .line 1294
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1295
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1296
    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->displayName_:Ljava/lang/Object;

    .line 1299
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getDomain()Lcom/google/goggles/RestrictsProtos$Category$Domain;
    .registers 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    return-object v0
.end method

.method public getDomainSpecificId()I
    .registers 2

    .prologue
    .line 1329
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domainSpecificId_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->name_:Ljava/lang/Object;

    .line 1258
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1259
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1260
    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->name_:Ljava/lang/Object;

    .line 1263
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 1290
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

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

.method public hasDomain()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1230
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDomainSpecificId()Z
    .registers 3

    .prologue
    .line 1326
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 1254
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

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
    .line 1177
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1160
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1173
    :cond_6
    :goto_6
    return-object p0

    .line 1161
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category;->hasDomain()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1162
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category;->getDomain()Lcom/google/goggles/RestrictsProtos$Category$Domain;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->setDomain(Lcom/google/goggles/RestrictsProtos$Category$Domain;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    .line 1164
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category;->hasName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1165
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->setName(Ljava/lang/String;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    .line 1167
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1168
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    .line 1170
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category;->hasDomainSpecificId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1171
    invoke-virtual {p1}, Lcom/google/goggles/RestrictsProtos$Category;->getDomainSpecificId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->setDomainSpecificId(I)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1185
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1186
    sparse-switch v0, :sswitch_data_48

    .line 1191
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1193
    :sswitch_d
    return-object p0

    .line 1198
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1199
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Domain;->valueOf(I)Lcom/google/goggles/RestrictsProtos$Category$Domain;

    move-result-object v0

    .line 1200
    if-eqz v0, :cond_0

    .line 1201
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1202
    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    goto :goto_0

    .line 1207
    :sswitch_21
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1208
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1212
    :sswitch_2e
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1213
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domainSpecificId_:I

    goto :goto_0

    .line 1217
    :sswitch_3b
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1218
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 1186
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1081
    check-cast p1, Lcom/google/goggles/RestrictsProtos$Category;

    invoke-virtual {p0, p1}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1303
    if-nez p1, :cond_8

    .line 1304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1306
    :cond_8
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1307
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->displayName_:Ljava/lang/Object;

    .line 1309
    return-object p0
.end method

.method setDisplayName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1318
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1319
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->displayName_:Ljava/lang/Object;

    .line 1321
    return-void
.end method

.method public setDomain(Lcom/google/goggles/RestrictsProtos$Category$Domain;)Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1236
    if-nez p1, :cond_8

    .line 1237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1239
    :cond_8
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1240
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    .line 1242
    return-object p0
.end method

.method public setDomainSpecificId(I)Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1332
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1333
    iput p1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->domainSpecificId_:I

    .line 1335
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1267
    if-nez p1, :cond_8

    .line 1268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1270
    :cond_8
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1271
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->name_:Ljava/lang/Object;

    .line 1273
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1282
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->bitField0_:I

    .line 1283
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Category$Builder;->name_:Ljava/lang/Object;

    .line 1285
    return-void
.end method
