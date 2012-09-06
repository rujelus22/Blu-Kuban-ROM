.class public final Lcom/google/api/services/plusi/model/EventReadRequest;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "EventReadRequest.java"


# instance fields
.field public authToken:Ljava/lang/String;

.field public commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

.field public contentFormat:Ljava/lang/String;

.field public enableTracing:Ljava/lang/Boolean;

.field public eventSelector:Lcom/google/api/services/plusi/model/EventSelector;

.field public invitationToken:Ljava/lang/String;

.field public pollingToken:Ljava/lang/String;

.field public readOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ReadOptions;",
            ">;"
        }
    .end annotation
.end field

.field public resumeToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-class v0, Lcom/google/api/services/plusi/model/ReadOptions;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
