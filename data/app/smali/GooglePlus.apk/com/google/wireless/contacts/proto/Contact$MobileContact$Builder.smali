.class public final Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$MobileContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
        "Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Address;",
            ">;"
        }
    .end annotation
.end field

.field private affinity_:I

.field private attributes_:I

.field private bitField0_:I

.field private callAffinity_:I

.field private circleId_:Lcom/google/protobuf/LazyStringList;

.field private displayName_:Ljava/lang/Object;

.field private email_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Email;",
            ">;"
        }
    .end annotation
.end field

.field private groups_:Ljava/lang/Object;

.field private iAmFollowing_:Z

.field private id_:Ljava/lang/Object;

.field private inMyContacts_:Z

.field private isFollowingMe_:Z

.field private lastUpdatedTime_:J

.field private otherId_:Lcom/google/protobuf/LazyStringList;

.field private packedCircleIds_:Ljava/lang/Object;

.field private phone_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Phone;",
            ">;"
        }
    .end annotation
.end field

.field private phonesLookup_:Ljava/lang/Object;

.field private photoUrl_:Ljava/lang/Object;

.field private preferredEmail_:Ljava/lang/Object;

.field private profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

.field private publicUserName_:Ljava/lang/Object;

.field private tagLine_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2654
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3093
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->id_:Ljava/lang/Object;

    .line 3129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->displayName_:Ljava/lang/Object;

    .line 3165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    .line 3254
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->preferredEmail_:Ljava/lang/Object;

    .line 3290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 3326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    .line 3415
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phonesLookup_:Ljava/lang/Object;

    .line 3451
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    .line 3540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->groups_:Ljava/lang/Object;

    .line 3576
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    .line 3632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->publicUserName_:Ljava/lang/Object;

    .line 3815
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 3871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->packedCircleIds_:Ljava/lang/Object;

    .line 3907
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    .line 3931
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->tagLine_:Ljava/lang/Object;

    .line 2655
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->maybeForceBuilderInitialization()V

    .line 2656
    return-void
.end method

.method static synthetic access$2500()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 1

    .prologue
    .line 2649
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 1

    .prologue
    .line 2661
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAddressIsMutable()V
    .registers 3

    .prologue
    .line 3454
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 3455
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    .line 3456
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3458
    :cond_17
    return-void
.end method

.method private ensureCircleIdIsMutable()V
    .registers 4

    .prologue
    const/high16 v2, 0x4

    .line 3817
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_15

    .line 3818
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 3819
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3821
    :cond_15
    return-void
.end method

.method private ensureEmailIsMutable()V
    .registers 3

    .prologue
    .line 3168
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 3169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    .line 3170
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3172
    :cond_16
    return-void
.end method

.method private ensureOtherIdIsMutable()V
    .registers 3

    .prologue
    .line 3578
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 3579
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    .line 3580
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3582
    :cond_17
    return-void
.end method

.method private ensurePhoneIsMutable()V
    .registers 3

    .prologue
    .line 3329
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 3330
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    .line 3331
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3333
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2659
    return-void
.end method


