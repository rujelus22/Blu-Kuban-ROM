.class public final Lcom/google/wireless/tacotruck/proto/Logging$Targets;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Logging.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Logging$TargetsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Targets"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;,
        Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;,
        Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Logging$Targets;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1280
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Logging$Targets;

    .line 1281
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Logging$Targets;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->initFields()V

    .line 1282
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1089
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->memoizedIsInitialized:B

    .line 1103
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->memoizedSerializedSize:I

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;Lcom/google/wireless/tacotruck/proto/Logging$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;-><init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1089
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->memoizedIsInitialized:B

    .line 1103
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->memoizedSerializedSize:I

    .line 21
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Logging$Targets;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Logging$Targets;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 1088
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;
    .registers 1

    .prologue
    .line 1187
    #calls: Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;->create()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;->access$100()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Logging$Targets;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1190
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->newBuilder()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Logging$Targets;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Logging$Targets;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Logging$Targets;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Logging$Targets;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1105
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->memoizedSerializedSize:I

    .line 1106
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 1110
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 1108
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 1109
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->memoizedSerializedSize:I

    move v1, v0

    .line 1110
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1091
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->memoizedIsInitialized:B

    .line 1092
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1095
    :goto_8
    return v1

    .line 1092
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1094
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;
    .registers 2

    .prologue
    .line 1188
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->newBuilder()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->toBuilder()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;
    .registers 2

    .prologue
    .line 1192
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->newBuilder(Lcom/google/wireless/tacotruck/proto/Logging$Targets;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Builder;

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
    .line 1117
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
    .line 1100
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Logging$Targets;->getSerializedSize()I

    .line 1101
    return-void
.end method
