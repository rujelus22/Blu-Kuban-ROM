.class public final Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$MobileProfileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$MobileProfile;",
        "Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Profile$MobileProfileOrBuilder;"
    }
.end annotation


# instance fields
.field private bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

.field private birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

.field private bitField0_:I

.field private braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

.field private currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

.field private currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

.field private currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

.field private fullName_:Ljava/lang/Object;

.field private gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

.field private link_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$Link;",
            ">;"
        }
    .end annotation
.end field

.field private locationMapUrl_:Ljava/lang/Object;

.field private otherEmployer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Common$StringField;",
            ">;"
        }
    .end annotation
.end field

.field private otherLocation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$Location;",
            ">;"
        }
    .end annotation
.end field

.field private otherSchool_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Common$StringField;",
            ">;"
        }
    .end annotation
.end field

.field private plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

.field private property_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;",
            ">;"
        }
    .end annotation
.end field

.field private tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

.field private whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3185
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 3644
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3687
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 3776
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3819
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 3908
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3951
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3994
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 4083
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4119
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4162
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 4294
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4337
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4380
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4423
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 4512
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 3186
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->maybeForceBuilderInitialization()V

    .line 3187
    return-void
.end method

.method static synthetic access$3700(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3180
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 1

    .prologue
    .line 3180
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3252
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    .line 3253
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3254
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3257
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 1

    .prologue
    .line 3192
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;-><init>()V

    return-object v0
.end method

.method private ensureLinkIsMutable()V
    .registers 3

    .prologue
    .line 4208
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_17

    .line 4209
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 4210
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4212
    :cond_17
    return-void
.end method

.method private ensureOtherEmployerIsMutable()V
    .registers 3

    .prologue
    .line 3690
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 3691
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 3692
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3694
    :cond_16
    return-void
.end method

.method private ensureOtherLocationIsMutable()V
    .registers 3

    .prologue
    .line 3997
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 3998
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 3999
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4001
    :cond_17
    return-void
.end method

.method private ensureOtherSchoolIsMutable()V
    .registers 3

    .prologue
    .line 3822
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 3823
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 3824
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3826
    :cond_17
    return-void
.end method

.method private ensurePropertyIsMutable()V
    .registers 4

    .prologue
    const v2, 0x8000

    .line 4426
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_16

    .line 4427
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 4428
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4430
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3190
    return-void
.end method


# virtual methods
.method public addAllLink(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Profile$Link;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 4275
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Profile$Link;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4276
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4278
    return-object p0
.end method

.method public addAllOtherEmployer(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Common$StringField;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 3757
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Common$StringField;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 3758
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3760
    return-object p0
.end method

.method public addAllOtherLocation(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Profile$Location;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 4064
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Profile$Location;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4065
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4067
    return-object p0
.end method

.method public addAllOtherSchool(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Common$StringField;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 3889
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Common$StringField;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 3890
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3892
    return-object p0
.end method

.method public addAllProperty(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 4493
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4494
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4496
    return-object p0
.end method

.method public addLink(ILcom/google/wireless/contacts/proto/Profile$Link$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4268
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4269
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4271
    return-object p0
.end method

.method public addLink(ILcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4251
    if-nez p2, :cond_8

    .line 4252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4254
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4255
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4257
    return-object p0
.end method

.method public addLink(Lcom/google/wireless/contacts/proto/Profile$Link$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4261
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4262
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4264
    return-object p0
.end method

.method public addLink(Lcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4241
    if-nez p1, :cond_8

    .line 4242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4244
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4245
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4247
    return-object p0
.end method

.method public addOtherEmployer(ILcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3750
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 3751
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3753
    return-object p0
.end method

.method public addOtherEmployer(ILcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3733
    if-nez p2, :cond_8

    .line 3734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3736
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 3737
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3739
    return-object p0
.end method

.method public addOtherEmployer(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3743
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 3744
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3746
    return-object p0
.end method

.method public addOtherEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3723
    if-nez p1, :cond_8

    .line 3724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3726
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 3727
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3729
    return-object p0
.end method

.method public addOtherLocation(ILcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4057
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4058
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4060
    return-object p0
.end method

.method public addOtherLocation(ILcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4040
    if-nez p2, :cond_8

    .line 4041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4043
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4044
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4046
    return-object p0
.end method

.method public addOtherLocation(Lcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4050
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4051
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4053
    return-object p0
.end method

.method public addOtherLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4030
    if-nez p1, :cond_8

    .line 4031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4033
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4034
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4036
    return-object p0
.end method

.method public addOtherSchool(ILcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3882
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 3883
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3885
    return-object p0
.end method

.method public addOtherSchool(ILcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3865
    if-nez p2, :cond_8

    .line 3866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3868
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 3869
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3871
    return-object p0
.end method

.method public addOtherSchool(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3875
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 3876
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3878
    return-object p0
.end method

.method public addOtherSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3855
    if-nez p1, :cond_8

    .line 3856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3858
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 3859
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3861
    return-object p0
.end method

.method public addProperty(ILcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4486
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4487
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4489
    return-object p0
.end method

.method public addProperty(ILcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4469
    if-nez p2, :cond_8

    .line 4470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4472
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4473
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4475
    return-object p0
.end method

.method public addProperty(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4479
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4480
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4482
    return-object p0
.end method

.method public addProperty(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4459
    if-nez p1, :cond_8

    .line 4460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4462
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4463
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4465
    return-object p0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 3

    .prologue
    .line 3243
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    .line 3244
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3245
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3247
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 8

    .prologue
    const/high16 v6, 0x1

    const v5, 0x8000

    .line 3261
    new-instance v1, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;-><init>(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V

    .line 3262
    .local v1, result:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3263
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3264
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 3265
    or-int/lit8 v2, v2, 0x1

    .line 3267
    :cond_15
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4002(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3268
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 3269
    or-int/lit8 v2, v2, 0x2

    .line 3271
    :cond_21
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4102(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3272
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3b

    .line 3273
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 3274
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3276
    :cond_3b
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4202(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3277
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_48

    .line 3278
    or-int/lit8 v2, v2, 0x4

    .line 3280
    :cond_48
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4302(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3281
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_63

    .line 3282
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 3283
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3285
    :cond_63
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4402(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3286
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_70

    .line 3287
    or-int/lit8 v2, v2, 0x8

    .line 3289
    :cond_70
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4502(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3290
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7d

    .line 3291
    or-int/lit8 v2, v2, 0x10

    .line 3293
    :cond_7d
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4602(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3294
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_98

    .line 3295
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 3296
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3298
    :cond_98
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4702(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3299
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a5

    .line 3300
    or-int/lit8 v2, v2, 0x20

    .line 3302
    :cond_a5
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4802(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3303
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b2

    .line 3304
    or-int/lit8 v2, v2, 0x40

    .line 3306
    :cond_b2
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4902(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 3307
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_bf

    .line 3308
    or-int/lit16 v2, v2, 0x80

    .line 3310
    :cond_bf
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5002(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3311
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_da

    .line 3312
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 3313
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x801

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3315
    :cond_da
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5102(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3316
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_e7

    .line 3317
    or-int/lit16 v2, v2, 0x100

    .line 3319
    :cond_e7
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5202(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3320
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_f4

    .line 3321
    or-int/lit16 v2, v2, 0x200

    .line 3323
    :cond_f4
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5302(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3324
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_101

    .line 3325
    or-int/lit16 v2, v2, 0x400

    .line 3327
    :cond_101
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5402(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3328
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_11b

    .line 3329
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 3330
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3332
    :cond_11b
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5502(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3333
    and-int v3, v0, v6

    if-ne v3, v6, :cond_126

    .line 3334
    or-int/lit16 v2, v2, 0x800

    .line 3336
    :cond_126
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5602(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 3337
    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5702(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;I)I

    .line 3338
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3

    .prologue
    .line 3196
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 3198
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3199
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3200
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 3202
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3203
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3204
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 3206
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3207
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3208
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3209
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3210
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 3212
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3213
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 3214
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3215
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 3216
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3217
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3218
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 3220
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3221
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3222
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3223
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3224
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3225
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3226
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 3228
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3229
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 3230
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3231
    return-object p0
.end method

.method public clearBio()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4198
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4200
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4201
    return-object p0
.end method

.method public clearBirthday()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4330
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4332
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4333
    return-object p0
.end method

.method public clearBraggingRights()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4416
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4418
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4419
    return-object p0
.end method

.method public clearCurrentEmployer()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 3680
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3682
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3683
    return-object p0
.end method

.method public clearCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 3987
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3989
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3990
    return-object p0
.end method

.method public clearCurrentSchool()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 3812
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3814
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3815
    return-object p0
.end method

.method public clearFullName()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 3632
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3633
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 3635
    return-object p0
.end method

.method public clearGender()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4155
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4157
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4158
    return-object p0
.end method

.method public clearLink()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 4282
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4284
    return-object p0
.end method

.method public clearLocationMapUrl()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4107
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4108
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLocationMapUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4110
    return-object p0
.end method

.method public clearOtherEmployer()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 3763
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 3764
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3766
    return-object p0
.end method

.method public clearOtherLocation()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4070
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 4071
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4073
    return-object p0
.end method

.method public clearOtherSchool()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 3895
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 3896
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3898
    return-object p0
.end method

.method public clearPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3

    .prologue
    .line 4548
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 4550
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4551
    return-object p0
.end method

.method public clearProperty()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3

    .prologue
    .line 4499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 4500
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4502
    return-object p0
.end method

.method public clearTagline()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4373
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4375
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4376
    return-object p0
.end method

.method public clearWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3944
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3946
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3947
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3

    .prologue
    .line 3235
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

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
    .line 3180
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBio()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 4167
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 4299
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getBraggingRights()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 4385
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2

    .prologue
    .line 3956
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 3781
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2

    .prologue
    .line 3239
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3613
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 3614
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3615
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3616
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 3619
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

.method public getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 2

    .prologue
    .line 4124
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    return-object v0
.end method

.method public getLink(I)Lcom/google/wireless/contacts/proto/Profile$Link;
    .registers 3
    .parameter "index"

    .prologue
    .line 4221
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Link;

    return-object v0
.end method

.method public getLinkCount()I
    .registers 2

    .prologue
    .line 4218
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLinkList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4215
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationMapUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4088
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4089
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4090
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4091
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4094
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

.method public getOtherEmployer(I)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 3
    .parameter "index"

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getOtherEmployerCount()I
    .registers 2

    .prologue
    .line 3700
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOtherEmployerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Common$StringField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3697
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOtherLocation(I)Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 4010
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public getOtherLocationCount()I
    .registers 2

    .prologue
    .line 4007
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOtherLocationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4004
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOtherSchool(I)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 3
    .parameter "index"

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getOtherSchoolCount()I
    .registers 2

    .prologue
    .line 3832
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOtherSchoolList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Common$StringField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 2

    .prologue
    .line 4517
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    return-object v0
.end method

.method public getProperty(I)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    .registers 3
    .parameter "index"

    .prologue
    .line 4439
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    return-object v0
.end method

.method public getPropertyCount()I
    .registers 2

    .prologue
    .line 4436
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4433
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagline()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4342
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public hasBio()Z
    .registers 3

    .prologue
    .line 4164
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasBirthday()Z
    .registers 3

    .prologue
    .line 4296
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasBraggingRights()Z
    .registers 3

    .prologue
    .line 4382
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCurrentEmployer()Z
    .registers 3

    .prologue
    .line 3646
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

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

.method public hasCurrentLocation()Z
    .registers 3

    .prologue
    .line 3953
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCurrentSchool()Z
    .registers 3

    .prologue
    .line 3778
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

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

.method public hasFullName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3610
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasGender()Z
    .registers 3

    .prologue
    .line 4121
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocationMapUrl()Z
    .registers 3

    .prologue
    .line 4085
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPlusPageInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 4514
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTagline()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4339
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasWhereIGrewUp()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3910
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

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

.method public mergeBio(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4186
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4188
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4194
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4195
    return-object p0

    .line 4191
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_20
.end method

.method public mergeBirthday(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4318
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4320
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4326
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4327
    return-object p0

    .line 4323
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_20
.end method

.method public mergeBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4404
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4406
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4412
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4413
    return-object p0

    .line 4409
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_20
.end method

.method public mergeCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3668
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3670
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3676
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3677
    return-object p0

    .line 3673
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_1f
.end method

.method public mergeCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3975
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3977
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3983
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3984
    return-object p0

    .line 3980
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    goto :goto_20
.end method

.method public mergeCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3800
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3802
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3808
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3809
    return-object p0

    .line 3805
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_20
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
    .line 3180
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

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
    .line 3180
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3459
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3460
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_198

    .line 3465
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3467
    :sswitch_d
    return-object p0

    .line 3472
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3473
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    goto :goto_0

    .line 3477
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3478
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasCurrentEmployer()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3479
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 3481
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3482
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto :goto_0

    .line 3486
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3487
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3488
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addOtherEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto :goto_0

    .line 3492
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3493
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasCurrentSchool()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 3494
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 3496
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3497
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto :goto_0

    .line 3501
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3502
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3503
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addOtherSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto :goto_0

    .line 3507
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_71
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    .line 3508
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasWhereIGrewUp()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 3509
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    .line 3511
    :cond_82
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3512
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setWhereIGrewUp(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3516
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    :sswitch_8e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    .line 3517
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasCurrentLocation()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 3518
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    .line 3520
    :cond_9f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3521
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3525
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    :sswitch_ab
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    .line 3526
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3527
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addOtherLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3531
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    :sswitch_bb
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3536
    :sswitch_c9
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    .line 3537
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasGender()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 3538
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    .line 3540
    :cond_da
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3541
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setGender(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3545
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    :sswitch_e6
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3546
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasBio()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 3547
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getBio()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 3549
    :cond_f7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3550
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setBio(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3554
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_103
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    .line 3555
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3556
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addLink(Lcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3560
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    :sswitch_113
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3561
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasBirthday()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 3562
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 3564
    :cond_124
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3565
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setBirthday(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3569
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_130
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3570
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasTagline()Z

    move-result v2

    if-eqz v2, :cond_141

    .line 3571
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getTagline()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 3573
    :cond_141
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3574
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setTagline(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3578
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_14d
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3579
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasBraggingRights()Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 3580
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getBraggingRights()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 3582
    :cond_15e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3583
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3587
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_16a
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    .line 3588
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3589
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addProperty(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3593
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    :sswitch_17a
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    .line 3594
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasPlusPageInfo()Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 3595
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    .line 3597
    :cond_18b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3598
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setPlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3460
    nop

    :sswitch_data_198
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_37
        0x22 -> :sswitch_46
        0x2a -> :sswitch_62
        0x32 -> :sswitch_71
        0x3a -> :sswitch_8e
        0x42 -> :sswitch_ab
        0x4a -> :sswitch_bb
        0x52 -> :sswitch_c9
        0x5a -> :sswitch_e6
        0x62 -> :sswitch_103
        0x6a -> :sswitch_113
        0x72 -> :sswitch_130
        0x7a -> :sswitch_14d
        0x82 -> :sswitch_16a
        0x8a -> :sswitch_17a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3342
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3429
    :cond_6
    :goto_6
    return-object p0

    .line 3343
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3344
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3346
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentEmployer()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3347
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3349
    :cond_21
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4200(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 3350
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 3351
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4200(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 3352
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3359
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentSchool()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3360
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3362
    :cond_4c
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4400(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 3363
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 3364
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4400(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 3365
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3372
    :cond_6a
    :goto_6a
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasWhereIGrewUp()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 3373
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeWhereIGrewUp(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3375
    :cond_77
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentLocation()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 3376
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3378
    :cond_84
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4700(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 3379
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 3380
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4700(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 3381
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3388
    :cond_a2
    :goto_a2
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasLocationMapUrl()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 3389
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLocationMapUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setLocationMapUrl(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3391
    :cond_af
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 3392
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeGender(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3394
    :cond_bc
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasBio()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 3395
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getBio()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeBio(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3397
    :cond_c9
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5100(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 3398
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_167

    .line 3399
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5100(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 3400
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3407
    :cond_e7
    :goto_e7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasBirthday()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 3408
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeBirthday(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3410
    :cond_f4
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasTagline()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 3411
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getTagline()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeTagline(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3413
    :cond_101
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasBraggingRights()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 3414
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getBraggingRights()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3416
    :cond_10e
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5500(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12e

    .line 3417
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_175

    .line 3418
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5500(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 3419
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3426
    :cond_12e
    :goto_12e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasPlusPageInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3427
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergePlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_6

    .line 3354
    :cond_13d
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 3355
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4200(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3f

    .line 3367
    :cond_14b
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 3368
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4400(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6a

    .line 3383
    :cond_159
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 3384
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4700(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a2

    .line 3402
    :cond_167
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 3403
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5100(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e7

    .line 3421
    :cond_175
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 3422
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5500(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12e
.end method

.method public mergeGender(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4143
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4145
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4151
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4152
    return-object p0

    .line 4148
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    goto :goto_20
.end method

.method public mergePlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 4536
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 4538
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 4544
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4545
    return-object p0

    .line 4541
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    goto :goto_1f
.end method

.method public mergeTagline(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4361
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4363
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4369
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4370
    return-object p0

    .line 4366
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_20
.end method

.method public mergeWhereIGrewUp(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3932
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3934
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3940
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3941
    return-object p0

    .line 3937
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    goto :goto_20
.end method

.method public setBio(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4180
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4182
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4183
    return-object p0
.end method

.method public setBio(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4170
    if-nez p1, :cond_8

    .line 4171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4173
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4175
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4176
    return-object p0
.end method

.method public setBirthday(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4312
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4314
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4315
    return-object p0
.end method

.method public setBirthday(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4302
    if-nez p1, :cond_8

    .line 4303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4305
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4307
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4308
    return-object p0
.end method

.method public setBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4398
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4400
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4401
    return-object p0
.end method

.method public setBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4388
    if-nez p1, :cond_8

    .line 4389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4391
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4393
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4394
    return-object p0
.end method

.method public setCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3662
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3664
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3665
    return-object p0
.end method

.method public setCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3652
    if-nez p1, :cond_8

    .line 3653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3655
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3657
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3658
    return-object p0
.end method

.method public setCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3969
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3971
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3972
    return-object p0
.end method

.method public setCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3959
    if-nez p1, :cond_8

    .line 3960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3962
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3964
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3965
    return-object p0
.end method

.method public setCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3794
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3796
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3797
    return-object p0
.end method

.method public setCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3784
    if-nez p1, :cond_8

    .line 3785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3787
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3789
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3790
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3623
    if-nez p1, :cond_8

    .line 3624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3626
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3627
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 3629
    return-object p0
.end method

.method public setGender(Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4137
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4139
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4140
    return-object p0
.end method

.method public setGender(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4127
    if-nez p1, :cond_8

    .line 4128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4130
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4132
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4133
    return-object p0
.end method

.method public setLink(ILcom/google/wireless/contacts/proto/Profile$Link$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4235
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4236
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4238
    return-object p0
.end method

.method public setLink(ILcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4225
    if-nez p2, :cond_8

    .line 4226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4228
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4229
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4231
    return-object p0
.end method

.method public setLocationMapUrl(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4098
    if-nez p1, :cond_8

    .line 4099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4101
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4102
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4104
    return-object p0
.end method

.method public setOtherEmployer(ILcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3717
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 3718
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3720
    return-object p0
.end method

.method public setOtherEmployer(ILcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3707
    if-nez p2, :cond_8

    .line 3708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3710
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 3711
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3713
    return-object p0
.end method

.method public setOtherLocation(ILcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4024
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4025
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4027
    return-object p0
.end method

.method public setOtherLocation(ILcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4014
    if-nez p2, :cond_8

    .line 4015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4017
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4018
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4020
    return-object p0
.end method

.method public setOtherSchool(ILcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3849
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 3850
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3852
    return-object p0
.end method

.method public setOtherSchool(ILcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3839
    if-nez p2, :cond_8

    .line 3840
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3842
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 3843
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3845
    return-object p0
.end method

.method public setPlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4530
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 4532
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4533
    return-object p0
.end method

.method public setPlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4520
    if-nez p1, :cond_8

    .line 4521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4523
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 4525
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4526
    return-object p0
.end method

.method public setProperty(ILcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4453
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4454
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4456
    return-object p0
.end method

.method public setProperty(ILcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4443
    if-nez p2, :cond_8

    .line 4444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4446
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4447
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4449
    return-object p0
.end method

.method public setTagline(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4355
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4357
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4358
    return-object p0
.end method

.method public setTagline(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4345
    if-nez p1, :cond_8

    .line 4346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4348
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4350
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4351
    return-object p0
.end method

.method public setWhereIGrewUp(Lcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3926
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3928
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3929
    return-object p0
.end method

.method public setWhereIGrewUp(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3916
    if-nez p1, :cond_8

    .line 3917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3919
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3921
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3922
    return-object p0
.end method
