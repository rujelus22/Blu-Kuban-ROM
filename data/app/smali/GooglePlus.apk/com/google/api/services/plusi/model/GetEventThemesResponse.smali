.class public final Lcom/google/api/services/plusi/model/GetEventThemesResponse;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "GetEventThemesResponse.java"


# instance fields
.field public backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

.field public themes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Theme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/google/api/services/plusi/model/Theme;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
