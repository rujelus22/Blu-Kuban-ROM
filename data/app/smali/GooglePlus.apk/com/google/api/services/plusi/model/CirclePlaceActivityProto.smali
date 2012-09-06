.class public final Lcom/google/api/services/plusi/model/CirclePlaceActivityProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "CirclePlaceActivityProto.java"


# instance fields
.field public activity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;",
            ">;"
        }
    .end annotation
.end field

.field public checkedInUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/AuthorProto;",
            ">;"
        }
    .end annotation
.end field

.field public reviewTemplate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/GoogleReviewProto;",
            ">;"
        }
    .end annotation
.end field

.field public reviewedUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/AuthorProto;",
            ">;"
        }
    .end annotation
.end field

.field public totalCheckins:Ljava/lang/Integer;

.field public totalMedia:Ljava/lang/Integer;

.field public totalReviews:Ljava/lang/Integer;

.field public wishlistedUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/AuthorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/AuthorProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    const-class v0, Lcom/google/api/services/plusi/model/AuthorProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    const-class v0, Lcom/google/api/services/plusi/model/AuthorProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    const-class v0, Lcom/google/api/services/plusi/model/PlaceActivityStreamEntryProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    const-class v0, Lcom/google/api/services/plusi/model/GoogleReviewProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
