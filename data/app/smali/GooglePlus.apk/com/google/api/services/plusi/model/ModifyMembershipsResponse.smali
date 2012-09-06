.class public final Lcom/google/api/services/plusi/model/ModifyMembershipsResponse;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ModifyMembershipsResponse.java"


# instance fields
.field public backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

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

.field public revertCookie:Lcom/google/api/services/plusi/model/DataRevertCookie;

.field public versionInfo:Ljava/lang/String;

.field public viewerCanSeeAdultContent:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/google/api/services/plusi/model/DataCirclePerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
