.class public final Lcom/google/wireless/contacts/proto/Contact$MobileContact;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileContact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;,
        Lcom/google/wireless/contacts/proto/Contact$MobileContact$ATTRIBUTES;,
        Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3970
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 3971
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->initFields()V

    .line 3972
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1777
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2380
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->memoizedIsInitialized:B

    .line 2460
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->memoizedSerializedSize:I

    .line 1778
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;-><init>(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1779
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2380
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->memoizedIsInitialized:B

    .line 2460
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->memoizedSerializedSize:I

    .line 1779
    return-void
.end method

.method static synthetic access$2702(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->preferredEmail_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->photoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phonesLookup_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->groups_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->publicUserName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/wireless/contacts/proto/Contact$MobileContact;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->lastUpdatedTime_:J

    return-wide p1
.end method

.method static synthetic access$3902(Lcom/google/wireless/contacts/proto/Contact$MobileContact;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->affinity_:I

    return p1
.end method

.method static synthetic access$4002(Lcom/google/wireless/contacts/proto/Contact$MobileContact;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->callAffinity_:I

    return p1
.end method

.method static synthetic access$4102(Lcom/google/wireless/contacts/proto/Contact$MobileContact;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->attributes_:I

    return p1
.end method

.method static synthetic access$4202(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->iAmFollowing_:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->isFollowingMe_:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->inMyContacts_:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->packedCircleIds_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->tagLine_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/wireless/contacts/proto/Contact$MobileContact;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1772
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 1

    .prologue
    .line 1783
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1950
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->displayName_:Ljava/lang/Object;

    .line 1951
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1952
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1954
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->displayName_:Ljava/lang/Object;

    .line 1957
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

.method private getGroupsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2141
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->groups_:Ljava/lang/Object;

    .line 2142
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2143
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2145
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->groups_:Ljava/lang/Object;

    .line 2148
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

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1918
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->id_:Ljava/lang/Object;

    .line 1919
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1920
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1922
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->id_:Ljava/lang/Object;

    .line 1925
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

.method private getPackedCircleIdsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2303
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->packedCircleIds_:Ljava/lang/Object;

    .line 2304
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2305
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2307
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->packedCircleIds_:Ljava/lang/Object;

    .line 2310
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

.method private getPhonesLookupBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2088
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phonesLookup_:Ljava/lang/Object;

    .line 2089
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2090
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2092
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phonesLookup_:Ljava/lang/Object;

    .line 2095
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

.method private getPhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2035
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->photoUrl_:Ljava/lang/Object;

    .line 2036
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2037
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2039
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->photoUrl_:Ljava/lang/Object;

    .line 2042
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

.method private getPreferredEmailBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2003
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->preferredEmail_:Ljava/lang/Object;

    .line 2004
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2005
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2007
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->preferredEmail_:Ljava/lang/Object;

    .line 2010
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

.method private getPublicUserNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2187
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->publicUserName_:Ljava/lang/Object;

    .line 2188
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2189
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2191
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->publicUserName_:Ljava/lang/Object;

    .line 2194
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

.method private getTagLineBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2345
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->tagLine_:Ljava/lang/Object;

    .line 2346
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2347
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2349
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->tagLine_:Ljava/lang/Object;

    .line 2352
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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->id_:Ljava/lang/Object;

    .line 2358
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->displayName_:Ljava/lang/Object;

    .line 2359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    .line 2360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->preferredEmail_:Ljava/lang/Object;

    .line 2361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->photoUrl_:Ljava/lang/Object;

    .line 2362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    .line 2363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phonesLookup_:Ljava/lang/Object;

    .line 2364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    .line 2365
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->groups_:Ljava/lang/Object;

    .line 2366
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

    .line 2367
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->publicUserName_:Ljava/lang/Object;

    .line 2368
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->lastUpdatedTime_:J

    .line 2369
    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->affinity_:I

    .line 2370
    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->callAffinity_:I

    .line 2371
    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->attributes_:I

    .line 2372
    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->iAmFollowing_:Z

    .line 2373
    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->isFollowingMe_:Z

    .line 2374
    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->inMyContacts_:Z

    .line 2375
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

    .line 2376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->packedCircleIds_:Ljava/lang/Object;

    .line 2377
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    .line 2378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->tagLine_:Ljava/lang/Object;

    .line 2379
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 1

    .prologue
    .line 2642
    #calls: Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->access$2500()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2645
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2589
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    #calls: Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->access$2400(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress(I)Lcom/google/wireless/contacts/proto/Contact$Address;
    .registers 3
    .parameter "index"

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Address;

    return-object v0
.end method

.method public getAddressCount()I
    .registers 2

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

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
    .line 2103
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    return-object v0
.end method

.method public getAddressOrBuilder(I)Lcom/google/wireless/contacts/proto/Contact$AddressOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$AddressOrBuilder;

    return-object v0
.end method

.method public getAddressOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$AddressOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    return-object v0
.end method

.method public getAffinity()I
    .registers 2

    .prologue
    .line 2215
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->affinity_:I

    return v0
.end method

.method public getAttributes()I
    .registers 2

    .prologue
    .line 2235
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->attributes_:I

    return v0
.end method

.method public getCallAffinity()I
    .registers 2

    .prologue
    .line 2225
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->callAffinity_:I

    return v0
.end method

.method public getCircleId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCircleIdCount()I
    .registers 2

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

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
    .line 2273
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2

    .prologue
    .line 1787
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1936
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->displayName_:Ljava/lang/Object;

    .line 1937
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1938
    check-cast v1, Ljava/lang/String;

    .line 1946
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1940
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1942
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1943
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1944
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->displayName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1946
    goto :goto_8
.end method

.method public getEmail(I)Lcom/google/wireless/contacts/proto/Contact$Email;
    .registers 3
    .parameter "index"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Email;

    return-object v0
.end method

.method public getEmailCount()I
    .registers 2

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

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
    .line 1965
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    return-object v0
.end method

.method public getEmailOrBuilder(I)Lcom/google/wireless/contacts/proto/Contact$EmailOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$EmailOrBuilder;

    return-object v0
.end method

.method public getEmailOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$EmailOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    return-object v0
.end method

.method public getGroups()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2127
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->groups_:Ljava/lang/Object;

    .line 2128
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2129
    check-cast v1, Ljava/lang/String;

    .line 2137
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2131
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2133
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2134
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2135
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->groups_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2137
    goto :goto_8
.end method

.method public getIAmFollowing()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2245
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->iAmFollowing_:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1904
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->id_:Ljava/lang/Object;

    .line 1905
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1906
    check-cast v1, Ljava/lang/String;

    .line 1914
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1908
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1910
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1911
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1912
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1914
    goto :goto_8
.end method

.method public getInMyContacts()Z
    .registers 2

    .prologue
    .line 2265
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->inMyContacts_:Z

    return v0
.end method

.method public getIsFollowingMe()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2255
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->isFollowingMe_:Z

    return v0
.end method

.method public getLastUpdatedTime()J
    .registers 3

    .prologue
    .line 2205
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->lastUpdatedTime_:J

    return-wide v0
.end method

.method public getOtherId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOtherIdCount()I
    .registers 2

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

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
    .line 2157
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getPackedCircleIds()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2289
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->packedCircleIds_:Ljava/lang/Object;

    .line 2290
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2291
    check-cast v1, Ljava/lang/String;

    .line 2299
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2293
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2295
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2296
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2297
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->packedCircleIds_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2299
    goto :goto_8
.end method

.method public getPhone(I)Lcom/google/wireless/contacts/proto/Contact$Phone;
    .registers 3
    .parameter "index"

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Phone;

    return-object v0
.end method

.method public getPhoneCount()I
    .registers 2

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

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
    .line 2050
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneOrBuilder(I)Lcom/google/wireless/contacts/proto/Contact$PhoneOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$PhoneOrBuilder;

    return-object v0
.end method

.method public getPhoneOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$PhoneOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    return-object v0
.end method

.method public getPhonesLookup()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2074
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phonesLookup_:Ljava/lang/Object;

    .line 2075
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2076
    check-cast v1, Ljava/lang/String;

    .line 2084
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2078
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2080
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2081
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2082
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phonesLookup_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2084
    goto :goto_8
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2021
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->photoUrl_:Ljava/lang/Object;

    .line 2022
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2023
    check-cast v1, Ljava/lang/String;

    .line 2031
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2025
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2027
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2028
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2029
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->photoUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2031
    goto :goto_8
.end method

.method public getPreferredEmail()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1989
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->preferredEmail_:Ljava/lang/Object;

    .line 1990
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1991
    check-cast v1, Ljava/lang/String;

    .line 1999
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1993
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1995
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1996
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1997
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->preferredEmail_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1999
    goto :goto_8
.end method

.method public getProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    .registers 2

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    return-object v0
.end method

.method public getPublicUserName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2173
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->publicUserName_:Ljava/lang/Object;

    .line 2174
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2175
    check-cast v1, Ljava/lang/String;

    .line 2183
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2177
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2179
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2180
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2181
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->publicUserName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2183
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 11

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2462
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->memoizedSerializedSize:I

    .line 2463
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_e

    move v3, v2

    .line 2565
    .end local v2           #size:I
    .local v3, size:I
    :goto_d
    return v3

    .line 2465
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_e
    const/4 v2, 0x0

    .line 2466
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1e

    .line 2467
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2470
    :cond_1e
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2d

    .line 2471
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2474
    :cond_2d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_47

    .line 2475
    const/4 v5, 0x3

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2474
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 2478
    :cond_47
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_56

    .line 2479
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPreferredEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2482
    :cond_56
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_66

    .line 2483
    const/4 v4, 0x5

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2486
    :cond_66
    const/4 v1, 0x0

    :goto_67
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_80

    .line 2487
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2486
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 2490
    :cond_80
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v9, :cond_90

    .line 2491
    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhonesLookupBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2494
    :cond_90
    const/4 v1, 0x0

    :goto_91
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_a9

    .line 2495
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2494
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 2498
    :cond_a9
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_bc

    .line 2499
    const/16 v4, 0x9

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getGroupsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2503
    :cond_bc
    const/4 v0, 0x0

    .line 2504
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_be
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_d4

    .line 2505
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2504
    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    .line 2508
    :cond_d4
    add-int/2addr v2, v0

    .line 2509
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getOtherIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2511
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_f3

    .line 2512
    const/16 v4, 0xb

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPublicUserNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2515
    :cond_f3
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_104

    .line 2516
    const/16 v4, 0xc

    iget-wide v5, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->lastUpdatedTime_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2519
    :cond_104
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_115

    .line 2520
    const/16 v4, 0xd

    iget v5, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->affinity_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2523
    :cond_115
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_126

    .line 2524
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->callAffinity_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2527
    :cond_126
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_137

    .line 2528
    const/16 v4, 0xf

    iget v5, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->attributes_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2531
    :cond_137
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_146

    .line 2532
    iget-boolean v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->iAmFollowing_:Z

    invoke-static {v9, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2535
    :cond_146
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_157

    .line 2536
    const/16 v4, 0x11

    iget-boolean v5, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->isFollowingMe_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2539
    :cond_157
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_168

    .line 2540
    const/16 v4, 0x12

    iget-boolean v5, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->inMyContacts_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2544
    :cond_168
    const/4 v0, 0x0

    .line 2545
    const/4 v1, 0x0

    :goto_16a
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_180

    .line 2546
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2545
    add-int/lit8 v1, v1, 0x1

    goto :goto_16a

    .line 2549
    :cond_180
    add-int/2addr v2, v0

    .line 2550
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 2552
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_19f

    .line 2553
    const/16 v4, 0x14

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPackedCircleIdsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2556
    :cond_19f
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const v5, 0x8000

    if-ne v4, v5, :cond_1b7

    .line 2557
    const/16 v4, 0x15

    iget-object v5, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2560
    :cond_1b7
    iget v4, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_1cb

    .line 2561
    const/16 v4, 0x16

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getTagLineBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2564
    :cond_1cb
    iput v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->memoizedSerializedSize:I

    move v3, v2

    .line 2565
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_d
.end method

.method public getTagLine()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2331
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->tagLine_:Ljava/lang/Object;

    .line 2332
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2333
    check-cast v1, Ljava/lang/String;

    .line 2341
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2335
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2337
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2338
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2339
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->tagLine_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2341
    goto :goto_8
.end method

.method public hasAffinity()Z
    .registers 3

    .prologue
    .line 2212
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasAttributes()Z
    .registers 3

    .prologue
    .line 2232
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasCallAffinity()Z
    .registers 3

    .prologue
    .line 2222
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 1933
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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
    .line 2124
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasIAmFollowing()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2242
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1901
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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
    .line 2262
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasIsFollowingMe()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2252
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasLastUpdatedTime()Z
    .registers 3

    .prologue
    .line 2202
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasPackedCircleIds()Z
    .registers 3

    .prologue
    .line 2286
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasPhonesLookup()Z
    .registers 3

    .prologue
    .line 2071
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasPhotoUrl()Z
    .registers 3

    .prologue
    .line 2018
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasPreferredEmail()Z
    .registers 3

    .prologue
    .line 1986
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasProfileType()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 2318
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPublicUserName()Z
    .registers 3

    .prologue
    .line 2170
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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

.method public hasTagLine()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 2328
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2382
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->memoizedIsInitialized:B

    .line 2383
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2386
    :goto_8
    return v1

    .line 2383
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2385
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2572
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

    .line 2391
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getSerializedSize()I

    .line 2392
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 2393
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2395
    :cond_17
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 2396
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2398
    :cond_24
    const/4 v0, 0x0

    .local v0, i:I
    :goto_25
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 2399
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->email_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2398
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 2401
    :cond_3c
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_49

    .line 2402
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPreferredEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2404
    :cond_49
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_57

    .line 2405
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2407
    :cond_57
    const/4 v0, 0x0

    :goto_58
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6f

    .line 2408
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->phone_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2407
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 2410
    :cond_6f
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_7d

    .line 2411
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhonesLookupBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2413
    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_94

    .line 2414
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->address_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2413
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 2416
    :cond_94
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_a5

    .line 2417
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getGroupsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2419
    :cond_a5
    const/4 v0, 0x0

    :goto_a6
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_bc

    .line 2420
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->otherId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2419
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 2422
    :cond_bc
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_cd

    .line 2423
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPublicUserNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2425
    :cond_cd
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_dc

    .line 2426
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->lastUpdatedTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2428
    :cond_dc
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_eb

    .line 2429
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->affinity_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2431
    :cond_eb
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_fa

    .line 2432
    const/16 v1, 0xe

    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->callAffinity_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2434
    :cond_fa
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_109

    .line 2435
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->attributes_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2437
    :cond_109
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_116

    .line 2438
    iget-boolean v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->iAmFollowing_:Z

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2440
    :cond_116
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_125

    .line 2441
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->isFollowingMe_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2443
    :cond_125
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_134

    .line 2444
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->inMyContacts_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2446
    :cond_134
    const/4 v0, 0x0

    :goto_135
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14b

    .line 2447
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->circleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2446
    add-int/lit8 v0, v0, 0x1

    goto :goto_135

    .line 2449
    :cond_14b
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_15c

    .line 2450
    const/16 v1, 0x14

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPackedCircleIdsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2452
    :cond_15c
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_172

    .line 2453
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->profileType_:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2455
    :cond_172
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_184

    .line 2456
    const/16 v1, 0x16

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getTagLineBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2458
    :cond_184
    return-void
.end method
