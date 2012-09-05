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
    .line 4558
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 4559
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->initFields()V

    .line 4560
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2636
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2938
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    .line 3021
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedSerializedSize:I

    .line 2637
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;-><init>(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2938
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    .line 3021
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedSerializedSize:I

    .line 2638
    return-void
.end method

.method static synthetic access$4002(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$Gender;)Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Common$StringField;)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 1

    .prologue
    .line 2642
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    return-object v0
.end method

.method private getFullNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2671
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    .line 2672
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2673
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2675
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    .line 2678
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
    .line 2806
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    .line 2807
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2808
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2810
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    .line 2813
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
    .line 2920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    .line 2921
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 2922
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    .line 2923
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 2924
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    .line 2925
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 2926
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    .line 2927
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    .line 2928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    .line 2929
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Gender;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    .line 2930
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 2931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    .line 2932
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 2933
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 2934
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$StringField;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$StringField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    .line 2935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    .line 2936
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    .line 2937
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 1

    .prologue
    .line 3173
    #calls: Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->access$3800()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3176
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3120
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    #calls: Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->access$3700(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBio()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getBraggingRights()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2

    .prologue
    .line 2646
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2657
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    .line 2658
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2659
    check-cast v1, Ljava/lang/String;

    .line 2667
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2661
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2663
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2664
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2665
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->fullName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2667
    goto :goto_8
.end method

.method public getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;
    .registers 2

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    return-object v0
.end method

.method public getLink(I)Lcom/google/wireless/contacts/proto/Profile$Link;
    .registers 3
    .parameter "index"

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Link;

    return-object v0
.end method

.method public getLinkCount()I
    .registers 2

    .prologue
    .line 2848
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
    .line 2841
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    return-object v0
.end method

.method public getLinkOrBuilder(I)Lcom/google/wireless/contacts/proto/Profile$LinkOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2855
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
    .line 2845
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    return-object v0
.end method

.method public getLocationMapUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2792
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    .line 2793
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2794
    check-cast v1, Ljava/lang/String;

    .line 2802
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2796
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2798
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2799
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2800
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->locationMapUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2802
    goto :goto_8
.end method

.method public getOtherEmployer(I)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 3
    .parameter "index"

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getOtherEmployerCount()I
    .registers 2

    .prologue
    .line 2703
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
    .line 2696
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherEmployerOrBuilder(I)Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2710
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
    .line 2700
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherLocation(I)Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 3
    .parameter "index"

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public getOtherLocationCount()I
    .registers 2

    .prologue
    .line 2775
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
    .line 2768
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherLocationOrBuilder(I)Lcom/google/wireless/contacts/proto/Profile$LocationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2782
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
    .line 2772
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherSchool(I)Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 3
    .parameter "index"

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getOtherSchoolCount()I
    .registers 2

    .prologue
    .line 2734
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
    .line 2727
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    return-object v0
.end method

.method public getOtherSchoolOrBuilder(I)Lcom/google/wireless/contacts/proto/Common$StringFieldOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2741
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
    .line 2731
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    return-object v0
.end method

.method public getPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
    .registers 2

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    return-object v0
.end method

.method public getProperty(I)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
    .registers 3
    .parameter "index"

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    return-object v0
.end method

