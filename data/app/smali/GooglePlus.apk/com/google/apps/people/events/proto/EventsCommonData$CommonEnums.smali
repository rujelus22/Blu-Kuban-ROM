.class public final Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnumsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommonEnums"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;,
        Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;,
        Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;,
        Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1969
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;-><init>(Z)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    .line 1970
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->initFields()V

    .line 1971
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1487
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1778
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->memoizedIsInitialized:B

    .line 1792
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->memoizedSerializedSize:I

    .line 1488
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1489
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1778
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->memoizedIsInitialized:B

    .line 1792
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->memoizedSerializedSize:I

    .line 1489
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
    .registers 1

    .prologue
    .line 1493
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 1777
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 1

    .prologue
    .line 1876
    #calls: Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->access$2300()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1879
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
    .registers 2

    .prologue
    .line 1497
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1794
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->memoizedSerializedSize:I

    .line 1795
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 1799
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 1797
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 1798
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->memoizedSerializedSize:I

    move v1, v0

    .line 1799
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1780
    iget-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->memoizedIsInitialized:B

    .line 1781
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1784
    :goto_8
    return v1

    .line 1781
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1783
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 2

    .prologue
    .line 1877
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 2

    .prologue
    .line 1881
    invoke-static {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

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
    .line 1806
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
    .line 1789
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->getSerializedSize()I

    .line 1790
    return-void
.end method
