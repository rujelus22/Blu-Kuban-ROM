.class public final Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$EventOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private broadcast_:Z

.field private hangout_:Z

.field private hideGuestList_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private openEventAcl_:Z

.field private openPhotoAcl_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 515
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;-><init>(Z)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    .line 516
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->initFields()V

    .line 517
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 110
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->memoizedIsInitialized:B

    .line 139
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->memoizedSerializedSize:I

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 110
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->memoizedIsInitialized:B

    .line 139
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->memoizedSerializedSize:I

    .line 41
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openEventAcl_:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openPhotoAcl_:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hideGuestList_:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hangout_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->broadcast_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openEventAcl_:Z

    .line 105
    iput-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openPhotoAcl_:Z

    .line 106
    iput-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hideGuestList_:Z

    .line 107
    iput-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hangout_:Z

    .line 108
    iput-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->broadcast_:Z

    .line 109
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 1

    .prologue
    .line 243
    #calls: Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->access$100()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 246
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBroadcast()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->broadcast_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHangout()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hangout_:Z

    return v0
.end method

.method public getHideGuestList()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hideGuestList_:Z

    return v0
.end method

.method public getOpenEventAcl()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openEventAcl_:Z

    return v0
.end method

.method public getOpenPhotoAcl()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openPhotoAcl_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 141
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->memoizedSerializedSize:I

    .line 142
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 166
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 144
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 145
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 146
    iget-boolean v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openEventAcl_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 149
    :cond_18
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 150
    iget-boolean v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openPhotoAcl_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 153
    :cond_25
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 154
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hideGuestList_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 157
    :cond_33
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 158
    iget-boolean v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hangout_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 161
    :cond_42
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 162
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->broadcast_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 165
    :cond_52
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->memoizedSerializedSize:I

    move v1, v0

    .line 166
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasBroadcast()Z
    .registers 3

    .prologue
    .line 97
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHangout()Z
    .registers 3

    .prologue
    .line 87
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

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

.method public hasHideGuestList()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

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

.method public hasOpenEventAcl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 57
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOpenPhotoAcl()Z
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

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

    .line 112
    iget-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->memoizedIsInitialized:B

    .line 113
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 116
    :goto_8
    return v1

    .line 113
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 115
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 2

    .prologue
    .line 244
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;
    .registers 2

    .prologue
    .line 248
    invoke-static {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;)Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions$Builder;

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
    .line 173
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->getSerializedSize()I

    .line 122
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 123
    iget-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openEventAcl_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 125
    :cond_11
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 126
    iget-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->openPhotoAcl_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 128
    :cond_1c
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 129
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hideGuestList_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 131
    :cond_28
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 132
    iget-boolean v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->hangout_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 134
    :cond_35
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 135
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventOptions;->broadcast_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 137
    :cond_43
    return-void
.end method