.method public getPropertyCount()I
    .registers 2

    .prologue
    .line 2899
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
    .line 2892
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyOrBuilder(I)Lcom/google/wireless/contacts/proto/Profile$ProfilePropertyOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2906
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
    .line 2896
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

    .line 3023
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedSerializedSize:I

    .line 3024
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_e

    move v2, v1

    .line 3096
    .end local v1           #size:I
    .local v2, size:I
    :goto_d
    return v2

    .line 3026
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_e
    const/4 v1, 0x0

    .line 3027
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1e

    .line 3028
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3031
    :cond_1e
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2b

    .line 3032
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3035
    :cond_2b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_45

    .line 3036
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3035
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 3039
    :cond_45
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_52

    .line 3040
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3043
    :cond_52
    const/4 v0, 0x0

    :goto_53
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6c

    .line 3044
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3043
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 3047
    :cond_6c
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_7a

    .line 3048
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3051
    :cond_7a
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v8, :cond_88

    .line 3052
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3055
    :cond_88
    const/4 v0, 0x0

    :goto_89
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a1

    .line 3056
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3055
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 3059
    :cond_a1
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_b4

    .line 3060
    const/16 v3, 0x9

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLocationMapUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3063
    :cond_b4
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_c5

    .line 3064
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3067
    :cond_c5
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_d6

    .line 3068
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3071
    :cond_d6
    const/4 v0, 0x0

    :goto_d7
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f1

    .line 3072
    const/16 v4, 0xc

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3071
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    .line 3075
    :cond_f1
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_102

    .line 3076
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3079
    :cond_102
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_113

    .line 3080
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3083
    :cond_113
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_124

    .line 3084
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3087
    :cond_124
    const/4 v0, 0x0

    :goto_125
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_13d

    .line 3088
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3087
    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    .line 3091
    :cond_13d
    iget v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_14e

    .line 3092
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3095
    :cond_14e
    iput v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedSerializedSize:I

    move v2, v1

    .line 3096
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_d
.end method

.method public getTagline()Lcom/google/wireless/contacts/proto/Common$StringField;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    return-object v0
.end method

.method public getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    return-object v0
.end method

.method public hasBio()Z
    .registers 3

    .prologue
    .line 2831
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
    .line 2862
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
    .line 2882
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

.method public hasCurrentEmployer()Z
    .registers 3

    .prologue
    .line 2686
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
    .line 2758
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
    .line 2717
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

    .line 2654
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
    .line 2821
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
    .line 2789
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
    .line 2913
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
    .line 2872
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
    .line 2748
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

    .line 2940
    iget-byte v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    .line 2941
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 2962
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 2941
    goto :goto_9

    .line 2943
    :cond_d
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasWhereIGrewUp()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2944
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_20

    .line 2945
    iput-byte v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 2949
    :cond_20
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->hasCurrentLocation()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2950
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_33

    .line 2951
    iput-byte v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 2955
    :cond_33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherLocationCount()I

    move-result v4

    if-ge v0, v4, :cond_4a

    .line 2956
    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getOtherLocation(I)Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_47

    .line 2957
    iput-byte v3, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    goto :goto_a

    .line 2955
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 2961
    :cond_4a
    iput-byte v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->memoizedIsInitialized:B

    move v3, v2

    .line 2962
    goto :goto_a
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3103
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

    .line 2967
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getSerializedSize()I

    .line 2968
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 2969
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2971
    :cond_17
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 2972
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentEmployer_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2974
    :cond_22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 2975
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherEmployer_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2974
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2977
    :cond_3a
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_45

    .line 2978
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentSchool_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2980
    :cond_45
    const/4 v0, 0x0

    :goto_46
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 2981
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherSchool_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2980
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 2983
    :cond_5d
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_69

    .line 2984
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->whereIGrewUp_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2986
    :cond_69
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_75

    .line 2987
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->currentLocation_:Lcom/google/wireless/contacts/proto/Profile$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2989
    :cond_75
    const/4 v0, 0x0

    :goto_76
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8c

    .line 2990
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->otherLocation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2989
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 2992
    :cond_8c
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9d

    .line 2993
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getLocationMapUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2995
    :cond_9d
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_ac

    .line 2996
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->gender_:Lcom/google/wireless/contacts/proto/Profile$Gender;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2998
    :cond_ac
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_bb

    .line 2999
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bio_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3001
    :cond_bb
    const/4 v0, 0x0

    :goto_bc
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d4

    .line 3002
    const/16 v2, 0xc

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->link_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3001
    add-int/lit8 v0, v0, 0x1

    goto :goto_bc

    .line 3004
    :cond_d4
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_e3

    .line 3005
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->birthday_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3007
    :cond_e3
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_f2

    .line 3008
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->tagline_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3010
    :cond_f2
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_101

    .line 3011
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->braggingRights_:Lcom/google/wireless/contacts/proto/Common$StringField;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3013
    :cond_101
    const/4 v0, 0x0

    :goto_102
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_118

    .line 3014
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->property_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3013
    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    .line 3016
    :cond_118
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_127

    .line 3017
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->plusPageInfo_:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3019
    :cond_127
    return-void
.end method