# virtual methods
.method public addAddress(ILcom/google/wireless/contacts/proto/Contact$Address$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3514
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureAddressIsMutable()V

    .line 3515
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3517
    return-object p0
.end method

.method public addAddress(ILcom/google/wireless/contacts/proto/Contact$Address;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3497
    if-nez p2, :cond_8

    .line 3498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3500
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureAddressIsMutable()V

    .line 3501
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3503
    return-object p0
.end method

.method public addAddress(Lcom/google/wireless/contacts/proto/Contact$Address$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3507
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureAddressIsMutable()V

    .line 3508
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3510
    return-object p0
.end method

.method public addAddress(Lcom/google/wireless/contacts/proto/Contact$Address;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3487
    if-nez p1, :cond_8

    .line 3488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3490
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureAddressIsMutable()V

    .line 3491
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3493
    return-object p0
.end method

.method public addAllAddress(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$Address;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;"
        }
    .end annotation

    .prologue
    .line 3521
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$Address;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureAddressIsMutable()V

    .line 3522
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3524
    return-object p0
.end method

.method public addAllCircleId(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;"
        }
    .end annotation

    .prologue
    .line 3853
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureCircleIdIsMutable()V

    .line 3854
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3856
    return-object p0
.end method

.method public addAllEmail(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$Email;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;"
        }
    .end annotation

    .prologue
    .line 3235
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$Email;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureEmailIsMutable()V

    .line 3236
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3238
    return-object p0
.end method

.method public addAllOtherId(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;"
        }
    .end annotation

    .prologue
    .line 3614
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureOtherIdIsMutable()V

    .line 3615
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3617
    return-object p0
.end method

.method public addAllPhone(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$Phone;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;"
        }
    .end annotation

    .prologue
    .line 3396
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$Phone;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensurePhoneIsMutable()V

    .line 3397
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3399
    return-object p0
.end method

.method public addCircleId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3843
    if-nez p1, :cond_8

    .line 3844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3846
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureCircleIdIsMutable()V

    .line 3847
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3849
    return-object p0
.end method

.method public addEmail(ILcom/google/wireless/contacts/proto/Contact$Email$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3228
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureEmailIsMutable()V

    .line 3229
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3231
    return-object p0
.end method

.method public addEmail(ILcom/google/wireless/contacts/proto/Contact$Email;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3211
    if-nez p2, :cond_8

    .line 3212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3214
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureEmailIsMutable()V

    .line 3215
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3217
    return-object p0
.end method

.method public addEmail(Lcom/google/wireless/contacts/proto/Contact$Email$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3221
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureEmailIsMutable()V

    .line 3222
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3224
    return-object p0
.end method

.method public addEmail(Lcom/google/wireless/contacts/proto/Contact$Email;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3201
    if-nez p1, :cond_8

    .line 3202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3204
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureEmailIsMutable()V

    .line 3205
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3207
    return-object p0
.end method

.method public addOtherId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3604
    if-nez p1, :cond_8

    .line 3605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3607
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureOtherIdIsMutable()V

    .line 3608
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3610
    return-object p0
.end method

.method public addPhone(ILcom/google/wireless/contacts/proto/Contact$Phone$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3389
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensurePhoneIsMutable()V

    .line 3390
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3392
    return-object p0
.end method

.method public addPhone(ILcom/google/wireless/contacts/proto/Contact$Phone;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3372
    if-nez p2, :cond_8

    .line 3373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3375
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensurePhoneIsMutable()V

    .line 3376
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3378
    return-object p0
.end method

.method public addPhone(Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3382
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensurePhoneIsMutable()V

    .line 3383
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3385
    return-object p0
.end method

.method public addPhone(Lcom/google/wireless/contacts/proto/Contact$Phone;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3362
    if-nez p1, :cond_8

    .line 3363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3365
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensurePhoneIsMutable()V

    .line 3366
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3368
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    .line 2723
    .local v0, result:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2724
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2726
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 11

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 2740
    new-instance v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;-><init>(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V

    .line 2741
    .local v1, result:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2742
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2743
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 2744
    or-int/lit8 v2, v2, 0x1

    .line 2746
    :cond_1b
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$2702(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2747
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 2748
    or-int/lit8 v2, v2, 0x2

    .line 2750
    :cond_27
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$2802(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2751
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_41

    .line 2752
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    .line 2753
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2755
    :cond_41
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$2902(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/List;)Ljava/util/List;

    .line 2756
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4e

    .line 2757
    or-int/lit8 v2, v2, 0x4

    .line 2759
    :cond_4e
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->preferredEmail_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->preferredEmail_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3002(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2760
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5b

    .line 2761
    or-int/lit8 v2, v2, 0x8

    .line 2763
    :cond_5b
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->photoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->photoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3102(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_76

    .line 2765
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    .line 2766
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2768
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3202(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/List;)Ljava/util/List;

    .line 2769
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_83

    .line 2770
    or-int/lit8 v2, v2, 0x10

    .line 2772
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phonesLookup_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phonesLookup_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3302(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2773
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_9e

    .line 2774
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    .line 2775
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2777
    :cond_9e
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3402(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/List;)Ljava/util/List;

    .line 2778
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_ab

    .line 2779
    or-int/lit8 v2, v2, 0x20

    .line 2781
    :cond_ab
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->groups_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->groups_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3502(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2782
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_c7

    .line 2783
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    .line 2785
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2787
    :cond_c7
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3602(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2788
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_d4

    .line 2789
    or-int/lit8 v2, v2, 0x40

    .line 2791
    :cond_d4
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->publicUserName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->publicUserName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3702(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2792
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_e1

    .line 2793
    or-int/lit16 v2, v2, 0x80

    .line 2795
    :cond_e1
    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->lastUpdatedTime_:J

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->lastUpdatedTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3802(Lcom/google/wireless/contacts/proto/Contact$MobileContact;J)J

    .line 2796
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_ee

    .line 2797
    or-int/lit16 v2, v2, 0x100

    .line 2799
    :cond_ee
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->affinity_:I

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->affinity_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3902(Lcom/google/wireless/contacts/proto/Contact$MobileContact;I)I

    .line 2800
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_fb

    .line 2801
    or-int/lit16 v2, v2, 0x200

    .line 2803
    :cond_fb
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->callAffinity_:I

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->callAffinity_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4002(Lcom/google/wireless/contacts/proto/Contact$MobileContact;I)I

    .line 2804
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_108

    .line 2805
    or-int/lit16 v2, v2, 0x400

    .line 2807
    :cond_108
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->attributes_:I

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->attributes_:I
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4102(Lcom/google/wireless/contacts/proto/Contact$MobileContact;I)I

    .line 2808
    and-int v3, v0, v5

    if-ne v3, v5, :cond_113

    .line 2809
    or-int/lit16 v2, v2, 0x800

    .line 2811
    :cond_113
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->iAmFollowing_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->iAmFollowing_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4202(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)Z

    .line 2812
    and-int v3, v0, v6

    if-ne v3, v6, :cond_11e

    .line 2813
    or-int/lit16 v2, v2, 0x1000

    .line 2815
    :cond_11e
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->isFollowingMe_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->isFollowingMe_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4302(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)Z

    .line 2816
    and-int v3, v0, v7

    if-ne v3, v7, :cond_129

    .line 2817
    or-int/lit16 v2, v2, 0x2000

    .line 2819
    :cond_129
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->inMyContacts_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->inMyContacts_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4402(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)Z

    .line 2820
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_144

    .line 2821
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 2823
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v4, -0x40001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2825
    :cond_144
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4502(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2826
    and-int v3, v0, v9

    if-ne v3, v9, :cond_14f

    .line 2827
    or-int/lit16 v2, v2, 0x4000

    .line 2829
    :cond_14f
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->packedCircleIds_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->packedCircleIds_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4602(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2830
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_15c

    .line 2831
    or-int/2addr v2, v5

    .line 2833
    :cond_15c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4702(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    .line 2834
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_169

    .line 2835
    or-int/2addr v2, v6

    .line 2837
    :cond_169
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->tagLine_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->tagLine_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4802(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2838
    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4902(Lcom/google/wireless/contacts/proto/Contact$MobileContact;I)I

    .line 2839
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2665
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->id_:Ljava/lang/Object;

    .line 2667
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->displayName_:Ljava/lang/Object;

    .line 2669
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2670
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    .line 2671
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->preferredEmail_:Ljava/lang/Object;

    .line 2673
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 2675
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2676
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    .line 2677
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phonesLookup_:Ljava/lang/Object;

    .line 2679
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2680
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    .line 2681
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->groups_:Ljava/lang/Object;

    .line 2683
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2684
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    .line 2685
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->publicUserName_:Ljava/lang/Object;

    .line 2687
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->lastUpdatedTime_:J

    .line 2689
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2690
    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->affinity_:I

    .line 2691
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2692
    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->callAffinity_:I

    .line 2693
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2694
    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->attributes_:I

    .line 2695
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2696
    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->iAmFollowing_:Z

    .line 2697
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2698
    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->isFollowingMe_:Z

    .line 2699
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2700
    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->inMyContacts_:Z

    .line 2701
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2702
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 2703
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2704
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->packedCircleIds_:Ljava/lang/Object;

    .line 2705
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2706
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    .line 2707
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2708
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->tagLine_:Ljava/lang/Object;

    .line 2709
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2710
    return-object p0
.end method

.method public clearAddress()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    .line 3528
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3530
    return-object p0
.end method

.method public clearAffinity()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3703
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3704
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->affinity_:I

    .line 3706
    return-object p0
.end method

.method public clearAttributes()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3745
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3746
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->attributes_:I

    .line 3748
    return-object p0
.end method

.method public clearCallAffinity()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3724
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3725
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->callAffinity_:I

    .line 3727
    return-object p0
.end method

.method public clearCircleId()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3

    .prologue
    .line 3859
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 3860
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3862
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3153
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3154
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->displayName_:Ljava/lang/Object;

    .line 3156
    return-object p0
.end method

.method public clearEmail()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    .line 3242
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3244
    return-object p0
.end method

.method public clearGroups()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3564
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3565
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getGroups()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->groups_:Ljava/lang/Object;

    .line 3567
    return-object p0
.end method

.method public clearIAmFollowing()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3766
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->iAmFollowing_:Z

    .line 3769
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3117
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3118
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->id_:Ljava/lang/Object;

    .line 3120
    return-object p0
.end method

.method public clearInMyContacts()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3

    .prologue
    .line 3808
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->inMyContacts_:Z

    .line 3811
    return-object p0
.end method

.method public clearIsFollowingMe()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3787
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->isFollowingMe_:Z

    .line 3790
    return-object p0
.end method

.method public clearLastUpdatedTime()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3

    .prologue
    .line 3682
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3683
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->lastUpdatedTime_:J

    .line 3685
    return-object p0
.end method

.method public clearOtherId()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3620
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    .line 3621
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3623
    return-object p0
.end method

.method public clearPackedCircleIds()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3

    .prologue
    .line 3895
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3896
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPackedCircleIds()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->packedCircleIds_:Ljava/lang/Object;

    .line 3898
    return-object p0
.end method

.method public clearPhone()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    .line 3403
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3405
    return-object p0
.end method

.method public clearPhonesLookup()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3439
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3440
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhonesLookup()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phonesLookup_:Ljava/lang/Object;

    .line 3442
    return-object p0
.end method

.method public clearPhotoUrl()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3314
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3315
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 3317
    return-object p0
.end method

.method public clearPreferredEmail()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3278
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3279
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPreferredEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->preferredEmail_:Ljava/lang/Object;

    .line 3281
    return-object p0
.end method

.method public clearProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3

    .prologue
    .line 3924
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3925
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    .line 3927
    return-object p0
.end method

.method public clearPublicUserName()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2

    .prologue
    .line 3656
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3657
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPublicUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->publicUserName_:Ljava/lang/Object;

    .line 3659
    return-object p0
.end method

.method public clearTagLine()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3

    .prologue
    .line 3955
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3956
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getTagLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->tagLine_:Ljava/lang/Object;

    .line 3958
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3

    .prologue
    .line 2714
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

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
    .line 2649
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress(I)Lcom/google/wireless/contacts/proto/Contact$Address;
    .registers 3
    .parameter "index"

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Address;

    return-object v0
.end method

.method public getAddressCount()I
    .registers 2

    .prologue
    .line 3464
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddressList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAffinity()I
    .registers 2

    .prologue
    .line 3694
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->affinity_:I

    return v0
.end method

.method public getAttributes()I
    .registers 2

    .prologue
    .line 3736
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->attributes_:I

    return v0
.end method

.method public getCallAffinity()I
    .registers 2

    .prologue
    .line 3715
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->callAffinity_:I

    return v0
.end method

.method public getCircleId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3830
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCircleIdCount()I
    .registers 2

    .prologue
    .line 3827
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCircleIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3824
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2

    .prologue
    .line 2718
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->displayName_:Ljava/lang/Object;

    .line 3135
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3136
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3137
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->displayName_:Ljava/lang/Object;

    .line 3140
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

.method public getEmail(I)Lcom/google/wireless/contacts/proto/Contact$Email;
    .registers 3
    .parameter "index"

    .prologue
    .line 3181
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Email;

    return-object v0
.end method

.method public getEmailCount()I
    .registers 2

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEmailList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroups()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3545
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->groups_:Ljava/lang/Object;

    .line 3546
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3547
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3548
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->groups_:Ljava/lang/Object;

    .line 3551
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

.method public getIAmFollowing()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3757
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->iAmFollowing_:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->id_:Ljava/lang/Object;

    .line 3099
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3100
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3101
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->id_:Ljava/lang/Object;

    .line 3104
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

.method public getInMyContacts()Z
    .registers 2

    .prologue
    .line 3799
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->inMyContacts_:Z

    return v0
.end method

.method public getIsFollowingMe()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3778
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->isFollowingMe_:Z

    return v0
.end method

.method public getLastUpdatedTime()J
    .registers 3

    .prologue
    .line 3673
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->lastUpdatedTime_:J

    return-wide v0
.end method

.method public getOtherId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3591
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOtherIdCount()I
    .registers 2

    .prologue
    .line 3588
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getOtherIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackedCircleIds()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3876
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->packedCircleIds_:Ljava/lang/Object;

    .line 3877
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3878
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3879
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->packedCircleIds_:Ljava/lang/Object;

    .line 3882
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

.method public getPhone(I)Lcom/google/wireless/contacts/proto/Contact$Phone;
    .registers 3
    .parameter "index"

    .prologue
    .line 3342
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Phone;

    return-object v0
.end method

.method public getPhoneCount()I
    .registers 2

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhonesLookup()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phonesLookup_:Ljava/lang/Object;

    .line 3421
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3422
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3423
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phonesLookup_:Ljava/lang/Object;

    .line 3426
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

.method public getPhotoUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 3296
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3297
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3298
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 3301
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

.method public getPreferredEmail()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->preferredEmail_:Ljava/lang/Object;

    .line 3260
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3261
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3262
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->preferredEmail_:Ljava/lang/Object;

    .line 3265
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

.method public getProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    .registers 2

    .prologue
    .line 3912
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    return-object v0
.end method

.method public getPublicUserName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->publicUserName_:Ljava/lang/Object;

    .line 3638
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3639
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3640
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->publicUserName_:Ljava/lang/Object;

    .line 3643
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

.method public getTagLine()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3936
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->tagLine_:Ljava/lang/Object;

    .line 3937
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3938
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3939
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->tagLine_:Ljava/lang/Object;

    .line 3942
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

.method public hasAffinity()Z
    .registers 3

    .prologue
    .line 3691
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

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

.method public hasAttributes()Z
    .registers 3

    .prologue
    .line 3733
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

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

.method public hasCallAffinity()Z
    .registers 3

    .prologue
    .line 3712
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

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

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 3131
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

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

.method public hasGroups()Z
    .registers 3

    .prologue
    .line 3542
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

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

.method public hasIAmFollowing()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v1, 0x8000

    .line 3754
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    const/4 v0, 0x1

    .line 3095
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasInMyContacts()Z
    .registers 3

    .prologue
    const/high16 v1, 0x2

    .line 3796
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasIsFollowingMe()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v1, 0x1

    .line 3775
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLastUpdatedTime()Z
    .registers 3

    .prologue
    .line 3670
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPackedCircleIds()Z
    .registers 3

    .prologue
    const/high16 v1, 0x8

    .line 3873
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPhonesLookup()Z
    .registers 3

    .prologue
    .line 3417
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

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

.method public hasPhotoUrl()Z
    .registers 3

    .prologue
    .line 3292
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

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

.method public hasPreferredEmail()Z
    .registers 3

    .prologue
    .line 3256
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

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

.method public hasProfileType()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10

    .line 3909
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPublicUserName()Z
    .registers 3

    .prologue
    .line 3634
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

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

.method public hasTagLine()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 3933
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 2949
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
    .line 2649
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2649
    check-cast p1, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

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
    .line 2649
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2957
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2958
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_14e

    .line 2963
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2965
    :sswitch_d
    return-object p0

    .line 2970
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2971
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 2975
    :sswitch_1b
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2976
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 2980
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Email;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$Email$Builder;

    move-result-object v1

    .line 2981
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2982
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->addEmail(Lcom/google/wireless/contacts/proto/Contact$Email;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    goto :goto_0

    .line 2986
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$Email$Builder;
    :sswitch_37
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2987
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->preferredEmail_:Ljava/lang/Object;

    goto :goto_0

    .line 2991
    :sswitch_44
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2992
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->photoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 2996
    :sswitch_51
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Phone;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;

    move-result-object v1

    .line 2997
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2998
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->addPhone(Lcom/google/wireless/contacts/proto/Contact$Phone;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    goto :goto_0

    .line 3002
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;
    :sswitch_60
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3003
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phonesLookup_:Ljava/lang/Object;

    goto :goto_0

    .line 3007
    :sswitch_6d
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$Address;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$Address$Builder;

    move-result-object v1

    .line 3008
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3009
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->addAddress(Lcom/google/wireless/contacts/proto/Contact$Address;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    goto :goto_0

    .line 3013
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Contact$Address$Builder;
    :sswitch_7c
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3014
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->groups_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3018
    :sswitch_8a
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureOtherIdIsMutable()V

    .line 3019
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 3023
    :sswitch_98
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3024
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->publicUserName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3028
    :sswitch_a6
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3029
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->lastUpdatedTime_:J

    goto/16 :goto_0

    .line 3033
    :sswitch_b4
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3034
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->affinity_:I

    goto/16 :goto_0

    .line 3038
    :sswitch_c2
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3039
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->callAffinity_:I

    goto/16 :goto_0

    .line 3043
    :sswitch_d0
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3044
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->attributes_:I

    goto/16 :goto_0

    .line 3048
    :sswitch_de
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3049
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->iAmFollowing_:Z

    goto/16 :goto_0

    .line 3053
    :sswitch_ee
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3054
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->isFollowingMe_:Z

    goto/16 :goto_0

    .line 3058
    :sswitch_fd
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3059
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->inMyContacts_:Z

    goto/16 :goto_0

    .line 3063
    :sswitch_10c
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureCircleIdIsMutable()V

    .line 3064
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 3068
    :sswitch_11a
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v5, 0x8

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3069
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->packedCircleIds_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3073
    :sswitch_129
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3074
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->valueOf(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v3

    .line 3075
    .local v3, value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    if-eqz v3, :cond_0

    .line 3076
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v5, 0x10

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3077
    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    goto/16 :goto_0

    .line 3082
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    :sswitch_13e
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v5, 0x20

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3083
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->tagLine_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2958
    nop

    :sswitch_data_14e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_37
        0x2a -> :sswitch_44
        0x32 -> :sswitch_51
        0x3a -> :sswitch_60
        0x42 -> :sswitch_6d
        0x4a -> :sswitch_7c
        0x52 -> :sswitch_8a
        0x5a -> :sswitch_98
        0x60 -> :sswitch_a6
        0x68 -> :sswitch_b4
        0x70 -> :sswitch_c2
        0x78 -> :sswitch_d0
        0x80 -> :sswitch_de
        0x88 -> :sswitch_ee
        0x90 -> :sswitch_fd
        0x9a -> :sswitch_10c
        0xa2 -> :sswitch_11a
        0xa8 -> :sswitch_129
        0xb2 -> :sswitch_13e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 2843
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2945
    :cond_6
    :goto_6
    return-object p0

    .line 2844
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2845
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2847
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2848
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2850
    :cond_21
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$2900(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 2851
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 2852
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$2900(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    .line 2853
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2860
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasPreferredEmail()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2861
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPreferredEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setPreferredEmail(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2863
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasPhotoUrl()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2864
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setPhotoUrl(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2866
    :cond_59
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3200(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 2867
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 2868
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3200(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    .line 2869
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2876
    :cond_77
    :goto_77
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasPhonesLookup()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2877
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhonesLookup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setPhonesLookup(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2879
    :cond_84
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3400(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 2880
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 2881
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3400(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    .line 2882
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2889
    :cond_a2
    :goto_a2
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasGroups()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2890
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getGroups()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setGroups(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2892
    :cond_af
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3600(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 2893
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 2894
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3600(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    .line 2895
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2902
    :cond_cd
    :goto_cd
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasPublicUserName()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 2903
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPublicUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setPublicUserName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2905
    :cond_da
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasLastUpdatedTime()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 2906
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setLastUpdatedTime(J)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2908
    :cond_e7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasAffinity()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 2909
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAffinity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setAffinity(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2911
    :cond_f4
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasCallAffinity()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 2912
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCallAffinity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setCallAffinity(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2914
    :cond_101
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 2915
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setAttributes(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2917
    :cond_10e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasIAmFollowing()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 2918
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getIAmFollowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setIAmFollowing(Z)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2920
    :cond_11b
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasIsFollowingMe()Z

    move-result v0

    if-eqz v0, :cond_128

    .line 2921
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getIsFollowingMe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setIsFollowingMe(Z)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2923
    :cond_128
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasInMyContacts()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 2924
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getInMyContacts()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setInMyContacts(Z)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2926
    :cond_135
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4500(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_155

    .line 2927
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 2928
    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4500(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 2929
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 2936
    :cond_155
    :goto_155
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasPackedCircleIds()Z

    move-result v0

    if-eqz v0, :cond_162

    .line 2937
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPackedCircleIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setPackedCircleIds(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2939
    :cond_162
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasProfileType()Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 2940
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setProfileType(Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2942
    :cond_16f
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->hasTagLine()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2943
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getTagLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setTagLine(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    goto/16 :goto_6

    .line 2855
    :cond_17e
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureEmailIsMutable()V

    .line 2856
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$2900(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3f

    .line 2871
    :cond_18c
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensurePhoneIsMutable()V

    .line 2872
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3200(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_77

    .line 2884
    :cond_19a
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureAddressIsMutable()V

    .line 2885
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3400(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a2

    .line 2897
    :cond_1a8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureOtherIdIsMutable()V

    .line 2898
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$3600(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_cd

    .line 2931
    :cond_1b6
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureCircleIdIsMutable()V

    .line 2932
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->access$4500(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_155
.end method

.method public setAddress(ILcom/google/wireless/contacts/proto/Contact$Address$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3481
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureAddressIsMutable()V

    .line 3482
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$Address$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Address;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3484
    return-object p0
.end method

.method public setAddress(ILcom/google/wireless/contacts/proto/Contact$Address;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3471
    if-nez p2, :cond_8

    .line 3472
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3474
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureAddressIsMutable()V

    .line 3475
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->address_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3477
    return-object p0
.end method

.method public setAffinity(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3697
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3698
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->affinity_:I

    .line 3700
    return-object p0
.end method

.method public setAttributes(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3739
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3740
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->attributes_:I

    .line 3742
    return-object p0
.end method

.method public setCallAffinity(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3718
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3719
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->callAffinity_:I

    .line 3721
    return-object p0
.end method

.method public setCircleId(ILjava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3834
    if-nez p2, :cond_8

    .line 3835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3837
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureCircleIdIsMutable()V

    .line 3838
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3840
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3144
    if-nez p1, :cond_8

    .line 3145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3147
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3148
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->displayName_:Ljava/lang/Object;

    .line 3150
    return-object p0
.end method

.method public setEmail(ILcom/google/wireless/contacts/proto/Contact$Email$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3195
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureEmailIsMutable()V

    .line 3196
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$Email$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3198
    return-object p0
.end method

.method public setEmail(ILcom/google/wireless/contacts/proto/Contact$Email;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3185
    if-nez p2, :cond_8

    .line 3186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3188
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureEmailIsMutable()V

    .line 3189
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3191
    return-object p0
.end method

.method public setGroups(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3555
    if-nez p1, :cond_8

    .line 3556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3558
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3559
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->groups_:Ljava/lang/Object;

    .line 3561
    return-object p0
.end method

.method public setIAmFollowing(Z)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3760
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3761
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->iAmFollowing_:Z

    .line 3763
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3108
    if-nez p1, :cond_8

    .line 3109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3111
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3112
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->id_:Ljava/lang/Object;

    .line 3114
    return-object p0
.end method

.method public setInMyContacts(Z)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3802
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3803
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->inMyContacts_:Z

    .line 3805
    return-object p0
.end method

.method public setIsFollowingMe(Z)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3781
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3782
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->isFollowingMe_:Z

    .line 3784
    return-object p0
.end method

.method public setLastUpdatedTime(J)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3676
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3677
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->lastUpdatedTime_:J

    .line 3679
    return-object p0
.end method

.method public setOtherId(ILjava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3595
    if-nez p2, :cond_8

    .line 3596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3598
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensureOtherIdIsMutable()V

    .line 3599
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3601
    return-object p0
.end method

.method public setPackedCircleIds(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3886
    if-nez p1, :cond_8

    .line 3887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3889
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3890
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->packedCircleIds_:Ljava/lang/Object;

    .line 3892
    return-object p0
.end method

.method public setPhone(ILcom/google/wireless/contacts/proto/Contact$Phone$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3356
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensurePhoneIsMutable()V

    .line 3357
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$Phone$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$Phone;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3359
    return-object p0
.end method

.method public setPhone(ILcom/google/wireless/contacts/proto/Contact$Phone;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3346
    if-nez p2, :cond_8

    .line 3347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3349
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->ensurePhoneIsMutable()V

    .line 3350
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3352
    return-object p0
.end method

.method public setPhonesLookup(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3430
    if-nez p1, :cond_8

    .line 3431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3433
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3434
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->phonesLookup_:Ljava/lang/Object;

    .line 3436
    return-object p0
.end method

.method public setPhotoUrl(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3305
    if-nez p1, :cond_8

    .line 3306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3308
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3309
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->photoUrl_:Ljava/lang/Object;

    .line 3311
    return-object p0
.end method

.method public setPreferredEmail(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3269
    if-nez p1, :cond_8

    .line 3270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3272
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3273
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->preferredEmail_:Ljava/lang/Object;

    .line 3275
    return-object p0
.end method

.method public setProfileType(Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3915
    if-nez p1, :cond_8

    .line 3916
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3918
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3919
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    .line 3921
    return-object p0
.end method

.method public setPublicUserName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3647
    if-nez p1, :cond_8

    .line 3648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3650
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3651
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->publicUserName_:Ljava/lang/Object;

    .line 3653
    return-object p0
.end method

.method public setTagLine(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3946
    if-nez p1, :cond_8

    .line 3947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3949
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->bitField0_:I

    .line 3950
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->tagLine_:Ljava/lang/Object;

    .line 3952
    return-object p0
.end method
