.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifierOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventIdentifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private eventCreatorId_:Ljava/lang/Object;

.field private eventId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14542
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    .line 14543
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->initFields()V

    .line 14544
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14151
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14233
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->memoizedIsInitialized:B

    .line 14253
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->memoizedSerializedSize:I

    .line 14152
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14146
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14153
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14233
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->memoizedIsInitialized:B

    .line 14253
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->memoizedSerializedSize:I

    .line 14153
    return-void
.end method

.method static synthetic access$19202(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14146
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19302(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14146
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventCreatorId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19402(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14146
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
    .registers 1

    .prologue
    .line 14157
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    return-object v0
.end method

.method private getEventCreatorIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14218
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventCreatorId_:Ljava/lang/Object;

    .line 14219
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14220
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14222
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventCreatorId_:Ljava/lang/Object;

    .line 14225
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

.method private getEventIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14186
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventId_:Ljava/lang/Object;

    .line 14187
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14188
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14190
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventId_:Ljava/lang/Object;

    .line 14193
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
    .line 14230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventId_:Ljava/lang/Object;

    .line 14231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventCreatorId_:Ljava/lang/Object;

    .line 14232
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 1

    .prologue
    .line 14345
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->access$19000()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14348
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
    .registers 2

    .prologue
    .line 14161
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    return-object v0
.end method

.method public getEventCreatorId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14204
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventCreatorId_:Ljava/lang/Object;

    .line 14205
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14206
    check-cast v1, Ljava/lang/String;

    .line 14214
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14208
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14210
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14211
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14212
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventCreatorId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14214
    goto :goto_8
.end method

.method public getEventId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14172
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventId_:Ljava/lang/Object;

    .line 14173
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14174
    check-cast v1, Ljava/lang/String;

    .line 14182
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14176
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14178
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14179
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14180
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14182
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->memoizedSerializedSize:I

    .line 14256
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 14268
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 14258
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 14259
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 14260
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getEventIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14263
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 14264
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getEventCreatorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14267
    :cond_28
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->memoizedSerializedSize:I

    move v1, v0

    .line 14268
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasEventCreatorId()Z
    .registers 3

    .prologue
    .line 14201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->bitField0_:I

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

.method public hasEventId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14169
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 14235
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->memoizedIsInitialized:B

    .line 14236
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 14239
    :goto_8
    return v1

    .line 14236
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 14238
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 2

    .prologue
    .line 14346
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14146
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 2

    .prologue
    .line 14350
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

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
    .line 14275
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 14244
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getSerializedSize()I

    .line 14245
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 14246
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getEventIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14248
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 14249
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getEventCreatorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14251
    :cond_1f
    return-void
.end method
