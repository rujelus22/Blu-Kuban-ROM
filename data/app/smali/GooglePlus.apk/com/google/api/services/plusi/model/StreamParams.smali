.class public final Lcom/google/api/services/plusi/model/StreamParams;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "StreamParams.java"


# instance fields
.field public activitiesOldestTimestampUsec:Ljava/lang/Long;

.field public channelOrigin:Ljava/lang/String;

.field public collapserType:Ljava/lang/String;

.field public contentFormat:Ljava/lang/String;

.field public disableAbuseFiltering:Ljava/lang/Boolean;

.field public expandSharebox:Ljava/lang/Boolean;

.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/StreamParamsFilter;",
            ">;"
        }
    .end annotation
.end field

.field public focusGroupId:Ljava/lang/String;

.field public gaiaGroupOid:Ljava/lang/String;

.field public initialOperation:Ljava/lang/String;

.field public interest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Interest;",
            ">;"
        }
    .end annotation
.end field

.field public interestParams:Lcom/google/api/services/plusi/model/InterestParams;

.field public maxComments:Ljava/lang/Integer;

.field public maxNumUpdates:Ljava/lang/Integer;

.field public openSocialDomain:Ljava/lang/String;

.field public perspectiveUserId:Ljava/lang/String;

.field public productionParams:Lcom/google/api/services/plusi/model/ProductionStreamParams;

.field public productionStreamOid:Ljava/lang/String;

.field public searchQuery:Lcom/google/api/services/plusi/model/SearchQuery;

.field public sort:Ljava/lang/String;

.field public viewType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/google/api/services/plusi/model/Interest;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    const-class v0, Lcom/google/api/services/plusi/model/StreamParamsFilter;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
