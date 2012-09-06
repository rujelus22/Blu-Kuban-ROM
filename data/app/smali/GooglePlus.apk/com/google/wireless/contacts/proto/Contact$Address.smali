.class public final Lcom/google/wireless/contacts/proto/Contact$Address;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$AddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Address;

.field private static final serialVersionUID:J


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private evergreen_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1666
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$Address;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$Address;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$Address;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Address;

    .line 1667
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$Address;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Address;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->initFields()V

    .line 1668
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Contact$Address$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1143
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1247
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->memoizedIsInitialized:B

    .line 1273
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->memoizedSerializedSize:I

    .line 1144
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Contact$Address$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$Address;-><init>(Lcom/google/wireless/contacts/proto/Contact$Address$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1145
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1247
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->memoizedIsInitialized:B

    .line 1273
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->memoizedSerializedSize:I

    .line 1145
    return-void
.end method

.method static synthetic access$1902(Lcom/google/wireless/contacts/proto/Contact$Address;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/wireless/contacts/proto/Contact$Address;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/wireless/contacts/proto/Contact$Address;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/wireless/contacts/proto/Contact$Address;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1138
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->evergreen_:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/google/wireless/contacts/proto/Contact$Address;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1138
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    return p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->address_:Ljava/lang/Object;

    .line 1189
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1190
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1192
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->address_:Ljava/lang/Object;

    .line 1195
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$Address;
    .registers 1

    .prologue
    .line 1149
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$Address;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Address;

    return-object v0
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->type_:Ljava/lang/Object;

    .line 1221
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1222
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1224
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->type_:Ljava/lang/Object;

    .line 1227
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1242
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1243
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->address_:Ljava/lang/Object;

    .line 1244
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->type_:Ljava/lang/Object;

    .line 1245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->evergreen_:Z

    .line 1246
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 1

    .prologue
    .line 1373
    #calls: Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->access$1700()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Contact$Address;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1376
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$Address;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->address_:Ljava/lang/Object;

    .line 1175
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1176
    check-cast v1, Ljava/lang/String;

    .line 1184
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1178
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1180
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1181
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1182
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->address_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1184
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$Address;
    .registers 2

    .prologue
    .line 1153
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$Address;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$Address;

    return-object v0
.end method

.method public getEvergreen()Z
    .registers 2

    .prologue
    .line 1238
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->evergreen_:Z

    return v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1275
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->memoizedSerializedSize:I

    .line 1276
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1296
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1278
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1279
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 1280
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1283
    :cond_18
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 1284
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1287
    :cond_27
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 1288
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1291
    :cond_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 1292
    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->evergreen_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1295
    :cond_46
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->memoizedSerializedSize:I

    move v1, v0

    .line 1296
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->type_:Ljava/lang/Object;

    .line 1207
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1208
    check-cast v1, Ljava/lang/String;

    .line 1216
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1210
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1212
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1213
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1214
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->type_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1216
    goto :goto_8
.end method

.method public hasAddress()Z
    .registers 3

    .prologue
    .line 1171
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

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

.method public hasEvergreen()Z
    .registers 3

    .prologue
    .line 1235
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

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

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1161
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 1203
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1249
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->memoizedIsInitialized:B

    .line 1250
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1253
    :goto_8
    return v1

    .line 1250
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1252
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address;->newBuilderForType()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 2

    .prologue
    .line 1374
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address;->toBuilder()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    .registers 2

    .prologue
    .line 1378
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Contact$Address;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$Address;)Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1258
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getSerializedSize()I

    .line 1259
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 1260
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1262
    :cond_11
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 1263
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1265
    :cond_1e
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 1266
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1268
    :cond_2c
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 1269
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$Address;->evergreen_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1271
    :cond_39
    return-void
.end method
