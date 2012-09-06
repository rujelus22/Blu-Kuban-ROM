.class public final Lcom/google/api/services/plusi/model/ScrapBook;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ScrapBook.java"


# instance fields
.field public albumId:Ljava/lang/String;

.field public albumUrl:Ljava/lang/String;

.field public coverPhotoEntry:Lcom/google/api/services/plusi/model/ScrapBookEntry;

.field public metadata:Lcom/google/api/services/plusi/model/Metadata;

.field public plusiEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ScrapBookEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const-class v0, Lcom/google/api/services/plusi/model/ScrapBookEntry;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
