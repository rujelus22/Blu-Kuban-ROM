.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarksOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatencyMarks"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientLaunch_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private serverCreateRedirectEnd_:J

.field private serverCreateRoomEnd_:J

.field private serverCreateRoomStart_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1369
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;-><init>(Z)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    .line 1370
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->initFields()V

    .line 1371
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 946
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1006
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->memoizedIsInitialized:B

    .line 1032
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->memoizedSerializedSize:I

    .line 947
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 948
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1006
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->memoizedIsInitialized:B

    .line 1032
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->memoizedSerializedSize:I

    .line 948
    return-void
.end method

.method static synthetic access$1302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 941
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->clientLaunch_:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 941
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomStart_:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 941
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomEnd_:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 941
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRedirectEnd_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 941
    iput p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    .registers 1

    .prologue
    .line 952
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 1001
    iput-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->clientLaunch_:J

    .line 1002
    iput-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomStart_:J

    .line 1003
    iput-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomEnd_:J

    .line 1004
    iput-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRedirectEnd_:J

    .line 1005
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 1

    .prologue
    .line 1132
    #calls: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->access$1100()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1135
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientLaunch()J
    .registers 3

    .prologue
    .line 967
    iget-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->clientLaunch_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    .registers 2

    .prologue
    .line 956
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1034
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->memoizedSerializedSize:I

    .line 1035
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1055
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1037
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1038
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 1039
    iget-wide v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->clientLaunch_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1042
    :cond_18
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 1043
    iget-wide v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomStart_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1046
    :cond_25
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_33

    .line 1047
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomEnd_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1050
    :cond_33
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 1051
    iget-wide v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRedirectEnd_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1054
    :cond_42
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->memoizedSerializedSize:I

    move v1, v0

    .line 1055
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getServerCreateRedirectEnd()J
    .registers 3

    .prologue
    .line 997
    iget-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRedirectEnd_:J

    return-wide v0
.end method

.method public getServerCreateRoomEnd()J
    .registers 3

    .prologue
    .line 987
    iget-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomEnd_:J

    return-wide v0
.end method

.method public getServerCreateRoomStart()J
    .registers 3

    .prologue
    .line 977
    iget-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomStart_:J

    return-wide v0
.end method

.method public hasClientLaunch()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 964
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasServerCreateRedirectEnd()Z
    .registers 3

    .prologue
    .line 994
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasServerCreateRoomEnd()Z
    .registers 3

    .prologue
    .line 984
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasServerCreateRoomStart()Z
    .registers 3

    .prologue
    .line 974
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1008
    iget-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->memoizedIsInitialized:B

    .line 1009
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1012
    :goto_8
    return v1

    .line 1009
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1011
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 2

    .prologue
    .line 1133
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 2

    .prologue
    .line 1137
    invoke-static {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

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
    .line 1062
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1017
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getSerializedSize()I

    .line 1018
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 1019
    iget-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->clientLaunch_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1021
    :cond_11
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 1022
    iget-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomStart_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1024
    :cond_1c
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_28

    .line 1025
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomEnd_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1027
    :cond_28
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 1028
    iget-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRedirectEnd_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1030
    :cond_35
    return-void
.end method
