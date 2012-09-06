.class public Lcom/google/android/apps/plus/api/AudienceData;
.super Ljava/lang/Object;
.source "AudienceData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/api/AudienceData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private final mDescription:Ljava/lang/String;

.field private final mHiddenCountText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/apps/plus/api/AudienceData$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/api/AudienceData$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/api/AudienceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .parameter "parcel"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 43
    .local v2, audienceLength:I
    new-array v1, v2, [B

    .line 44
    .local v1, audienceBytes:[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 47
    :try_start_c
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :try_end_f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_f} :catch_1f

    move-result-object v0

    .line 52
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :goto_10
    iput-object v0, p0, Lcom/google/android/apps/plus/api/AudienceData;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/api/AudienceData;->mDescription:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/api/AudienceData;->mHiddenCountText:Ljava/lang/String;

    .line 55
    return-void

    .line 48
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :catch_1f
    move-exception v3

    .line 49
    .local v3, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .restart local v0       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    goto :goto_10
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/api/AudienceData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/api/AudienceData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "audience"
    .parameter "description"
    .parameter "hiddenCountText"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/plus/api/AudienceData;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/plus/api/AudienceData;->mDescription:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/google/android/apps/plus/api/AudienceData;->mHiddenCountText:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/api/AudienceData;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/api/AudienceData;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHiddenCountText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/api/AudienceData;->mHiddenCountText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/google/android/apps/plus/api/AudienceData;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v0

    .line 92
    .local v0, audienceBytes:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/plus/api/AudienceData;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/plus/api/AudienceData;->mHiddenCountText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return-void
.end method
