.class public final Lcom/google/api/services/plusi/model/LoadPeopleRequest;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "LoadPeopleRequest.java"


# instance fields
.field public circleMemberId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataCircleMemberId;",
            ">;"
        }
    .end annotation
.end field

.field public commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

.field public enableTracing:Ljava/lang/Boolean;

.field public includeIsFollowing:Ljava/lang/Boolean;

.field public includeMemberships:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleMemberId;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
