.class public final Lcom/google/api/services/plusi/model/SyncMobileContactsResponse;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "SyncMobileContactsResponse.java"


# instance fields
.field public aggregationSyncRequired:Ljava/lang/Boolean;

.field public backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

.field public failedContact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataCircleMemberId;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleMemberId;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
