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

.field private coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

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
    .line 3641
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 4118
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 4250
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 4382
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4425
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 4557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4593
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4636
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4679
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 4768
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4811
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4854
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4897
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 4986
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 5029
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .line 3642
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->maybeForceBuilderInitialization()V

    .line 3643
    return-void
.end method

.method static synthetic access$4500()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 1

    .prologue
    .line 3636
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 1

    .prologue
    .line 3648
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;-><init>()V

    return-object v0
.end method

.method private ensureLinkIsMutable()V
    .registers 3

    .prologue
    .line 4682
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_17

    .line 4683
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 4684
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4686
    :cond_17
    return-void
.end method

.method private ensureOtherEmployerIsMutable()V
    .registers 3

    .prologue
    .line 4164
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 4165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 4166
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4168
    :cond_16
    return-void
.end method

.method private ensureOtherLocationIsMutable()V
    .registers 3

    .prologue
    .line 4471
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 4472
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 4473
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4475
    :cond_17
    return-void
.end method

.method private ensureOtherSchoolIsMutable()V
    .registers 3

    .prologue
    .line 4296
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 4297
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 4298
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4300
    :cond_17
    return-void
.end method

.method private ensurePropertyIsMutable()V
    .registers 4

    .prologue
    const v2, 0x8000

    .line 4900
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_16

    .line 4901
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 4902
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4904
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3646
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
    .line 4749
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Profile$Link;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4750
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4752
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
    .line 4231
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Common$StringField;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 4232
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4234
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
    .line 4538
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Profile$Location;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4539
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4541
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
    .line 4363
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Common$StringField;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 4364
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4366
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
    .line 4967
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4968
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4970
    return-object p0
.end method

