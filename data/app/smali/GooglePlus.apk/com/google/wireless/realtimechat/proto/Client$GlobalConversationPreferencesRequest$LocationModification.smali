.class public final Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationModification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21831
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    .line 21832
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->initFields()V

    .line 21833
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 21481
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21519
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->memoizedIsInitialized:B

    .line 21539
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->memoizedSerializedSize:I

    .line 21482
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21476
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;-><init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21483
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21519
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->memoizedIsInitialized:B

    .line 21539
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->memoizedSerializedSize:I

    .line 21483
    return-void
.end method

.method static synthetic access$29202(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21476
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    return-object p1
.end method

.method static synthetic access$29302(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21476
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$29402(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21476
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    .registers 1

    .prologue
    .line 21487
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 21516
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21517
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 21518
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 1

    .prologue
    .line 21631
    #calls: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->access$29000()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 21634
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21476
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    .registers 2

    .prologue
    .line 21491
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    return-object v0
.end method

.method public getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 21512
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21541
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->memoizedSerializedSize:I

    .line 21542
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 21554
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 21544
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 21545
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 21546
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 21549
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 21550
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21553
    :cond_28
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->memoizedSerializedSize:I

    move v1, v0

    .line 21554
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    .registers 2

    .prologue
    .line 21502
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    return-object v0
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 21509
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21499
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->bitField0_:I

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

    .line 21521
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->memoizedIsInitialized:B

    .line 21522
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 21525
    :goto_8
    return v1

    .line 21522
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 21524
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21476
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 2

    .prologue
    .line 21632
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21476
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 2

    .prologue
    .line 21636
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

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
    .line 21561
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 21530
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getSerializedSize()I

    .line 21531
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 21532
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21534
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 21535
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21537
    :cond_1f
    return-void
.end method
