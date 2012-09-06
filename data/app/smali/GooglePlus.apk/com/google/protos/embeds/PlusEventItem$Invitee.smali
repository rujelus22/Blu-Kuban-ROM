.class public final Lcom/google/protos/embeds/PlusEventItem$Invitee;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$InviteeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Invitee"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/PlusEventItem$Invitee;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private numAdditionalGuests_:I

.field private rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3808
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$Invitee;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    .line 3809
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->initFields()V

    .line 3810
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3079
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3183
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->memoizedIsInitialized:B

    .line 3218
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->memoizedSerializedSize:I

    .line 3080
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3074
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$Invitee;-><init>(Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3081
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3183
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->memoizedIsInitialized:B

    .line 3218
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->memoizedSerializedSize:I

    .line 3081
    return-void
.end method

.method static synthetic access$3902(Lcom/google/protos/embeds/PlusEventItem$Invitee;Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/protos/embeds/PlusEventItem$Invitee;Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/protos/embeds/PlusEventItem$Invitee;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3074
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->numAdditionalGuests_:I

    return p1
.end method

.method static synthetic access$4202(Lcom/google/protos/embeds/PlusEventItem$Invitee;Lcom/google/protos/embed/PersonItem$Person;)Lcom/google/protos/embed/PersonItem$Person;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/protos/embeds/PlusEventItem$Invitee;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3074
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->isAdminBlacklisted_:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/google/protos/embeds/PlusEventItem$Invitee;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/protos/embeds/PlusEventItem$Invitee;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3074
    iput-boolean p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->canUploadPhotos_:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/google/protos/embeds/PlusEventItem$Invitee;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3074
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$Invitee;
    .registers 1

    .prologue
    .line 3085
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3175
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3176
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->ATTENDING:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    .line 3177
    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->numAdditionalGuests_:I

    .line 3178
    invoke-static {}, Lcom/google/protos/embed/PersonItem$Person;->getDefaultInstance()Lcom/google/protos/embed/PersonItem$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    .line 3179
    iput-boolean v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->isAdminBlacklisted_:Z

    .line 3180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;

    .line 3181
    iput-boolean v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->canUploadPhotos_:Z

    .line 3182
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 1

    .prologue
    .line 3330
    #calls: Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->access$3700()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3333
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCanUploadPhotos()Z
    .registers 2

    .prologue
    .line 3171
    iget-boolean v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->canUploadPhotos_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3074
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$Invitee;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$Invitee;
    .registers 2

    .prologue
    .line 3089
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$Invitee;

    return-object v0
.end method

.method public getInvitee()Lcom/google/protos/embed/PersonItem$Person;
    .registers 2

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    return-object v0
.end method

.method public getInviter()Lcom/google/protos/embed/PersonItem$Person;
    .registers 2

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    return-object v0
.end method

.method public getIsAdminBlacklisted()Z
    .registers 2

    .prologue
    .line 3140
    iget-boolean v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->isAdminBlacklisted_:Z

    return v0
.end method

.method public getNumAdditionalGuests()I
    .registers 2

    .prologue
    .line 3120
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->numAdditionalGuests_:I

    return v0
.end method

.method public getRsvpType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;
    .registers 2

    .prologue
    .line 3110
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3220
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->memoizedSerializedSize:I

    .line 3221
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 3253
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 3223
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 3224
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 3225
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3228
    :cond_18
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 3229
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v3}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->getNumber()I

    move-result v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3232
    :cond_29
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_37

    .line 3233
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->numAdditionalGuests_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 3236
    :cond_37
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_46

    .line 3237
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3240
    :cond_46
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_56

    .line 3241
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->isAdminBlacklisted_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3244
    :cond_56
    const/4 v0, 0x0

    .local v0, i:I
    :goto_57
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_70

    .line 3245
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3244
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 3248
    :cond_70
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_80

    .line 3249
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->canUploadPhotos_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3252
    :cond_80
    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->memoizedSerializedSize:I

    move v2, v1

    .line 3253
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public hasCanUploadPhotos()Z
    .registers 3

    .prologue
    .line 3168
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

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

.method public hasInvitee()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3097
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

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
    .line 3127
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

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

.method public hasIsAdminBlacklisted()Z
    .registers 3

    .prologue
    .line 3137
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

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

.method public hasNumAdditionalGuests()Z
    .registers 3

    .prologue
    .line 3117
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

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

.method public hasRsvpType()Z
    .registers 3

    .prologue
    .line 3107
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

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
    const/4 v1, 0x1

    .line 3185
    iget-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->memoizedIsInitialized:B

    .line 3186
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3189
    :goto_8
    return v1

    .line 3186
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3188
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3074
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 2

    .prologue
    .line 3331
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3074
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->toBuilder()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;
    .registers 2

    .prologue
    .line 3335
    invoke-static {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$Invitee;)Lcom/google/protos/embeds/PlusEventItem$Invitee$Builder;

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
    .line 3260
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

    .line 3194
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$Invitee;->getSerializedSize()I

    .line 3195
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 3196
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->invitee_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3198
    :cond_11
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 3199
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->rsvpType_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;

    invoke-virtual {v1}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$RsvpType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3201
    :cond_20
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2c

    .line 3202
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->numAdditionalGuests_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3204
    :cond_2c
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_39

    .line 3205
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->inviter_:Lcom/google/protos/embed/PersonItem$Person;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3207
    :cond_39
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_47

    .line 3208
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->isAdminBlacklisted_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3210
    :cond_47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_48
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 3211
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->album_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3210
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 3213
    :cond_5f
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6d

    .line 3214
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/protos/embeds/PlusEventItem$Invitee;->canUploadPhotos_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3216
    :cond_6d
    return-void
.end method
