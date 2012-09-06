.class public final Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$NotificationSettingsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettingsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;",
            ">;"
        }
    .end annotation
.end field

.field private emailAddress_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37882
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 38001
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 38090
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 37883
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->maybeForceBuilderInitialization()V

    .line 37884
    return-void
.end method

.method static synthetic access$51000(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37877
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$51100()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 1

    .prologue
    .line 37877
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37919
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    .line 37920
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 37921
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 37924
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 1

    .prologue
    .line 37889
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCategoriesIsMutable()V
    .registers 3

    .prologue
    .line 38004
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 38005
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 38006
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 38008
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37887
    return-void
.end method


# virtual methods
.method public addAllCategories(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;"
        }
    .end annotation

    .prologue
    .line 38071
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 38072
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 38074
    return-object p0
.end method

.method public addCategories(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 38064
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 38065
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38067
    return-object p0
.end method

.method public addCategories(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 38047
    if-nez p2, :cond_8

    .line 38048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38050
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 38051
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38053
    return-object p0
.end method

.method public addCategories(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 38057
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 38058
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38060
    return-object p0
.end method

.method public addCategories(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38037
    if-nez p1, :cond_8

    .line 38038
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38040
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 38041
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38043
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 3

    .prologue
    .line 37910
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    .line 37911
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37912
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37914
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 6

    .prologue
    .line 37928
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;-><init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 37929
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 37930
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37931
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 37932
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 37933
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 37935
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$51302(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;Ljava/util/List;)Ljava/util/List;

    .line 37936
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 37937
    or-int/lit8 v2, v2, 0x1

    .line 37939
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->emailAddress_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$51402(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37940
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$51502(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;I)I

    .line 37941
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 2

    .prologue
    .line 37893
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37894
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 37895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 37896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 37897
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 37898
    return-object p0
.end method

.method public clearCategories()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 2

    .prologue
    .line 38077
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 38078
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 38080
    return-object p0
.end method

.method public clearEmailAddress()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 2

    .prologue
    .line 38114
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 38115
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 38117
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 3

    .prologue
    .line 37902
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

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
    .line 37877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCategories(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .registers 3
    .parameter "index"

    .prologue
    .line 38017
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    return-object v0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 38014
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38011
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2

    .prologue
    .line 37906
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 38095
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 38096
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 38097
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38098
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 38101
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

.method public hasEmailAddress()Z
    .registers 3

    .prologue
    .line 38092
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 37963
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
    .line 37877
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37877
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

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
    .line 37877
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37971
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 37972
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 37977
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37979
    :sswitch_d
    return-object p0

    .line 37984
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    .line 37985
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 37986
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->addCategories(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    goto :goto_0

    .line 37990
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 37991
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    goto :goto_0

    .line 37972
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 37945
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37959
    :cond_6
    :goto_6
    return-object p0

    .line 37946
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$51300(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 37947
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 37948
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$51300(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 37949
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 37956
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->hasEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37957
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->setEmailAddress(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    goto :goto_6

    .line 37951
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 37952
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$51300(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setCategories(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 38031
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 38032
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38034
    return-object p0
.end method

.method public setCategories(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 38021
    if-nez p2, :cond_8

    .line 38022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38024
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 38025
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38027
    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38105
    if-nez p1, :cond_8

    .line 38106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38108
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 38109
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 38111
    return-object p0
.end method
