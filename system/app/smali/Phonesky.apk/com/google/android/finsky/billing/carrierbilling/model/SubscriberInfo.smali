.class public Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
.super Ljava/lang/Object;
.source "SubscriberInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress1:Ljava/lang/String;

.field private final mAddress2:Ljava/lang/String;

.field private final mCity:Ljava/lang/String;

.field private final mCountry:Ljava/lang/String;

.field private final mIdentifier:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 208
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$000(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    .line 109
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->identifier:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$100(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    .line 110
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address1:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$200(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    .line 111
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->address2:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$300(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    .line 112
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->city:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$400(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    .line 113
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->state:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$500(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    .line 114
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->postalCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$600(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    .line 115
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->country:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->access$700(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;)V

    return-void
.end method

.method public static fromObfuscatedString(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .registers 9
    .parameter "obfuscated"

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;-><init>()V

    .line 84
    .local v0, builder:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->switchChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, ","

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, csvValues:[Ljava/lang/String;
    array-length v3, v1

    if-eq v3, v5, :cond_3c

    .line 88
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubscriberInfo could not be parsed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_3c
    const/4 v3, 0x0

    :try_start_3d
    aget-object v3, v1, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v1, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v1, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v1, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v1, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v1, v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    :try_end_a3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_a3} :catch_a8

    .line 104
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    :goto_a7
    return-object v3

    .line 100
    :catch_a8
    move-exception v2

    .line 101
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v3, "UTF-8 not supported: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v3, 0x0

    goto :goto_a7
.end method

.method private static switchChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "s"

    .prologue
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_f
    if-ge v2, v3, :cond_58

    aget-char v1, v0, v2

    .line 38
    .local v1, c:C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_1b

    const/16 v5, 0x6d

    if-le v1, v5, :cond_23

    :cond_1b
    const/16 v5, 0x41

    if-lt v1, v5, :cond_2c

    const/16 v5, 0x4d

    if-gt v1, v5, :cond_2c

    .line 39
    :cond_23
    add-int/lit8 v5, v1, 0xd

    int-to-char v1, v5

    .line 47
    :cond_26
    :goto_26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 40
    :cond_2c
    const/16 v5, 0x6e

    if-lt v1, v5, :cond_34

    const/16 v5, 0x7a

    if-le v1, v5, :cond_3c

    :cond_34
    const/16 v5, 0x4e

    if-lt v1, v5, :cond_40

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_40

    .line 41
    :cond_3c
    add-int/lit8 v5, v1, -0xd

    int-to-char v1, v5

    goto :goto_26

    .line 42
    :cond_40
    const/16 v5, 0x30

    if-lt v1, v5, :cond_4c

    const/16 v5, 0x34

    if-gt v1, v5, :cond_4c

    .line 43
    add-int/lit8 v5, v1, 0x5

    int-to-char v1, v5

    goto :goto_26

    .line 44
    :cond_4c
    const/16 v5, 0x35

    if-lt v1, v5, :cond_26

    const/16 v5, 0x39

    if-gt v1, v5, :cond_26

    .line 45
    add-int/lit8 v5, v1, -0x5

    int-to-char v1, v5

    goto :goto_26

    .line 49
    .end local v1           #c:C
    :cond_58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    if-ne p0, p1, :cond_5

    .line 175
    :cond_4
    :goto_4
    return v1

    .line 170
    :cond_5
    instance-of v3, p1, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-nez v3, :cond_b

    move v1, v2

    .line 171
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 174
    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 175
    .local v0, that:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_5e
    move v1, v2

    goto :goto_4
.end method

.method public getAddress1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 187
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toObfuscatedString()Ljava/lang/String;
    .registers 14

    .prologue
    .line 56
    :try_start_0
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    if-nez v10, :cond_96

    const-string v6, ""

    .line 57
    .local v6, safeName:Ljava/lang/String;
    :goto_6
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    if-nez v10, :cond_a0

    const-string v5, ""

    .line 58
    .local v5, safeIdentifier:Ljava/lang/String;
    :goto_c
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    if-nez v10, :cond_aa

    const-string v1, ""

    .line 59
    .local v1, safeAddress1:Ljava/lang/String;
    :goto_12
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    if-nez v10, :cond_b4

    const-string v2, ""

    .line 60
    .local v2, safeAddress2:Ljava/lang/String;
    :goto_18
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    if-nez v10, :cond_be

    const-string v3, ""

    .line 61
    .local v3, safeCity:Ljava/lang/String;
    :goto_1e
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    if-nez v10, :cond_c8

    const-string v8, ""

    .line 62
    .local v8, safeState:Ljava/lang/String;
    :goto_24
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    if-nez v10, :cond_d2

    const-string v7, ""

    .line 63
    .local v7, safePostalCode:Ljava/lang/String;
    :goto_2a
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    if-nez v10, :cond_dc

    const-string v4, ""
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_30} :catch_e6

    .line 68
    .local v4, safeCountry:Ljava/lang/String;
    :goto_30
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, csvValues:Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-static {v10}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->switchChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 56
    .end local v0           #csvValues:Ljava/lang/String;
    .end local v1           #safeAddress1:Ljava/lang/String;
    .end local v2           #safeAddress2:Ljava/lang/String;
    .end local v3           #safeCity:Ljava/lang/String;
    .end local v4           #safeCountry:Ljava/lang/String;
    .end local v5           #safeIdentifier:Ljava/lang/String;
    .end local v6           #safeName:Ljava/lang/String;
    .end local v7           #safePostalCode:Ljava/lang/String;
    .end local v8           #safeState:Ljava/lang/String;
    :cond_96
    :try_start_96
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6

    .line 57
    .restart local v6       #safeName:Ljava/lang/String;
    :cond_a0
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_c

    .line 58
    .restart local v5       #safeIdentifier:Ljava/lang/String;
    :cond_aa
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_12

    .line 59
    .restart local v1       #safeAddress1:Ljava/lang/String;
    :cond_b4
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_18

    .line 60
    .restart local v2       #safeAddress2:Ljava/lang/String;
    :cond_be
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1e

    .line 61
    .restart local v3       #safeCity:Ljava/lang/String;
    :cond_c8
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_24

    .line 62
    .restart local v8       #safeState:Ljava/lang/String;
    :cond_d2
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2a

    .line 63
    .restart local v7       #safePostalCode:Ljava/lang/String;
    :cond_dc
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_96 .. :try_end_e3} :catch_e6

    move-result-object v4

    goto/16 :goto_30

    .line 64
    .end local v1           #safeAddress1:Ljava/lang/String;
    .end local v2           #safeAddress2:Ljava/lang/String;
    .end local v3           #safeCity:Ljava/lang/String;
    .end local v5           #safeIdentifier:Ljava/lang/String;
    .end local v6           #safeName:Ljava/lang/String;
    .end local v7           #safePostalCode:Ljava/lang/String;
    .end local v8           #safeState:Ljava/lang/String;
    :catch_e6
    move-exception v9

    .line 65
    .local v9, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "UTF-8 not supported"

    invoke-direct {v10, v11, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->toObfuscatedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    return-void
.end method
