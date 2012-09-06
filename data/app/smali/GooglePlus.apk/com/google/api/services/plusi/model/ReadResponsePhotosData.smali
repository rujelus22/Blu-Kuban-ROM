.class public final Lcom/google/api/services/plusi/model/ReadResponsePhotosData;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ReadResponsePhotosData.java"


# instance fields
.field public person:Lcom/google/api/services/plusi/model/EmbedsPerson;

.field public photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public sortType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/google/api/services/plusi/model/DataPhoto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
