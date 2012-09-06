.class public final Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$CategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$CategoryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

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
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37446
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37565
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->description_:Ljava/lang/Object;

    .line 37601
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    .line 37447
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->maybeForceBuilderInitialization()V

    .line 37448
    return-void
.end method

.method static synthetic access$50500()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 1

    .prologue
    .line 37441
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 1

    .prologue
    .line 37453
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSettingsIsMutable()V
    .registers 3

    .prologue
    .line 37604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 37605
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    .line 37606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    .line 37608
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37451
    return-void
.end method


# virtual methods
.method public addAllSettings(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;"
        }
    .end annotation

    .prologue
    .line 37671
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->ensureSettingsIsMutable()V

    .line 37672
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 37674
    return-object p0
.end method

.method public addSettings(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37664
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->ensureSettingsIsMutable()V

    .line 37665
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37667
    return-object p0
.end method

.method public addSettings(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37647
    if-nez p2, :cond_8

    .line 37648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37650
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->ensureSettingsIsMutable()V

    .line 37651
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37653
    return-object p0
.end method

.method public addSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 37657
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->ensureSettingsIsMutable()V

    .line 37658
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37660
    return-object p0
.end method

.method public addSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37637
    if-nez p1, :cond_8

    .line 37638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37640
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->ensureSettingsIsMutable()V

    .line 37641
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37643
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .registers 3

    .prologue
    .line 37474
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    .line 37475
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37476
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37478
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .registers 6

    .prologue
    .line 37492
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;-><init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 37493
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    .line 37494
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37495
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 37496
    or-int/lit8 v2, v2, 0x1

    .line 37498
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->access$50702(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37499
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 37500
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    .line 37501
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    .line 37503
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->access$50802(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;Ljava/util/List;)Ljava/util/List;

    .line 37504
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->access$50902(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;I)I

    .line 37505
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 2

    .prologue
    .line 37457
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->description_:Ljava/lang/Object;

    .line 37459
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    .line 37460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    .line 37461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    .line 37462
    return-object p0
.end method

.method public clearDescription()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 2

    .prologue
    .line 37589
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    .line 37590
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->description_:Ljava/lang/Object;

    .line 37592
    return-object p0
.end method

.method public clearSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 2

    .prologue
    .line 37677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    .line 37678
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    .line 37680
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 3

    .prologue
    .line 37466
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37441
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .registers 2

    .prologue
    .line 37470
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37570
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->description_:Ljava/lang/Object;

    .line 37571
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37572
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37573
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->description_:Ljava/lang/Object;

    .line 37576
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getSettings(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 3
    .parameter "index"

    .prologue
    .line 37617
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    return-object v0
.end method

.method public getSettingsCount()I
    .registers 2

    .prologue
    .line 37614
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

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
    .line 37611
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37567
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 37527
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37441
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37441
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37441
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37535
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 37536
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 37541
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37543
    :sswitch_d
    return-object p0

    .line 37548
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    .line 37549
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 37553
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    .line 37554
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 37555
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->addSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    goto :goto_0

    .line 37536
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 37509
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37523
    :cond_6
    :goto_6
    return-object p0

    .line 37510
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 37511
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    .line 37513
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->access$50800(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 37514
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 37515
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->access$50800(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    .line 37516
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    goto :goto_6

    .line 37518
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->ensureSettingsIsMutable()V

    .line 37519
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->settings_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->access$50800(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37580
    if-nez p1, :cond_8

    .line 37581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37583
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->bitField0_:I

    .line 37584
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->description_:Ljava/lang/Object;

    .line 37586
    return-object p0
.end method

.method public setSettings(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37631
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->ensureSettingsIsMutable()V

    .line 37632
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37634
    return-object p0
.end method

.method public setSettings(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37621
    if-nez p2, :cond_8

    .line 37622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37624
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->ensureSettingsIsMutable()V

    .line 37625
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->settings_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37627
    return-object p0
.end method
