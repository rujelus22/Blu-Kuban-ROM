.class public final Lcom/google/api/services/plusi/model/DataPhoto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DataPhoto.java"


# instance fields
.field public album:Lcom/google/api/services/plusi/model/DataAlbum;

.field public caption:Ljava/lang/String;

.field public comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataComment;",
            ">;"
        }
    .end annotation
.end field

.field public copyrightViolation:Ljava/lang/Boolean;

.field public countryAwareTakenDown:Ljava/lang/Boolean;

.field public description:Ljava/lang/String;

.field public exifInfo:Lcom/google/api/services/plusi/model/DataExifInfo;

.field public fileSize:Ljava/lang/Long;

.field public geoInfo:Lcom/google/api/services/plusi/model/DataGeoInfo;

.field public geoLocation:Ljava/lang/String;

.field public histogram:Lcom/google/api/services/plusi/model/DataHistogram;

.field public id:Ljava/lang/String;

.field public isPanorama:Ljava/lang/Boolean;

.field public isYoutubeVideo:Ljava/lang/Boolean;

.field public original:Lcom/google/api/services/plusi/model/DataImage;

.field public owner:Lcom/google/api/services/plusi/model/DataUser;

.field public pageUrl:Ljava/lang/String;

.field public pixyFilter:Ljava/lang/String;

.field public plusEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;"
        }
    .end annotation
.end field

.field public plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;

.field public plusiPublic:Ljava/lang/Boolean;

.field public provider:Ljava/lang/String;

.field public reportAbuseToken:Ljava/lang/String;

.field public safeMobileUrl:Lcom/google/api/services/plusi/model/DataSafeMobileUrl;

.field public shape:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataShape;",
            ">;"
        }
    .end annotation
.end field

.field public softDeleteAppealStatus:Ljava/lang/String;

.field public softDeleted:Ljava/lang/Boolean;

.field public thumbnail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataImage;",
            ">;"
        }
    .end annotation
.end field

.field public timestampSeconds:Ljava/lang/Double;

.field public title:Ljava/lang/String;

.field public totalComments:Ljava/lang/Integer;

.field public totalLikes:Ljava/lang/Long;

.field public unfiltered:Lcom/google/api/services/plusi/model/DataImage;

.field public update:Lcom/google/api/services/plusi/model/Update;

.field public uploadTimestampSeconds:Ljava/lang/Double;

.field public video:Lcom/google/api/services/plusi/model/DataVideo;

.field public viewCount:Ljava/lang/Long;

.field public viewerCanComment:Ljava/lang/Boolean;

.field public viewerCanPlusOne:Ljava/lang/Boolean;

.field public viewerCanTag:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/DataComment;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    const-class v0, Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    const-class v0, Lcom/google/api/services/plusi/model/DataShape;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 317
    const-class v0, Lcom/google/api/services/plusi/model/DataImage;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
