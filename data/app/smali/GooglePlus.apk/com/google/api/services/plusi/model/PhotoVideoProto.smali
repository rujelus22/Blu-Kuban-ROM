.class public final Lcom/google/api/services/plusi/model/PhotoVideoProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PhotoVideoProto.java"


# instance fields
.field public media:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MediaProto;",
            ">;"
        }
    .end annotation
.end field

.field public morePhotos:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public moreVideos:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public navbar:Lcom/google/api/services/plusi/model/NavbarProto;

.field public photoSize:Ljava/lang/String;

.field public resultsRange:Lcom/google/api/services/plusi/model/ResultsRangeProto;

.field public totalNumPhotos:Ljava/lang/Integer;

.field public totalNumVideos:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const-class v0, Lcom/google/api/services/plusi/model/MediaProto;

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
