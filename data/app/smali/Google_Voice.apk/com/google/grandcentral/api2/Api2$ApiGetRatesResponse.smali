.class public final Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiGetRatesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    }
.end annotation


# static fields
.field public static final DISPLAYABLE_TOTAL_CALL_RATE_FIELD_NUMBER:I = 0x3

.field public static final DISPLAYABLE_TOTAL_SMS_RATE_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATE_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;


# instance fields
.field private bitField0_:I

.field private displayableTotalCallRate_:Ljava/lang/Object;

.field private displayableTotalSmsRate_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiRate;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33754
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 34381
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    .line 34382
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->initFields()V

    .line 34383
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x2

    .line 33691
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33873
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedIsInitialized:B

    .line 33913
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedSerializedSize:I

    .line 33692
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->initFields()V

    .line 33693
    const/4 v2, 0x0

    .line 33695
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 33696
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_a8

    .line 33697
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 33698
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_b8

    .line 33703
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_e

    .line 33705
    const/4 v0, 0x1

    goto :goto_e

    .line 33700
    :sswitch_1f
    const/4 v0, 0x1

    .line 33701
    goto :goto_e

    .line 33710
    :sswitch_21
    const/4 v3, 0x0

    .line 33711
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2f

    .line 33712
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 33714
    :cond_2f
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 33715
    if-eqz v3, :cond_46

    .line 33716
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 33717
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 33719
    :cond_46
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I
    :try_end_4c
    .catchall {:try_start_10 .. :try_end_4c} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_4c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4c} :catch_7d

    goto :goto_e

    .line 33742
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4d
    move-exception v1

    .line 33743
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_53

    .line 33748
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_53
    move-exception v5

    and-int/lit8 v6, v2, 0x2

    if-ne v6, v7, :cond_60

    .line 33749
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    .line 33751
    :cond_60
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->makeExtensionsImmutable()V

    throw v5

    .line 33723
    .restart local v4       #tag:I
    :sswitch_64
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v7, :cond_71

    .line 33724
    :try_start_68
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    .line 33725
    or-int/lit8 v2, v2, 0x2

    .line 33727
    :cond_71
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    sget-object v6, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_68 .. :try_end_7c} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_68 .. :try_end_7c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_7c} :catch_7d

    goto :goto_e

    .line 33744
    .end local v4           #tag:I
    :catch_7d
    move-exception v1

    .line 33745
    .local v1, e:Ljava/io/IOException;
    :try_start_7e
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_53

    .line 33731
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_8c
    :try_start_8c
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    .line 33732
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;

    goto/16 :goto_e

    .line 33736
    :sswitch_9a
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    .line 33737
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;
    :try_end_a6
    .catchall {:try_start_8c .. :try_end_a6} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8c .. :try_end_a6} :catch_4d
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_a6} :catch_7d

    goto/16 :goto_e

    .line 33748
    .end local v4           #tag:I
    :cond_a8
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_b4

    .line 33749
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    .line 33751
    :cond_b4
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->makeExtensionsImmutable()V

    .line 33753
    return-void

    .line 33698
    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x12 -> :sswitch_64
        0x1a -> :sswitch_8c
        0x22 -> :sswitch_9a
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33669
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33674
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33873
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedIsInitialized:B

    .line 33913
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedSerializedSize:I

    .line 33676
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33669
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33677
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33873
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedIsInitialized:B

    .line 33913
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedSerializedSize:I

    .line 33677
    return-void
.end method

.method static synthetic access$40702(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33669
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$40800(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33669
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$40802(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33669
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$40900(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33669
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$40902(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33669
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$41000(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33669
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$41002(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33669
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$41102(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33669
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 1

    .prologue
    .line 33681
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 33868
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 33869
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    .line 33870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 33871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 33872
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 1

    .prologue
    .line 33998
    #calls: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->access$40500()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34001
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33978
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33984
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33948
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33954
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33989
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33995
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33968
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33974
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33958
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33964
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 2

    .prologue
    .line 33685
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33669
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTotalCallRate()Ljava/lang/String;
    .registers 5

    .prologue
    .line 33808
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 33809
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33810
    check-cast v1, Ljava/lang/String;

    .line 33818
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 33812
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33814
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33815
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 33816
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 33818
    goto :goto_8
.end method

.method public getDisplayableTotalCallRateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33823
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 33824
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33825
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33827
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 33830
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

.method public getDisplayableTotalSmsRate()Ljava/lang/String;
    .registers 5

    .prologue
    .line 33841
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 33842
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33843
    check-cast v1, Ljava/lang/String;

    .line 33851
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 33845
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33847
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33848
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 33849
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 33851
    goto :goto_8
.end method

.method public getDisplayableTotalSmsRateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33856
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 33857
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33858
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33860
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 33863
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33766
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRate(I)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 3
    .parameter "index"

    .prologue
    .line 33794
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public getRateCount()I
    .registers 2

    .prologue
    .line 33791
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRateList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33784
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    return-object v0
.end method

.method public getRateOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiRateOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 33798
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRateOrBuilder;

    return-object v0
.end method

.method public getRateOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiRateOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33788
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 33915
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedSerializedSize:I

    .line 33916
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 33936
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 33918
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 33919
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 33920
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33923
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_31

    .line 33924
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33923
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 33927
    :cond_31
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_41

    .line 33928
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDisplayableTotalCallRateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33931
    :cond_41
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 33932
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDisplayableTotalSmsRateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 33935
    :cond_50
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 33936
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 33777
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasDisplayableTotalCallRate()Z
    .registers 3

    .prologue
    .line 33805
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

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

.method public hasDisplayableTotalSmsRate()Z
    .registers 3

    .prologue
    .line 33838
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33774
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33875
    iget-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedIsInitialized:B

    .line 33876
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 33893
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 33876
    goto :goto_9

    .line 33878
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->hasStatus()Z

    move-result v4

    if-nez v4, :cond_16

    .line 33879
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 33882
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_23

    .line 33883
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 33886
    :cond_23
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getRateCount()I

    move-result v4

    if-ge v0, v4, :cond_3a

    .line 33887
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getRate(I)Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiRate;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_37

    .line 33888
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 33886
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 33892
    :cond_3a
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->memoizedIsInitialized:B

    move v3, v2

    .line 33893
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 2

    .prologue
    .line 33999
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33669
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 2

    .prologue
    .line 34003
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33669
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

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
    .line 33942
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

    .line 33898
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getSerializedSize()I

    .line 33899
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 33900
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 33902
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 33903
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 33902
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 33905
    :cond_28
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_36

    .line 33906
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDisplayableTotalCallRateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33908
    :cond_36
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 33909
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDisplayableTotalSmsRateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33911
    :cond_43
    return-void
.end method
