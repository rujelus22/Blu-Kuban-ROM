.class public final Lcom/google/api/services/plusi/model/LoadCircleMembersResponse;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "LoadCircleMembersResponse.java"


# instance fields
.field public backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

.field public changesSinceMillis:Ljava/lang/Long;

.field public circleData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataCircleData;",
            ">;"
        }
    .end annotation
.end field

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

.field public continuationToken:Lcom/google/api/services/plusi/model/DataContinuationToken;

.field public totalPeople:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/google/api/services/plusi/model/DataCirclePerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleData;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
