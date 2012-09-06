.class public final Lcom/google/api/services/plusi/model/EventLandingResponse;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "EventLandingResponse.java"


# instance fields
.field public backendTrace:Lcom/google/api/services/plusi/model/TraceRecords;

.field public enableGalleryView:Ljava/lang/Boolean;

.field public featuredPhoto:Lcom/google/api/services/plusi/model/DataPhoto;

.field public frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/CoalescedFrame;",
            ">;"
        }
    .end annotation
.end field

.field public photoCollection:Lcom/google/api/services/plusi/model/PhotoCollection;

.field public plusEvent:Lcom/google/api/services/plusi/model/PlusEvent;

.field public pollingToken:Ljava/lang/String;

.field public resolvedCreator:Lcom/google/api/services/plusi/model/EmbedsPerson;

.field public state:Ljava/lang/String;

.field public update:Lcom/google/api/services/plusi/model/Update;

.field public viewerEventAlbumIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    const-class v0, Lcom/google/api/services/plusi/model/CoalescedFrame;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
