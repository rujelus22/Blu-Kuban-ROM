.class public final Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$TypingNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypingNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8194
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;

    .line 8195
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->initFields()V

    .line 8196
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7950
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8003
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->memoizedIsInitialized:B

    .line 8017
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->memoizedSerializedSize:I

    .line 7951
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7945
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;-><init>(Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7952
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8003
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->memoizedIsInitialized:B

    .line 8017
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->memoizedSerializedSize:I

    .line 7952
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;
    .registers 1

    .prologue
    .line 7956
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 8002
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;
    .registers 1

    .prologue
    .line 8101
    #calls: Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;->access$10700()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;)Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8104
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;)Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7945
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;
    .registers 2

    .prologue
    .line 7960
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 8019
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->memoizedSerializedSize:I

    .line 8020
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 8024
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 8022
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 8023
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->memoizedSerializedSize:I

    move v1, v0

    .line 8024
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 8005
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->memoizedIsInitialized:B

    .line 8006
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8009
    :goto_8
    return v1

    .line 8006
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8008
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7945
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;
    .registers 2

    .prologue
    .line 8102
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7945
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;
    .registers 2

    .prologue
    .line 8106
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;)Lcom/google/wireless/realtimechat/proto/Client$TypingNotification$Builder;

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
    .line 8031
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
    .line 8014
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingNotification;->getSerializedSize()I

    .line 8015
    return-void
.end method
