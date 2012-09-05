.class public final Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalyticsLogResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37313
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    .line 37314
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->initFields()V

    .line 37315
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 37107
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 37122
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedIsInitialized:B

    .line 37136
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedSerializedSize:I

    .line 37108
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37102
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 37109
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 37122
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedIsInitialized:B

    .line 37136
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedSerializedSize:I

    .line 37109
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
    .registers 1

    .prologue
    .line 37113
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 37121
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37102
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;
    .registers 2

    .prologue
    .line 37117
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 37138
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedSerializedSize:I

    .line 37139
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 37143
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 37141
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 37142
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 37143
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
    .line 37150
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
    .line 37133
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$AnalyticsLogResponse;->getSerializedSize()I

    .line 37134
    return-void
.end method
