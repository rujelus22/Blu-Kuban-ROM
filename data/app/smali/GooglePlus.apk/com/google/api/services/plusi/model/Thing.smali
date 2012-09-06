.class public final Lcom/google/api/services/plusi/model/Thing;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Thing.java"


# instance fields
.field public author:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/EmbedClientItem;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public proxiedFaviconUrl:Ljava/lang/String;

.field public proxiedImage:Lcom/google/api/services/plusi/model/Thumbnail;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/google/api/services/plusi/model/EmbedClientItem;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
