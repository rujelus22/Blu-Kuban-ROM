.class public final Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagingResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;,
        Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3214
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    .line 3215
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->initFields()V

    .line 3216
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2913
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3023
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->memoizedIsInitialized:B

    .line 3037
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->memoizedSerializedSize:I

    .line 2914
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2908
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2915
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3023
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->memoizedIsInitialized:B

    .line 3037
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->memoizedSerializedSize:I

    .line 2915
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
    .registers 1

    .prologue
    .line 2919
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 3022
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2908
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
    .registers 2

    .prologue
    .line 2923
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 3039
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->memoizedSerializedSize:I

    .line 3040
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 3044
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 3042
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 3043
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->memoizedSerializedSize:I

    move v1, v0

    .line 3044
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3051
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
    .line 3034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;->getSerializedSize()I

    .line 3035
    return-void
.end method
