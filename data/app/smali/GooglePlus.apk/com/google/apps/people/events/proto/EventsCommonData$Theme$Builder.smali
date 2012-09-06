.class public final Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$ThemeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$Theme;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;",
        ">;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$ThemeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private category_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;",
            ">;"
        }
    .end annotation
.end field

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;",
            ">;"
        }
    .end annotation
.end field

.field private themeId_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3027
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    .line 3279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    .line 3028
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->maybeForceBuilderInitialization()V

    .line 3029
    return-void
.end method

.method static synthetic access$3900()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 1

    .prologue
    .line 3022
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 1

    .prologue
    .line 3034
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCategoryIsMutable()V
    .registers 3

    .prologue
    .line 3282
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 3283
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    .line 3284
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3286
    :cond_16
    return-void
.end method

.method private ensureImageIsMutable()V
    .registers 3

    .prologue
    .line 3193
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 3194
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    .line 3195
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3197
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3032
    return-void
.end method


# virtual methods
.method public addCategory(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3315
    if-nez p1, :cond_8

    .line 3316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3318
    :cond_8
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->ensureCategoryIsMutable()V

    .line 3319
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3321
    return-object p0
.end method

.method public addImage(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3226
    if-nez p1, :cond_8

    .line 3227
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3229
    :cond_8
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->ensureImageIsMutable()V

    .line 3230
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3232
    return-object p0
.end method

.method public build()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    .registers 3

    .prologue
    .line 3057
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    .line 3058
    .local v0, result:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3059
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3061
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->build()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    .registers 6

    .prologue
    .line 3075
    new-instance v1, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V

    .line 3076
    .local v1, result:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3077
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3078
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3079
    or-int/lit8 v2, v2, 0x1

    .line 3081
    :cond_10
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->themeId_:I

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->themeId_:I
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4102(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;I)I

    .line 3082
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 3083
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    .line 3084
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3086
    :cond_2a
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4202(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;Ljava/util/List;)Ljava/util/List;

    .line 3087
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 3088
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    .line 3089
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3091
    :cond_44
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4302(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;Ljava/util/List;)Ljava/util/List;

    .line 3092
    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4402(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;I)I

    .line 3093
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 2

    .prologue
    .line 3038
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3039
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->themeId_:I

    .line 3040
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3041
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    .line 3042
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3043
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    .line 3044
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3045
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 3

    .prologue
    .line 3049
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

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
    .line 3022
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    .registers 2

    .prologue
    .line 3053
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3125
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3097
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3121
    :cond_6
    :goto_6
    return-object p0

    .line 3098
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->hasThemeId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3099
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getThemeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->setThemeId(I)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    .line 3101
    :cond_14
    #getter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4200(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 3102
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3103
    #getter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4200(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    .line 3104
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3111
    :cond_32
    :goto_32
    #getter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4300(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3112
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3113
    #getter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4300(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    .line 3114
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    goto :goto_6

    .line 3106
    :cond_51
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->ensureImageIsMutable()V

    .line 3107
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->image_:Ljava/util/List;

    #getter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4200(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 3116
    :cond_5e
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->ensureCategoryIsMutable()V

    .line 3117
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->category_:Ljava/util/List;

    #getter for: Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->access$4300(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3134
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 3139
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3141
    :sswitch_d
    return-object p0

    .line 3146
    :sswitch_e
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3147
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->themeId_:I

    goto :goto_0

    .line 3151
    :sswitch_1b
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    .line 3152
    .local v0, subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3153
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->addImage(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    goto :goto_0

    .line 3157
    .end local v0           #subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    .line 3158
    .local v0, subBuilder:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3159
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->addCategory(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    goto :goto_0

    .line 3134
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_2a
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
    .line 3022
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3022
    check-cast p1, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

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
    .line 3022
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setThemeId(I)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3177
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->bitField0_:I

    .line 3178
    iput p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->themeId_:I

    .line 3180
    return-object p0
.end method
