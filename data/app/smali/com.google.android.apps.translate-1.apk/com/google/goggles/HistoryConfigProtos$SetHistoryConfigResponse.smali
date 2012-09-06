.class public final Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetHistoryConfigResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1387
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    .line 1388
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->initFields()V

    .line 1389
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1181
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1196
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->memoizedIsInitialized:B

    .line 1210
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->memoizedSerializedSize:I

    .line 1182
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1176
    invoke-direct {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;-><init>(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1183
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1196
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->memoizedIsInitialized:B

    .line 1210
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->memoizedSerializedSize:I

    .line 1183
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 1

    .prologue
    .line 1187
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 1195
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 1

    .prologue
    .line 1294
    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1900()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1297
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    .line 1264
    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1265
    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    .line 1267
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1274
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    .line 1275
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1276
    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    .line 1278
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1236
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1290
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1241
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1247
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;->access$1800(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;
    .registers 2

    .prologue
    .line 1191
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 3

    .prologue
    .line 1212
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->memoizedSerializedSize:I

    .line 1213
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1217
    :goto_5
    return v0

    .line 1215
    :cond_6
    const/4 v0, 0x0

    .line 1216
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->memoizedSerializedSize:I

    goto :goto_5
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1198
    iget-byte v1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->memoizedIsInitialized:B

    .line 1199
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 1202
    :goto_8
    return v0

    .line 1199
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 1201
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 2

    .prologue
    .line 1295
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;
    .registers 2

    .prologue
    .line 1299
    invoke-static {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->toBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse$Builder;

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
    .line 1224
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1207
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigResponse;->getSerializedSize()I

    .line 1208
    return-void
.end method
