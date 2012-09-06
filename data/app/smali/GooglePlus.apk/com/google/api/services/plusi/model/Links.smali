.class public final Lcom/google/api/services/plusi/model/Links;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Links.java"


# instance fields
.field public defaultMetadata:Lcom/google/api/services/plusi/model/Metadata;

.field public link:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ProfilesLink;",
            ">;"
        }
    .end annotation
.end field

.field public metadata:Lcom/google/api/services/plusi/model/Metadata;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/google/api/services/plusi/model/ProfilesLink;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
