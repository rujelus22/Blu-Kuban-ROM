.class public final Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$MobileProfileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5075
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 5076
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->initFields()V

    .line 5077
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3074
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3387
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    .line 3473
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedSerializedSize:I

    .line 3075
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;-><init>(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3076
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3387
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    .line 3473
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedSerializedSize:I

    .line 3076
    return-void
.end method

.method static synthetic access$4702(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;)Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 1

    .prologue
    .line 3080
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    return-object v0
.end method

.method private getFullNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3109
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    .line 3110
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3111
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3113
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    .line 3116
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getLocationMapUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3244
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    .line 3245
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3246
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3248
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    .line 3251
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 3368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    .line 3369
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    .line 3371
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3372
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    .line 3373
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3374
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 3375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    .line 3376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    .line 3377
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 3378
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3379
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    .line 3380
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3381
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3382
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 3383
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    .line 3384
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 3385
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    .line 3386
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 1

    .prologue
    .line 3629
    #calls: Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->access$4500()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3632
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBio()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 3303
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getBraggingRights()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getCoverPhotoInfo()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
    .registers 2

    .prologue
    .line 3364
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    return-object v0
.end method

.method public getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3069
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2

    .prologue
    .line 3084
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3095
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    .line 3096
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3097
    check-cast v1, Ljava/lang/String;

    .line 3105
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3099
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3101
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3102
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3103
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3105
    goto :goto_8
.end method

.method public getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 2

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    return-object v0
.end method

.method public getLink(I)Lcom/google/wireless/contacts/proto/Profile$Link;
    .registers 3
    .parameter "index"

    .prologue
    .line 3289
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Link;

    return-object v0
.end method

.method public getLinkCount()I
    .registers 2

    .prologue
    .line 3286
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

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
    .line 3279
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    return-object v0
.end method

.method public getLinkOrBuilder(I)Lcom/google/wireless/contacts/proto/Profile$LinkOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3293
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$LinkOrBuilder;

    return-object v0
.end method

.method public getLinkOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Profile$LinkOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    return-object v0
.end method

.method public getLocationMapUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3230
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    .line 3231
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3232
    check-cast v1, Ljava/lang/String;

    .line 3240
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3234
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3236
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3237
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3238
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3240
    goto :goto_8
.end method

.method public getOtherEmployer(I)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 3
    .parameter "index"

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getOtherEmployerCount()I
    .registers 2

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

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
    .line 3134
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherEmployerOrBuilder(I)Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;

    return-object v0
.end method

.method public getOtherEmployerOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherLocation(I)Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 3216
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public getOtherLocationCount()I
    .registers 2

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

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
    .line 3206
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherLocationOrBuilder(I)Lcom/google/wireless/contacts/proto/Profile$LocationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$LocationOrBuilder;

    return-object v0
.end method

.method public getOtherLocationOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Profile$LocationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3210
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherSchool(I)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 3
    .parameter "index"

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getOtherSchoolCount()I
    .registers 2

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

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
    .line 3165
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherSchoolOrBuilder(I)Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;

    return-object v0
.end method

.method public getOtherSchoolOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    return-object v0
.end method

.method public getPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 2

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    return-object v0
.end method

.method public getProperty(I)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    .registers 3
    .parameter "index"

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    return-object v0
.end method

.method public getPropertyCount()I
    .registers 2

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

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
    .line 3330
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyOrBuilder(I)Lcom/google/wireless/contacts/proto/Profile$ProfilePropertyOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3344
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$ProfilePropertyOrBuilder;

    return-object v0
.end method

.method public getPropertyOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Profile$ProfilePropertyOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3475
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedSerializedSize:I

    .line 3476
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_e

    move v2, v1

    .line 3552
    .end local v1           #size:I
    .local v2, size:I
    :goto_d
    return v2

    .line 3478
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_e
    const/4 v1, 0x0

    .line 3479
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1e

    .line 3480
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3483
    :cond_1e
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2b

    .line 3484
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3487
    :cond_2b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_45

    .line 3488
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3487
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 3491
    :cond_45
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_52

    .line 3492
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3495
    :cond_52
    const/4 v0, 0x0

    :goto_53
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6c

    .line 3496
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3495
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 3499
    :cond_6c
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_7a

    .line 3500
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3503
    :cond_7a
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v8, :cond_88

    .line 3504
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3507
    :cond_88
    const/4 v0, 0x0

    :goto_89
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a1

    .line 3508
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3507
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 3511
    :cond_a1
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_b4

    .line 3512
    const/16 v3, 0x9

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLocationMapUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3515
    :cond_b4
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_c5

    .line 3516
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3519
    :cond_c5
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_d6

    .line 3520
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3523
    :cond_d6
    const/4 v0, 0x0

    :goto_d7
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f1

    .line 3524
    const/16 v4, 0xc

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3523
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    .line 3527
    :cond_f1
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_102

    .line 3528
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3531
    :cond_102
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_113

    .line 3532
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3535
    :cond_113
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_124

    .line 3536
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3539
    :cond_124
    const/4 v0, 0x0

    :goto_125
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_13d

    .line 3540
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3539
    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    .line 3543
    :cond_13d
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_14e

    .line 3544
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3547
    :cond_14e
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_15f

    .line 3548
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3551
    :cond_15f
    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedSerializedSize:I

    move v2, v1

    .line 3552
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_d
.end method

.method public getTagline()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public hasBio()Z
    .registers 3

    .prologue
    .line 3269
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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
    .line 3300
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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

.method public hasBraggingRights()Z
    .registers 3

    .prologue
    .line 3320
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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

.method public hasCoverPhotoInfo()Z
    .registers 3

    .prologue
    .line 3361
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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

.method public hasCurrentEmployer()Z
    .registers 3

    .prologue
    .line 3124
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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
    .line 3196
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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

.method public hasCurrentSchool()Z
    .registers 3

    .prologue
    .line 3155
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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

.method public hasFullName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3092
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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
    .line 3259
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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

.method public hasLocationMapUrl()Z
    .registers 3

    .prologue
    .line 3227
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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

.method public hasPlusPageInfo()Z
    .registers 3

    .prologue
    .line 3351
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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

.method public hasTagline()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3310
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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

.method public hasWhereIGrewUp()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3186
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3389
    iget-byte v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    .line 3390
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 3411
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 3390
    goto :goto_9

    .line 3392
    :cond_d
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasWhereIGrewUp()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3393
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_20

    .line 3394
    iput-byte v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 3398
    :cond_20
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentLocation()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 3399
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_33

    .line 3400
    iput-byte v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 3404
    :cond_33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherLocationCount()I

    move-result v4

    if-ge v0, v4, :cond_4a

    .line 3405
    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherLocation(I)Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_47

    .line 3406
    iput-byte v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 3404
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 3410
    :cond_4a
    iput-byte v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    move v3, v2

    .line 3411
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3069
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->newBuilderForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 3630
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3069
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->toBuilder()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2

    .prologue
    .line 3634
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

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
    .line 3559
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3416
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getSerializedSize()I

    .line 3417
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 3418
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3420
    :cond_17
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 3421
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3423
    :cond_22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 3424
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3423
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 3426
    :cond_3a
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_45

    .line 3427
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3429
    :cond_45
    const/4 v0, 0x0

    :goto_46
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 3430
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3429
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 3432
    :cond_5d
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_69

    .line 3433
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3435
    :cond_69
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_75

    .line 3436
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3438
    :cond_75
    const/4 v0, 0x0

    :goto_76
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8c

    .line 3439
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3438
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 3441
    :cond_8c
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9d

    .line 3442
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLocationMapUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3444
    :cond_9d
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_ac

    .line 3445
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3447
    :cond_ac
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_bb

    .line 3448
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3450
    :cond_bb
    const/4 v0, 0x0

    :goto_bc
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d4

    .line 3451
    const/16 v2, 0xc

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3450
    add-int/lit8 v0, v0, 0x1

    goto :goto_bc

    .line 3453
    :cond_d4
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_e3

    .line 3454
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3456
    :cond_e3
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_f2

    .line 3457
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3459
    :cond_f2
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_101

    .line 3460
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3462
    :cond_101
    const/4 v0, 0x0

    :goto_102
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_118

    .line 3463
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3462
    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    .line 3465
    :cond_118
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_127

    .line 3466
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3468
    :cond_127
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_136

    .line 3469
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->coverPhotoInfo_:Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3471
    :cond_136
    return-void
.end method
