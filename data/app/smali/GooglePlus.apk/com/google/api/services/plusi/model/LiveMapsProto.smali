.class public final Lcom/google/api/services/plusi/model/LiveMapsProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "LiveMapsProto.java"


# instance fields
.field public event:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/LiveMapsPPEvent;",
            ">;"
        }
    .end annotation
.end field

.field public moreEventsLink:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public provider:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlacePageLink;",
            ">;"
        }
    .end annotation
.end field

.field public title:Lcom/google/api/services/plusi/model/StoryTitle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/google/api/services/plusi/model/LiveMapsPPEvent;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    const-class v0, Lcom/google/api/services/plusi/model/PlacePageLink;

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
