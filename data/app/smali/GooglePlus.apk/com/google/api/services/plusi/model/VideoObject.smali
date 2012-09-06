.class public final Lcom/google/api/services/plusi/model/VideoObject;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "VideoObject.java"


# instance fields
.field public about:Lcom/google/api/services/plusi/model/EmbedClientItem;

.field public author:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EmbedsPerson;",
            ">;"
        }
    .end annotation
.end field

.field public caption:Ljava/lang/String;

.field public contentLocation:Lcom/google/api/services/plusi/model/Place;

.field public contentUrl:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public embedUrl:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public heightPx:Ljava/lang/Integer;

.field public imageUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public paid:Ljava/lang/String;

.field public playerType:Ljava/lang/String;

.field public proxiedThumbnail:Lcom/google/api/services/plusi/model/Thumbnail;

.field public thumbnailUrl:Ljava/lang/String;

.field public unlisted:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public width:Ljava/lang/String;

.field public widthPx:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const-class v0, Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
