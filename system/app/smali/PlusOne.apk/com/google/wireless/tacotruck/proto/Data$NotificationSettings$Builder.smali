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
    .line 35101
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 35220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 35309
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 35102
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->maybeForceBuilderInitialization()V

    .line 35103
    return-void
.end method

.method static synthetic access$47600()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 1

    .prologue
    .line 35096
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 1

    .prologue
    .line 35108
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCategoriesIsMutable()V
    .registers 3

    .prologue
    .line 35223
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 35224
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 35225
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35227
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 35106
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
    .line 35290
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 35291
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 35293
    return-object p0
.end method

.method public addCategories(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35283
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 35284
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35286
    return-object p0
.end method

.method public addCategories(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35266
    if-nez p2, :cond_8

    .line 35267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35269
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 35270
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35272
    return-object p0
.end method

.method public addCategories(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 35276
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 35277
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35279
    return-object p0
.end method

.method public addCategories(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35256
    if-nez p1, :cond_8

    .line 35257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35259
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 35260
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35262
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 3

    .prologue
    .line 35129
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    .line 35130
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 35131
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 35133
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 6

    .prologue
    .line 35147
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;-><init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 35148
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35149
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 35150
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 35151
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 35152
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35154
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$47802(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;Ljava/util/List;)Ljava/util/List;

    .line 35155
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 35156
    or-int/lit8 v2, v2, 0x1

    .line 35158
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->emailAddress_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$47902(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35159
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$48002(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;I)I

    .line 35160
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 2

    .prologue
    .line 35112
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 35113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 35114
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 35116
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35117
    return-object p0
.end method

.method public clearCategories()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 2

    .prologue
    .line 35296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 35297
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35299
    return-object p0
.end method

.method public clearEmailAddress()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 2

    .prologue
    .line 35333
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35334
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 35336
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 35096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 35096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 3

    .prologue
    .line 35121
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
    .line 35096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCategories(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .registers 3
    .parameter "index"

    .prologue
    .line 35236
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    return-object v0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 35233
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
    .line 35230
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 35096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35096
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2

    .prologue
    .line 35125
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 35314
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 35315
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 35316
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 35317
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 35320
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
    .line 35311
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
    .line 35096
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

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
    .line 35096
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
    .line 35190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 35191
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 35196
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35198
    :sswitch_d
    return-object p0

    .line 35203
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v0

    .line 35204
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 35205
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->addCategories(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    goto :goto_0

    .line 35209
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35210
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    goto :goto_0

    .line 35191
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
    .line 35164
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 35178
    :cond_6
    :goto_6
    return-object p0

    .line 35165
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$47800(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 35166
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 35167
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$47800(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    .line 35168
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35175
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->hasEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35176
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->setEmailAddress(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    goto :goto_6

    .line 35170
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 35171
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->access$47800(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setCategories(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 35250
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 35251
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35253
    return-object p0
.end method

.method public setCategories(ILcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 35240
    if-nez p2, :cond_8

    .line 35241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35243
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->ensureCategoriesIsMutable()V

    .line 35244
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->categories_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35246
    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 35324
    if-nez p1, :cond_8

    .line 35325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35327
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->bitField0_:I

    .line 35328
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->emailAddress_:Ljava/lang/Object;

    .line 35330
    return-object p0
.end method
