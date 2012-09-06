.class public final Lcom/google/api/services/plusi/model/DeleteCircleRequest;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DeleteCircleRequest.java"


# instance fields
.field public circleId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataCircleId;",
            ">;"
        }
    .end annotation
.end field

.field public commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

.field public enableTracing:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleId;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
