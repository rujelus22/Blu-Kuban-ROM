.class public final Lcom/google/api/services/plusi/model/SearchContext;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "SearchContext.java"


# instance fields
.field public location:Lcom/google/api/services/plusi/model/LocationData;

.field public param:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/SearchContextParam;",
            ">;"
        }
    .end annotation
.end field

.field public whatChip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ChipData;",
            ">;"
        }
    .end annotation
.end field

.field public whatQuery:Ljava/lang/String;

.field public whereChip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ChipData;",
            ">;"
        }
    .end annotation
.end field

.field public whereQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/SearchContextParam;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    const-class v0, Lcom/google/api/services/plusi/model/ChipData;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    const-class v0, Lcom/google/api/services/plusi/model/ChipData;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
