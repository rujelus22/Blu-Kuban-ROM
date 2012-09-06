.class public final Lcom/google/api/services/plusi/model/EventsHomeResponse;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "EventsHomeResponse.java"


# instance fields
.field public backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

.field public declinedUpcoming:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;"
        }
    .end annotation
.end field

.field public deprecated1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;"
        }
    .end annotation
.end field

.field public past:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;"
        }
    .end annotation
.end field

.field public pastResumeToken:Ljava/lang/String;

.field public resolvedPerson:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EmbedsPerson;",
            ">;"
        }
    .end annotation
.end field

.field public upcoming:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    const-class v0, Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    const-class v0, Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    const-class v0, Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
