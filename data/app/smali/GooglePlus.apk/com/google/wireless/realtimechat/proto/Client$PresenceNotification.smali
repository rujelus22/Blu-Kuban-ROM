.class public final Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$PresenceNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PresenceNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6485
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    .line 6486
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->initFields()V

    .line 6487
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6241
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6294
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->memoizedIsInitialized:B

    .line 6308
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->memoizedSerializedSize:I

    .line 6242
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6236
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;-><init>(Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6243
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6294
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->memoizedIsInitialized:B

    .line 6308
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->memoizedSerializedSize:I

    .line 6243
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;
    .registers 1

    .prologue
    .line 6247
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 6293
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    .registers 1

    .prologue
    .line 6392
    #calls: Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->access$8200()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;)Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6395
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;)Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6236
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;
    .registers 2

    .prologue
    .line 6251
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 6310
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->memoizedSerializedSize:I

    .line 6311
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 6315
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 6313
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 6314
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->memoizedSerializedSize:I

    move v1, v0

    .line 6315
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 6296
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->memoizedIsInitialized:B

    .line 6297
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 6300
    :goto_8
    return v1

    .line 6297
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 6299
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6236
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    .registers 2

    .prologue
    .line 6393
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6236
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;
    .registers 2

    .prologue
    .line 6397
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;)Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification$Builder;

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
    .line 6322
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6305
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceNotification;->getSerializedSize()I

    .line 6306
    return-void
.end method
