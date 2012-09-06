.class public final Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$InviteeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem$Invitee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/PlusEventItem$Invitee;",
        "Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;",
        ">;",
        "Lcom/google/protos/embeds/PlusEventItem$InviteeOrBuilder;"
    }
.end annotation


# instance fields
.field private album_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private canUploadPhotos_:Z

.field private invitee_:Lcom/google/protos/embed/PersonItem$Person;

.field private inviter_:Lcom/google/protos/embed/PersonItem$Person;

.field private isAdminBlacklisted_:Z

.field private numAdditionalGuests_:I

.field private rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3342
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3543
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3586
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 3631
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3695
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    .line 3343
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->maybeForceBuilderInitialization()V

    .line 3344
    return-void
.end method

.method static synthetic access$3700()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 1

    .prologue
    .line 3337
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 1

    .prologue
    .line 3349
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlbumIsMutable()V
    .registers 3

    .prologue
    .line 3698
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 3699
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    .line 3700
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3702
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3347
    return-void
.end method


# virtual methods
.method public addAlbum(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3731
    if-nez p1, :cond_8

    .line 3732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3734
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->ensureAlbumIsMutable()V

    .line 3735
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3737
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->build()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/PlusEventItem$Invitee;
    .registers 3

    .prologue
    .line 3380
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    .line 3381
    .local v0, result:Lcom/google/protos/embeds/PlusEventItem$Invitee;
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3382
    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3384
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/PlusEventItem$Invitee;
    .registers 6

    .prologue
    .line 3398
    new-instance v1, Lcom/google/protos/embeds/PlusEventItem$Invitee;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/PlusEventItem$Invitee;-><init>(Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V

    .line 3399
    .local v1, result:Lcom/google/protos/embeds/PlusEventItem$Invitee;
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3400
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3401
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3402
    or-int/lit8 v2, v2, 0x1

    .line 3404
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->invitee_:Lcom/google/protos/embed/PersonItem$Person;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$3902(Lcom/google/protos/embeds/PlusEventItem$Invitee;Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person;

    .line 3405
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3406
    or-int/lit8 v2, v2, 0x2

    .line 3408
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4002(Lcom/google/protos/embeds/PlusEventItem$Invitee;Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 3409
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3410
    or-int/lit8 v2, v2, 0x4

    .line 3412
    :cond_28
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->numAdditionalGuests_:I

    #setter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->numAdditionalGuests_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4102(Lcom/google/protos/embeds/PlusEventItem$Invitee;I)I

    .line 3413
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 3414
    or-int/lit8 v2, v2, 0x8

    .line 3416
    :cond_35
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->inviter_:Lcom/google/protos/embed/PersonItem$Person;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4202(Lcom/google/protos/embeds/PlusEventItem$Invitee;Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person;

    .line 3417
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 3418
    or-int/lit8 v2, v2, 0x10

    .line 3420
    :cond_42
    iget-boolean v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->isAdminBlacklisted_:Z

    #setter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->isAdminBlacklisted_:Z
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4302(Lcom/google/protos/embeds/PlusEventItem$Invitee;Z)Z

    .line 3421
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 3422
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    .line 3423
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3425
    :cond_5d
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4402(Lcom/google/protos/embeds/PlusEventItem$Invitee;Ljava/util/List;)Ljava/util/List;

    .line 3426
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6a

    .line 3427
    or-int/lit8 v2, v2, 0x20

    .line 3429
    :cond_6a
    iget-boolean v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->canUploadPhotos_:Z

    #setter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->canUploadPhotos_:Z
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4502(Lcom/google/protos/embeds/PlusEventItem$Invitee;Z)Z

    .line 3430
    #setter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4602(Lcom/google/protos/embeds/PlusEventItem$Invitee;I)I

    .line 3431
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3353
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3354
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3355
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3356
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 3357
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3358
    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->numAdditionalGuests_:I

    .line 3359
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3360
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3361
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3362
    iput-boolean v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->isAdminBlacklisted_:Z

    .line 3363
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    .line 3365
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3366
    iput-boolean v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->canUploadPhotos_:Z

    .line 3367
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3368
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 3

    .prologue
    .line 3372
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

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
    .line 3337
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$Invitee;
    .registers 2

    .prologue
    .line 3376
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public getInvitee()Lcom/google/protos/embed/PersonItem$Person;
    .registers 2

    .prologue
    .line 3548
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    return-object v0
.end method

.method public getInviter()Lcom/google/protos/embed/PersonItem$Person;
    .registers 2

    .prologue
    .line 3636
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    return-object v0
.end method

.method public hasInvitee()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3545
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasInviter()Z
    .registers 3

    .prologue
    .line 3633
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3468
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
    .line 3337
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3337
    check-cast p1, Lcom/google/protos/embeds/PlusEventItem$Invitee;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

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
    .line 3337
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3476
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 3477
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_92

    .line 3482
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3484
    :sswitch_d
    return-object p0

    .line 3489
    :sswitch_e
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->newBuilder()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v1

    .line 3490
    .local v1, subBuilder:Lcom/google/protos/embed/PersonItem$Person$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->hasInvitee()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3491
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->getInvitee()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    .line 3493
    :cond_1f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3494
    invoke-virtual {v1}, Lcom/google/protos/embed/PersonItem$Person$Builder;->buildPartial()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->setInvitee(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    goto :goto_0

    .line 3498
    .end local v1           #subBuilder:Lcom/google/protos/embed/PersonItem$Person$Builder;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3499
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    move-result-object v3

    .line 3500
    .local v3, value:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    if-eqz v3, :cond_0

    .line 3501
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3502
    iput-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    goto :goto_0

    .line 3507
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    :sswitch_3d
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3508
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->numAdditionalGuests_:I

    goto :goto_0

    .line 3512
    :sswitch_4a
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->newBuilder()Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v1

    .line 3513
    .restart local v1       #subBuilder:Lcom/google/protos/embed/PersonItem$Person$Builder;
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->hasInviter()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 3514
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->getInviter()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    .line 3516
    :cond_5b
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3517
    invoke-virtual {v1}, Lcom/google/protos/embed/PersonItem$Person$Builder;->buildPartial()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->setInviter(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    goto :goto_0

    .line 3521
    .end local v1           #subBuilder:Lcom/google/protos/embed/PersonItem$Person$Builder;
    :sswitch_66
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3522
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->isAdminBlacklisted_:Z

    goto :goto_0

    .line 3526
    :sswitch_73
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v1

    .line 3527
    .local v1, subBuilder:Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3528
    invoke-virtual {v1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->addAlbum(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    goto/16 :goto_0

    .line 3532
    .end local v1           #subBuilder:Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    :sswitch_83
    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3533
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->canUploadPhotos_:Z

    goto/16 :goto_0

    .line 3477
    nop

    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x18 -> :sswitch_3d
        0x22 -> :sswitch_4a
        0x28 -> :sswitch_66
        0x32 -> :sswitch_73
        0x38 -> :sswitch_83
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3435
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3464
    :cond_6
    :goto_6
    return-object p0

    .line 3436
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasInvitee()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3437
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getInvitee()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->mergeInvitee(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    .line 3439
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasRsvpType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3440
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getRsvpType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->setRsvpType(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    .line 3442
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasNumAdditionalGuests()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3443
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getNumAdditionalGuests()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->setNumAdditionalGuests(I)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    .line 3445
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasInviter()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3446
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getInviter()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->mergeInviter(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    .line 3448
    :cond_3b
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasIsAdminBlacklisted()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3449
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getIsAdminBlacklisted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->setIsAdminBlacklisted(Z)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    .line 3451
    :cond_48
    #getter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4400(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 3452
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 3453
    #getter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4400(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    .line 3454
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3461
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->hasCanUploadPhotos()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3462
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getCanUploadPhotos()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->setCanUploadPhotos(Z)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    goto :goto_6

    .line 3456
    :cond_74
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->ensureAlbumIsMutable()V

    .line 3457
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->album_:Ljava/util/List;

    #getter for: Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->access$4400(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_66
.end method

.method public mergeInvitee(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3567
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3569
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-static {v0}, Lcom/google/protos/embed/PersonItem$Person;->newBuilder(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->buildPartial()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3575
    :goto_1f
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3576
    return-object p0

    .line 3572
    :cond_26
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    goto :goto_1f
.end method

.method public mergeInviter(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3655
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 3657
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-static {v0}, Lcom/google/protos/embed/PersonItem$Person;->newBuilder(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/embed/PersonItem$Person$Builder;->mergeFrom(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/embed/PersonItem$Person$Builder;->buildPartial()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3663
    :goto_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3664
    return-object p0

    .line 3660
    :cond_27
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    goto :goto_20
.end method

.method public setCanUploadPhotos(Z)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3792
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3793
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->canUploadPhotos_:Z

    .line 3795
    return-object p0
.end method

.method public setInvitee(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3551
    if-nez p1, :cond_8

    .line 3552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3554
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3556
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3557
    return-object p0
.end method

.method public setInviter(Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3639
    if-nez p1, :cond_8

    .line 3640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3642
    :cond_8
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3644
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3645
    return-object p0
.end method

.method public setIsAdminBlacklisted(Z)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3682
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3683
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->isAdminBlacklisted_:Z

    .line 3685
    return-object p0
.end method

.method public setNumAdditionalGuests(I)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3618
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3619
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->numAdditionalGuests_:I

    .line 3621
    return-object p0
.end method

.method public setRsvpType(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3594
    if-nez p1, :cond_8

    .line 3595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3597
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->bitField0_:I

    .line 3598
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 3600
    return-object p0
.end method
