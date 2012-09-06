.class public final Lcom/google/api/services/plusi/model/ReviewsDataProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ReviewsDataProto.java"


# instance fields
.field public address:Ljava/lang/String;

.field public authorNickname:Ljava/lang/String;

.field public businessName:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public existingUserReview:Lcom/google/api/services/plusi/model/ReviewsDataProtoExistingUserReviewSection;

.field public gaiaNicknamePresent:Ljava/lang/Boolean;

.field public latitudeE6:Ljava/lang/Integer;

.field public longitudeE6:Ljava/lang/Integer;

.field public mapsAuthToken:Ljava/lang/String;

.field public phone1:Ljava/lang/String;

.field public phone2:Ljava/lang/String;

.field public reviewCount:Ljava/lang/Integer;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
