.class public final Lcom/google/api/services/plusi/model/MediaLayout;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "MediaLayout.java"


# instance fields
.field public contentUrl:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public faviconUrl:Ljava/lang/String;

.field public layoutType:Ljava/lang/String;

.field public media:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uploader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-class v0, Lcom/google/api/services/plusi/model/MediaItem;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
