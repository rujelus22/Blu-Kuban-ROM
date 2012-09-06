.class public final Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SubscriptionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$SubscriptionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$SubscriptionData;",
        "Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$SubscriptionDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Category;",
            ">;"
        }
    .end annotation
.end field

.field private firstitemmsec_:J

.field private htmlUrl_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private sortid_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1011
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->id_:Ljava/lang/Object;

    .line 1047
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->title_:Ljava/lang/Object;

    .line 1083
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    .line 1172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->sortid_:Ljava/lang/Object;

    .line 1229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 823
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->maybeForceBuilderInitialization()V

    .line 824
    return-void
.end method

.method static synthetic access$600(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 1

    .prologue
    .line 817
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->create()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    .line 868
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 869
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 872
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 1

    .prologue
    .line 829
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCategoriesIsMutable()V
    .registers 3

    .prologue
    .line 1086
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    .line 1088
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1090
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 827
    return-void
.end method


# virtual methods
.method public addAllCategories(Ljava/lang/Iterable;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$Category;",
            ">;)",
            "Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;"
        }
    .end annotation

    .prologue
    .line 1153
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/extrpc/Client$Category;>;"
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->ensureCategoriesIsMutable()V

    .line 1154
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1156
    return-object p0
.end method

.method public addCategories(ILcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->ensureCategoriesIsMutable()V

    .line 1147
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->build()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1149
    return-object p0
.end method

.method public addCategories(ILcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1129
    if-nez p2, :cond_8

    .line 1130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1132
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->ensureCategoriesIsMutable()V

    .line 1133
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1135
    return-object p0
.end method

.method public addCategories(Lcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->ensureCategoriesIsMutable()V

    .line 1140
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->build()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    return-object p0
.end method

.method public addCategories(Lcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1119
    if-nez p1, :cond_8

    .line 1120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1122
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->ensureCategoriesIsMutable()V

    .line 1123
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    return-object p0
.end method

.method public build()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 3

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    .line 859
    .local v0, result:Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 860
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 862
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->build()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 6

    .prologue
    .line 876
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;-><init>(Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 877
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 878
    const/4 v2, 0x0

    .line 879
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 880
    or-int/lit8 v2, v2, 0x1

    .line 882
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$902(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 884
    or-int/lit8 v2, v2, 0x2

    .line 886
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->title_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$1002(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 888
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    .line 889
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 891
    :cond_36
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$1102(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/util/List;)Ljava/util/List;

    .line 892
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 893
    or-int/lit8 v2, v2, 0x4

    .line 895
    :cond_43
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->sortid_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->sortid_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$1202(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 897
    or-int/lit8 v2, v2, 0x8

    .line 899
    :cond_50
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->firstitemmsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->firstitemmsec_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$1302(Lcom/google/feedreader/extrpc/Client$SubscriptionData;J)J

    .line 900
    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_66

    .line 901
    or-int/lit8 v1, v2, 0x10

    .line 903
    :goto_5d
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->htmlUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->htmlUrl_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$1402(Lcom/google/feedreader/extrpc/Client$SubscriptionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    #setter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$1502(Lcom/google/feedreader/extrpc/Client$SubscriptionData;I)I

    .line 905
    return-object v0

    :cond_66
    move v1, v2

    goto :goto_5d
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3

    .prologue
    .line 833
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->id_:Ljava/lang/Object;

    .line 835
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 836
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->title_:Ljava/lang/Object;

    .line 837
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 838
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    .line 839
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 840
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->sortid_:Ljava/lang/Object;

    .line 841
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 842
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->firstitemmsec_:J

    .line 843
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 845
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 846
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->clear()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCategories()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 2

    .prologue
    .line 1159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    .line 1160
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1162
    return-object p0
.end method

.method public clearFirstitemmsec()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3

    .prologue
    .line 1222
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->firstitemmsec_:J

    .line 1225
    return-object p0
.end method

.method public clearHtmlUrl()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 2

    .prologue
    .line 1253
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1254
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 1256
    return-object p0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 2

    .prologue
    .line 1035
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1036
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->id_:Ljava/lang/Object;

    .line 1038
    return-object p0
.end method

.method public clearSortid()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 2

    .prologue
    .line 1196
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1197
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getSortid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->sortid_:Ljava/lang/Object;

    .line 1199
    return-object p0
.end method

.method public clearTitle()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 2

    .prologue
    .line 1071
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1072
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->title_:Ljava/lang/Object;

    .line 1074
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3

    .prologue
    .line 850
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->create()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

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
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->clone()Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCategories(I)Lcom/google/feedreader/extrpc/Client$Category;
    .registers 3
    .parameter "index"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Category;

    return-object p0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

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
            "Lcom/google/feedreader/extrpc/Client$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionData;
    .registers 2

    .prologue
    .line 854
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    return-object v0
.end method

.method public getFirstitemmsec()J
    .registers 3

    .prologue
    .line 1213
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->firstitemmsec_:J

    return-wide v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 1235
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 1236
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1237
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->htmlUrl_:Ljava/lang/Object;

    move-object v2, v1

    .line 1240
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->id_:Ljava/lang/Object;

    .line 1017
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 1018
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 1022
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getSortid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->sortid_:Ljava/lang/Object;

    .line 1178
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 1179
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->sortid_:Ljava/lang/Object;

    move-object v2, v1

    .line 1183
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->title_:Ljava/lang/Object;

    .line 1053
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 1054
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->title_:Ljava/lang/Object;

    move-object v2, v1

    .line 1058
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasFirstitemmsec()Z
    .registers 3

    .prologue
    .line 1210
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

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

.method public hasHtmlUrl()Z
    .registers 3

    .prologue
    .line 1231
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1013
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSortid()Z
    .registers 3

    .prologue
    .line 1174
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 1049
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

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
    const/4 v2, 0x0

    .line 939
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 953
    :goto_8
    return v1

    .line 943
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    .line 945
    goto :goto_8

    .line 947
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->getCategoriesCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 948
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->getCategories(I)Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$Category;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_24

    move v1, v2

    .line 950
    goto :goto_8

    .line 947
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 953
    :cond_27
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 4
    .parameter

    .prologue
    .line 909
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 935
    :goto_7
    return-object v0

    .line 910
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 911
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    .line 913
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 914
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    .line 916
    :cond_22
    #getter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$1100(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 917
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 918
    #getter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$1100(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    .line 919
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 926
    :cond_40
    :goto_40
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->hasSortid()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 927
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getSortid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->setSortid(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    .line 929
    :cond_4d
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->hasFirstitemmsec()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 930
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getFirstitemmsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->setFirstitemmsec(J)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    .line 932
    :cond_5a
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->hasHtmlUrl()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 933
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->setHtmlUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    :cond_67
    move-object v0, p0

    .line 935
    goto :goto_7

    .line 921
    :cond_69
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->ensureCategoriesIsMutable()V

    .line 922
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/extrpc/Client$SubscriptionData;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData;->access$1100(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_40
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 962
    sparse-switch v0, :sswitch_data_62

    .line 967
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 969
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 965
    goto :goto_e

    .line 974
    :sswitch_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 975
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 979
    :sswitch_1e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 980
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 984
    :sswitch_2b
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Category;->newBuilder()Lcom/google/feedreader/extrpc/Client$Category$Builder;

    move-result-object v0

    .line 985
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 986
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->addCategories(Lcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    goto :goto_0

    .line 990
    :sswitch_3a
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 991
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->sortid_:Ljava/lang/Object;

    goto :goto_0

    .line 995
    :sswitch_47
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 996
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->firstitemmsec_:J

    goto :goto_0

    .line 1000
    :sswitch_54
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1001
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->htmlUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 962
    nop

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_11
        0x12 -> :sswitch_1e
        0x1a -> :sswitch_2b
        0x22 -> :sswitch_3a
        0x28 -> :sswitch_47
        0x32 -> :sswitch_54
    .end sparse-switch
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
    .line 817
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 817
    check-cast p1, Lcom/google/feedreader/extrpc/Client$SubscriptionData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SubscriptionData;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

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
    .line 817
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeCategories(I)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1165
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->ensureCategoriesIsMutable()V

    .line 1166
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1168
    return-object p0
.end method

.method public setCategories(ILcom/google/feedreader/extrpc/Client$Category$Builder;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->ensureCategoriesIsMutable()V

    .line 1114
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/extrpc/Client$Category$Builder;->build()Lcom/google/feedreader/extrpc/Client$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1116
    return-object p0
.end method

.method public setCategories(ILcom/google/feedreader/extrpc/Client$Category;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1103
    if-nez p2, :cond_8

    .line 1104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1106
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->ensureCategoriesIsMutable()V

    .line 1107
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1109
    return-object p0
.end method

.method public setFirstitemmsec(J)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1216
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1217
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->firstitemmsec_:J

    .line 1219
    return-object p0
.end method

.method public setHtmlUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1244
    if-nez p1, :cond_8

    .line 1245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1247
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1248
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 1250
    return-object p0
.end method

.method setHtmlUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1259
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1260
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->htmlUrl_:Ljava/lang/Object;

    .line 1262
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1026
    if-nez p1, :cond_8

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1029
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1030
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->id_:Ljava/lang/Object;

    .line 1032
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1041
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1042
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->id_:Ljava/lang/Object;

    .line 1044
    return-void
.end method

.method public setSortid(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1187
    if-nez p1, :cond_8

    .line 1188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1190
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1191
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->sortid_:Ljava/lang/Object;

    .line 1193
    return-object p0
.end method

.method setSortid(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1202
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1203
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->sortid_:Ljava/lang/Object;

    .line 1205
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1062
    if-nez p1, :cond_8

    .line 1063
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1065
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1066
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->title_:Ljava/lang/Object;

    .line 1068
    return-object p0
.end method

.method setTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1077
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->bitField0_:I

    .line 1078
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SubscriptionData$Builder;->title_:Ljava/lang/Object;

    .line 1080
    return-void
.end method
