.class public final Lcom/google/api/services/plusi/model/Stream;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Stream.java"


# instance fields
.field public continuationToken:Ljava/lang/String;

.field public debugInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Debug;",
            ">;"
        }
    .end annotation
.end field

.field public mixerDebugInfo:Ljava/lang/String;

.field public params:Lcom/google/api/services/plusi/model/StreamParams;

.field public popularUpdates:Lcom/google/api/services/plusi/model/PopularUpdates;

.field public update:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Update;",
            ">;"
        }
    .end annotation
.end field

.field public volume:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/google/api/services/plusi/model/Debug;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    const-class v0, Lcom/google/api/services/plusi/model/Update;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
