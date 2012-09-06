.class public final Lcom/google/api/services/plusi/model/ImageGallery;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ImageGallery.java"


# instance fields
.field public about:Lcom/google/api/services/plusi/model/EmbedClientItem;

.field public associatedMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ImageObject;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/ImageObject;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
