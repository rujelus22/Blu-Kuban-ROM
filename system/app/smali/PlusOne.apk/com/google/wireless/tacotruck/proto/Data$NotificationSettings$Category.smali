.class public final Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$CategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private settings_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34912
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    .line 34913
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->initFields()V

    .line 34914
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34470
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34541
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->memoizedIsInitialized:B

    .line 34561
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->memoizedSerializedSize:I

    .line 34471
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34465
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;-><init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34472
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34541
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->memoizedIsInitialized:B

    .line 34561
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->memoizedSerializedSize:I

    .line 34472
    return-void
.end method

.method static synthetic access$47202(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34465
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$47300(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34465
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$47302(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34465
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$47402(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34465
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .registers 1

    .prologue
    .line 34476
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34505
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->description_:Ljava/lang/Object;

    .line 34506
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34507
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34509
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->description_:Ljava/lang/Object;

    .line 34512
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 34538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->description_:Ljava/lang/Object;

    .line 34539
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    .line 34540
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 1

    .prologue
    .line 34653
    #calls: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->access$47000()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34656
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34465
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .registers 2

    .prologue
    .line 34480
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34491
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->description_:Ljava/lang/Object;

    .line 34492
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34493
    check-cast v1, Ljava/lang/String;

    .line 34501
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34495
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34497
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34498
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34499
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34501
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 34563
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->memoizedSerializedSize:I

    .line 34564
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 34576
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 34566
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 34567
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 34568
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 34571
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 34572
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 34571
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 34575
    :cond_32
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->memoizedSerializedSize:I

    move v2, v1

    .line 34576
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getSettings(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 3
    .parameter "index"

    .prologue
    .line 34530
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    return-object v0
.end method

.method public getSettingsCount()I
    .registers 2

    .prologue
    .line 34527
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSettingsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34520
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    return-object v0
.end method

.method public getSettingsOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$SettingOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 34534
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$SettingOrBuilder;

    return-object v0
.end method

.method public getSettingsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$SettingOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34524
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    return-object v0
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34488
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->bitField0_:I

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

    .line 34543
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->memoizedIsInitialized:B

    .line 34544
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 34547
    :goto_8
    return v1

    .line 34544
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 34546
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 2

    .prologue
    .line 34658
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

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
    .line 34583
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
    const/4 v2, 0x1

    .line 34552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getSerializedSize()I

    .line 34553
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 34554
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34556
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 34557
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 34556
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 34559
    :cond_29
    return-void
.end method