.method public addLink(ILcom/google/wireless/contacts/proto/Profile$Link$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4742
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4743
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4745
    return-object p0
.end method

.method public addLink(ILcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4725
    if-nez p2, :cond_8

    .line 4726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4728
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4729
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4731
    return-object p0
.end method

.method public addLink(Lcom/google/wireless/contacts/proto/Profile$Link$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4735
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4736
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4738
    return-object p0
.end method

.method public addLink(Lcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4715
    if-nez p1, :cond_8

    .line 4716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4718
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4719
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4721
    return-object p0
.end method

.method public addOtherEmployer(ILcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4224
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 4225
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4227
    return-object p0
.end method

.method public addOtherEmployer(ILcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4207
    if-nez p2, :cond_8

    .line 4208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4210
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 4211
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4213
    return-object p0
.end method

.method public addOtherEmployer(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4217
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 4218
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4220
    return-object p0
.end method

.method public addOtherEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4197
    if-nez p1, :cond_8

    .line 4198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4200
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 4201
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4203
    return-object p0
.end method

.method public addOtherLocation(ILcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4531
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4532
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4534
    return-object p0
.end method

.method public addOtherLocation(ILcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4514
    if-nez p2, :cond_8

    .line 4515
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4517
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4518
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4520
    return-object p0
.end method

.method public addOtherLocation(Lcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4524
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4525
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4527
    return-object p0
.end method

.method public addOtherLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4504
    if-nez p1, :cond_8

    .line 4505
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4507
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4508
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4510
    return-object p0
.end method

.method public addOtherSchool(ILcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4356
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 4357
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4359
    return-object p0
.end method

.method public addOtherSchool(ILcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4339
    if-nez p2, :cond_8

    .line 4340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4342
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 4343
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4345
    return-object p0
.end method

.method public addOtherSchool(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4349
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 4350
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4352
    return-object p0
.end method

.method public addOtherSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4329
    if-nez p1, :cond_8

    .line 4330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4332
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 4333
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4335
    return-object p0
.end method

.method public addProperty(ILcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4960
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4961
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4963
    return-object p0
.end method

.method public addProperty(ILcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4943
    if-nez p2, :cond_8

    .line 4944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4946
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4947
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4949
    return-object p0
.end method

.method public addProperty(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4953
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4954
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4956
    return-object p0
.end method

.method public addProperty(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4933
    if-nez p1, :cond_8

    .line 4934
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4936
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4937
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4939
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3636
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 3

    .prologue
    .line 3701
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    .line 3702
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3703
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3705
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3636
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 9

    .prologue
    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 3719
    new-instance v1, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;-><init>(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V

    .line 3720
    .local v1, result:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3721
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3722
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 3723
    or-int/lit8 v2, v2, 0x1

    .line 3725
    :cond_17
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4702(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3726
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_23

    .line 3727
    or-int/lit8 v2, v2, 0x2

    .line 3729
    :cond_23
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4802(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3730
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3d

    .line 3731
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 3732
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3734
    :cond_3d
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4902(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3735
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4a

    .line 3736
    or-int/lit8 v2, v2, 0x4

    .line 3738
    :cond_4a
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5002(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3739
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_65

    .line 3740
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 3741
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3743
    :cond_65
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5102(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3744
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_72

    .line 3745
    or-int/lit8 v2, v2, 0x8

    .line 3747
    :cond_72
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5202(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3748
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7f

    .line 3749
    or-int/lit8 v2, v2, 0x10

    .line 3751
    :cond_7f
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5302(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3752
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_9a

    .line 3753
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 3754
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3756
    :cond_9a
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5402(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3757
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a7

    .line 3758
    or-int/lit8 v2, v2, 0x20

    .line 3760
    :cond_a7
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5502(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3761
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b4

    .line 3762
    or-int/lit8 v2, v2, 0x40

    .line 3764
    :cond_b4
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5602(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 3765
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_c1

    .line 3766
    or-int/lit16 v2, v2, 0x80

    .line 3768
    :cond_c1
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5702(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3769
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_dc

    .line 3770
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 3771
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x801

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3773
    :cond_dc
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5802(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3774
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_e9

    .line 3775
    or-int/lit16 v2, v2, 0x100

    .line 3777
    :cond_e9
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5902(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3778
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_f6

    .line 3779
    or-int/lit16 v2, v2, 0x200

    .line 3781
    :cond_f6
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$6002(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3782
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_103

    .line 3783
    or-int/lit16 v2, v2, 0x400

    .line 3785
    :cond_103
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$6102(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3786
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_11d

    .line 3787
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 3788
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3790
    :cond_11d
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$6202(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;

    .line 3791
    and-int v3, v0, v6

    if-ne v3, v6, :cond_128

    .line 3792
    or-int/lit16 v2, v2, 0x800

    .line 3794
    :cond_128
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$6302(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 3795
    and-int v3, v0, v7

    if-ne v3, v7, :cond_133

    .line 3796
    or-int/lit16 v2, v2, 0x1000

    .line 3798
    :cond_133
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$6402(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .line 3799
    #setter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$6502(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;I)I

    .line 3800
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3636
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3636
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3

    .prologue
    .line 3652
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 3654
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3655
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3656
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3657
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 3658
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3659
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3660
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 3662
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3663
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3664
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3665
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3666
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3667
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 3668
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3669
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 3670
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3671
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 3672
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3673
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3674
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3675
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 3676
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3677
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3678
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3679
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3680
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3681
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3682
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3683
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 3684
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3685
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 3686
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3687
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .line 3688
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3689
    return-object p0
.end method

.method public clearBio()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4672
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4674
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4675
    return-object p0
.end method

.method public clearBirthday()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4804
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4806
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4807
    return-object p0
.end method

.method public clearBraggingRights()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4890
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4892
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4893
    return-object p0
.end method

.method public clearCoverPhotoInfo()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3

    .prologue
    .line 5065
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .line 5067
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 5068
    return-object p0
.end method

.method public clearCurrentEmployer()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4154
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4156
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4157
    return-object p0
.end method

.method public clearCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4461
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4463
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4464
    return-object p0
.end method

.method public clearCurrentSchool()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4286
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4288
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4289
    return-object p0
.end method

.method public clearFullName()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4106
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4107
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 4109
    return-object p0
.end method

.method public clearGender()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4629
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4631
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4632
    return-object p0
.end method

.method public clearLink()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 4756
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4758
    return-object p0
.end method

.method public clearLocationMapUrl()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4581
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4582
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLocationMapUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4584
    return-object p0
.end method

.method public clearOtherEmployer()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 4238
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4240
    return-object p0
.end method

.method public clearOtherLocation()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4544
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 4545
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4547
    return-object p0
.end method

.method public clearOtherSchool()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 4369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 4370
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4372
    return-object p0
.end method

.method public clearPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3

    .prologue
    .line 5022
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 5024
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 5025
    return-object p0
.end method

.method public clearProperty()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3

    .prologue
    .line 4973
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 4974
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4976
    return-object p0
.end method

.method public clearTagline()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4847
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4849
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4850
    return-object p0
.end method

.method public clearWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4418
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4420
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4421
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3636
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3636
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3

    .prologue
    .line 3693
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
    .line 3636
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBio()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 4641
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 4773
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getBraggingRights()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 4859
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getCoverPhotoInfo()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    .registers 2

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    return-object v0
.end method

.method public getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 4123
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2

    .prologue
    .line 4430
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3636
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3636
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2

    .prologue
    .line 3697
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4087
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 4088
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4089
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4090
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 4093
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
    .line 4598
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    return-object v0
.end method

.method public getLink(I)Lcom/google/wireless/contacts/proto/Profile$Link;
    .registers 3
    .parameter "index"

    .prologue
    .line 4695
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Link;

    return-object v0
.end method

.method public getLinkCount()I
    .registers 2

    .prologue
    .line 4692
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
    .line 4689
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationMapUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4562
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4563
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4564
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4565
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4568
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
    .line 4177
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getOtherEmployerCount()I
    .registers 2

    .prologue
    .line 4174
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
    .line 4171
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOtherLocation(I)Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 4484
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public getOtherLocationCount()I
    .registers 2

    .prologue
    .line 4481
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
    .line 4478
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOtherSchool(I)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 3
    .parameter "index"

    .prologue
    .line 4309
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getOtherSchoolCount()I
    .registers 2

    .prologue
    .line 4306
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
    .line 4303
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 2

    .prologue
    .line 4991
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    return-object v0
.end method

.method public getProperty(I)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    .registers 3
    .parameter "index"

    .prologue
    .line 4913
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    return-object v0
.end method

.method public getPropertyCount()I
    .registers 2

    .prologue
    .line 4910
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
    .line 4907
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
    .line 4816
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4387
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public hasBio()Z
    .registers 3

    .prologue
    .line 4638
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
    .line 4770
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
    .line 4856
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

.method public hasCoverPhotoInfo()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 5031
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

.method public hasCurrentEmployer()Z
    .registers 3

    .prologue
    .line 4120
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
    .line 4427
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
    .line 4252
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

    .line 4084
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
    .line 4595
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
    .line 4559
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

    .line 4988
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
    .line 4813
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
    .line 4384
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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3898
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasWhereIGrewUp()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3899
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_12

    .line 3916
    :cond_11
    :goto_11
    return v1

    .line 3904
    :cond_12
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasCurrentLocation()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3905
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3910
    :cond_22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getOtherLocationCount()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 3911
    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getOtherLocation(I)Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3910
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 3916
    :cond_36
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public mergeBio(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4660
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4662
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4668
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4669
    return-object p0

    .line 4665
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_20
.end method

.method public mergeBirthday(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4792
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4794
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4800
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4801
    return-object p0

    .line 4797
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_20
.end method

.method public mergeBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4878
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4880
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4886
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4887
    return-object p0

    .line 4883
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_20
.end method

.method public mergeCoverPhotoInfo(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 5053
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5055
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .line 5061
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 5062
    return-object p0

    .line 5058
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    goto :goto_1f
.end method

.method public mergeCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4142
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 4144
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4150
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4151
    return-object p0

    .line 4147
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    goto :goto_1f
.end method

.method public mergeCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4449
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4451
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4457
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4458
    return-object p0

    .line 4454
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    goto :goto_20
.end method

.method public mergeCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4274
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4276
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4282
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4283
    return-object p0

    .line 4279
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
    .line 3636
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3636
    check-cast p1, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

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
    .line 3636
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
    .line 3924
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3925
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1b4

    .line 3930
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3932
    :sswitch_d
    return-object p0

    .line 3937
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3938
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    goto :goto_0

    .line 3942
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3943
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasCurrentEmployer()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3944
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 3946
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3947
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto :goto_0

    .line 3951
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3952
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3953
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addOtherEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto :goto_0

    .line 3957
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3958
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasCurrentSchool()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 3959
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 3961
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3962
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto :goto_0

    .line 3966
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 3967
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3968
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addOtherSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto :goto_0

    .line 3972
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_71
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    .line 3973
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasWhereIGrewUp()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 3974
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    .line 3976
    :cond_82
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3977
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setWhereIGrewUp(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3981
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    :sswitch_8e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    .line 3982
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasCurrentLocation()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 3983
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    .line 3985
    :cond_9f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3986
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3990
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    :sswitch_ab
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    .line 3991
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3992
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addOtherLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3996
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    :sswitch_bb
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3997
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4001
    :sswitch_c9
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    .line 4002
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasGender()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 4003
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    .line 4005
    :cond_da
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4006
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setGender(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 4010
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;
    :sswitch_e6
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 4011
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasBio()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 4012
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getBio()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 4014
    :cond_f7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4015
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setBio(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 4019
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_103
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    .line 4020
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4021
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addLink(Lcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 4025
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    :sswitch_113
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 4026
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasBirthday()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 4027
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 4029
    :cond_124
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4030
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setBirthday(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 4034
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_130
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 4035
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasTagline()Z

    move-result v2

    if-eqz v2, :cond_141

    .line 4036
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getTagline()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 4038
    :cond_141
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4039
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setTagline(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 4043
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_14d
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder()Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    .line 4044
    .restart local v0       #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasBraggingRights()Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 4045
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getBraggingRights()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    .line 4047
    :cond_15e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4048
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 4052
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$StringField$Builder;
    :sswitch_16a
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;

    move-result-object v0

    .line 4053
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4054
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->addProperty(Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 4058
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;
    :sswitch_17a
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    .line 4059
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasPlusPageInfo()Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 4060
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    .line 4062
    :cond_18b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4063
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setPlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 4067
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;
    :sswitch_197
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    move-result-object v0

    .line 4068
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->hasCoverPhotoInfo()Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 4069
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->getCoverPhotoInfo()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;

    .line 4071
    :cond_1a8
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4072
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setCoverPhotoInfo(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_0

    .line 3925
    :sswitch_data_1b4
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
        0x92 -> :sswitch_197
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3804
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3894
    :cond_6
    :goto_6
    return-object p0

    .line 3805
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3806
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3808
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentEmployer()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3809
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3811
    :cond_21
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4900(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 3812
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 3813
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4900(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    .line 3814
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3821
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentSchool()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3822
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3824
    :cond_4c
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5100(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 3825
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_158

    .line 3826
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5100(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    .line 3827
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3834
    :cond_6a
    :goto_6a
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasWhereIGrewUp()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 3835
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeWhereIGrewUp(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3837
    :cond_77
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentLocation()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 3838
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3840
    :cond_84
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5400(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 3841
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 3842
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5400(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    .line 3843
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3850
    :cond_a2
    :goto_a2
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasLocationMapUrl()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 3851
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLocationMapUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->setLocationMapUrl(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3853
    :cond_af
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 3854
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeGender(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3856
    :cond_bc
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasBio()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 3857
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getBio()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeBio(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3859
    :cond_c9
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5800(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 3860
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_174

    .line 3861
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5800(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    .line 3862
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3869
    :cond_e7
    :goto_e7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasBirthday()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 3870
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeBirthday(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3872
    :cond_f4
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasTagline()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 3873
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getTagline()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeTagline(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3875
    :cond_101
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasBraggingRights()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 3876
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getBraggingRights()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3878
    :cond_10e
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$6200(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12e

    .line 3879
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_182

    .line 3880
    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$6200(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    .line 3881
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 3888
    :cond_12e
    :goto_12e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasPlusPageInfo()Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 3889
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergePlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 3891
    :cond_13b
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCoverPhotoInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3892
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCoverPhotoInfo()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeCoverPhotoInfo(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    goto/16 :goto_6

    .line 3816
    :cond_14a
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 3817
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$4900(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3f

    .line 3829
    :cond_158
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 3830
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5100(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6a

    .line 3845
    :cond_166
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 3846
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5400(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a2

    .line 3864
    :cond_174
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 3865
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$5800(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e7

    .line 3883
    :cond_182
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 3884
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->access$6200(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12e
.end method

.method public mergeGender(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4617
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4619
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4625
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4626
    return-object p0

    .line 4622
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    goto :goto_20
.end method

.method public mergePlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 5010
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 5012
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 5018
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 5019
    return-object p0

    .line 5015
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
    .line 4835
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4837
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$StringField;->newBuilder(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4843
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4844
    return-object p0

    .line 4840
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
    .line 4406
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4408
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Location;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4414
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4415
    return-object p0

    .line 4411
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    goto :goto_20
.end method

.method public setBio(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4654
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4656
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4657
    return-object p0
.end method

.method public setBio(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4644
    if-nez p1, :cond_8

    .line 4645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4647
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4649
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4650
    return-object p0
.end method

.method public setBirthday(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4786
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4788
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4789
    return-object p0
.end method

.method public setBirthday(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4776
    if-nez p1, :cond_8

    .line 4777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4779
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4781
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4782
    return-object p0
.end method

.method public setBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4872
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4874
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4875
    return-object p0
.end method

.method public setBraggingRights(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4862
    if-nez p1, :cond_8

    .line 4863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4865
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4867
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4868
    return-object p0
.end method

.method public setCoverPhotoInfo(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5047
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .line 5049
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 5050
    return-object p0
.end method

.method public setCoverPhotoInfo(Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 5037
    if-nez p1, :cond_8

    .line 5038
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5040
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .line 5042
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 5043
    return-object p0
.end method

.method public setCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4136
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4138
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4139
    return-object p0
.end method

.method public setCurrentEmployer(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4126
    if-nez p1, :cond_8

    .line 4127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4129
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4131
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4132
    return-object p0
.end method

.method public setCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4443
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4445
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4446
    return-object p0
.end method

.method public setCurrentLocation(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4433
    if-nez p1, :cond_8

    .line 4434
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4436
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4438
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4439
    return-object p0
.end method

.method public setCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4268
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4270
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4271
    return-object p0
.end method

.method public setCurrentSchool(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4258
    if-nez p1, :cond_8

    .line 4259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4261
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4263
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4264
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4097
    if-nez p1, :cond_8

    .line 4098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4100
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4101
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->fullName_:Ljava/lang/Object;

    .line 4103
    return-object p0
.end method

.method public setGender(Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4611
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Gender$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4613
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4614
    return-object p0
.end method

.method public setGender(Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4601
    if-nez p1, :cond_8

    .line 4602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4604
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 4606
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4607
    return-object p0
.end method

.method public setLink(ILcom/google/wireless/contacts/proto/Profile$Link$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4709
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4710
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4712
    return-object p0
.end method

.method public setLink(ILcom/google/wireless/contacts/proto/Profile$Link;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4699
    if-nez p2, :cond_8

    .line 4700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4702
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureLinkIsMutable()V

    .line 4703
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->link_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4705
    return-object p0
.end method

.method public setLocationMapUrl(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4572
    if-nez p1, :cond_8

    .line 4573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4575
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4576
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->locationMapUrl_:Ljava/lang/Object;

    .line 4578
    return-object p0
.end method

.method public setOtherEmployer(ILcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4191
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 4192
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4194
    return-object p0
.end method

.method public setOtherEmployer(ILcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4181
    if-nez p2, :cond_8

    .line 4182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4184
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherEmployerIsMutable()V

    .line 4185
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4187
    return-object p0
.end method

.method public setOtherLocation(ILcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4498
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4499
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4501
    return-object p0
.end method

.method public setOtherLocation(ILcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4488
    if-nez p2, :cond_8

    .line 4489
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4491
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherLocationIsMutable()V

    .line 4492
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4494
    return-object p0
.end method

.method public setOtherSchool(ILcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4323
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 4324
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4326
    return-object p0
.end method

.method public setOtherSchool(ILcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4313
    if-nez p2, :cond_8

    .line 4314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4316
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensureOtherSchoolIsMutable()V

    .line 4317
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4319
    return-object p0
.end method

.method public setPlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5004
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 5006
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 5007
    return-object p0
.end method

.method public setPlusPageInfo(Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4994
    if-nez p1, :cond_8

    .line 4995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4997
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 4999
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 5000
    return-object p0
.end method

.method public setProperty(ILcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4927
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4928
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4930
    return-object p0
.end method

.method public setProperty(ILcom/google/wireless/contacts/proto/Profile$ProfileProperty;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4917
    if-nez p2, :cond_8

    .line 4918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4920
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->ensurePropertyIsMutable()V

    .line 4921
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4923
    return-object p0
.end method

.method public setTagline(Lcom/google/wireless/contacts/proto/Common$StringField$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4829
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$StringField$Builder;->build()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4831
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4832
    return-object p0
.end method

.method public setTagline(Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4819
    if-nez p1, :cond_8

    .line 4820
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4822
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 4824
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4825
    return-object p0
.end method

.method public setWhereIGrewUp(Lcom/google/wireless/contacts/proto/Profile$Location$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4400
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4402
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4403
    return-object p0
.end method

.method public setWhereIGrewUp(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4390
    if-nez p1, :cond_8

    .line 4391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4393
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 4395
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->bitField0_:I

    .line 4396
    return-object p0
.end method
