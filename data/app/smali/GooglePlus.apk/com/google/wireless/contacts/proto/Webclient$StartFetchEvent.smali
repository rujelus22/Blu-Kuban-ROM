.class public final Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$StartFetchEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartFetchEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fetchImmediately_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1436
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .line 1437
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->initFields()V

    .line 1438
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1172
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1199
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->memoizedIsInitialized:B

    .line 1216
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->memoizedSerializedSize:I

    .line 1173
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;-><init>(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1174
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1199
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->memoizedIsInitialized:B

    .line 1216
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->memoizedSerializedSize:I

    .line 1174
    return-void
.end method

.method static synthetic access$2102(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1167
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->fetchImmediately_:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1167
    iput p1, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    .registers 1

    .prologue
    .line 1178
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->fetchImmediately_:Z

    .line 1198
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 1

    .prologue
    .line 1304
    #calls: Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->access$1900()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1307
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    .registers 2

    .prologue
    .line 1182
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    return-object v0
.end method

.method public getFetchImmediately()Z
    .registers 2

    .prologue
    .line 1193
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->fetchImmediately_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1218
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->memoizedSerializedSize:I

    .line 1219
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 1227
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 1221
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 1222
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 1223
    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->fetchImmediately_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1226
    :cond_16
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->memoizedSerializedSize:I

    move v1, v0

    .line 1227
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasFetchImmediately()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1190
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->bitField0_:I

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

    .line 1201
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->memoizedIsInitialized:B

    .line 1202
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1205
    :goto_8
    return v1

    .line 1202
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1204
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->newBuilderForType()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 2

    .prologue
    .line 1305
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->toBuilder()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;
    .registers 2

    .prologue
    .line 1309
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->newBuilder(Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent$Builder;

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
    .line 1234
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1210
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getSerializedSize()I

    .line 1211
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 1212
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->fetchImmediately_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1214
    :cond_f
    return-void
.end method
