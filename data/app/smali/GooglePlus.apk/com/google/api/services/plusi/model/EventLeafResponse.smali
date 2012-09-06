.class public final Lcom/google/api/services/plusi/model/EventLeafResponse;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "EventLeafResponse.java"


# instance fields
.field public activityId:Ljava/lang/String;

.field public backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

.field public comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EventFrame;",
            ">;"
        }
    .end annotation
.end field

.field public photosData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ReadResponsePhotosData;",
            ">;"
        }
    .end annotation
.end field

.field public plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

.field public pollingToken:Ljava/lang/String;

.field public resumeToken:Ljava/lang/String;

.field public selectedCriteria:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public stream:Lcom/google/api/services/plusi/model/Stream;

.field public update:Lcom/google/api/services/plusi/model/Update;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-class v0, Lcom/google/api/services/plusi/model/Comment;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    const-class v0, Lcom/google/api/services/plusi/model/EventFrame;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    const-class v0, Lcom/google/api/services/plusi/model/ReadResponsePhotosData;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
