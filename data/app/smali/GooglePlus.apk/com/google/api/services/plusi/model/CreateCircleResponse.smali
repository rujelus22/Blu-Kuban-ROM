.class public final Lcom/google/api/services/plusi/model/CreateCircleResponse;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "CreateCircleResponse.java"


# instance fields
.field public backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

.field public category:Ljava/lang/Integer;

.field public circleId:Lcom/google/api/services/plusi/model/DataCircleId;

.field public circlePerson:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataCirclePerson;",
            ">;"
        }
    .end annotation
.end field

.field public nameSortKey:Ljava/lang/String;

.field public revertCookie:Lcom/google/api/services/plusi/model/DataRevertCookie;

.field public versionInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-class v0, Lcom/google/api/services/plusi/model/DataCirclePerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
