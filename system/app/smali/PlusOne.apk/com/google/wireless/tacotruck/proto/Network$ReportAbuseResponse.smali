.class public final Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportAbuseResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22762
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    .line 22763
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->initFields()V

    .line 22764
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22556
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22571
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedIsInitialized:B

    .line 22585
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedSerializedSize:I

    .line 22557
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22551
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22558
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22571
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedIsInitialized:B

    .line 22585
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedSerializedSize:I

    .line 22558
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    .registers 1

    .prologue
    .line 22562
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 22570
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22551
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;
    .registers 2

    .prologue
    .line 22566
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 22587
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedSerializedSize:I

    .line 22588
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 22592
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 22590
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 22591
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 22592
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
    .line 22599
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
    .line 22582
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseResponse;->getSerializedSize()I

    .line 22583
    return-void
.end method
