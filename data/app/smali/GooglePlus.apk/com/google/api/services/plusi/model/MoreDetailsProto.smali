.class public final Lcom/google/api/services/plusi/model/MoreDetailsProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "MoreDetailsProto.java"


# instance fields
.field public providerDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MoreDetailsProtoProviderDetails;",
            ">;"
        }
    .end annotation
.end field

.field public summaryDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DetailProto;",
            ">;"
        }
    .end annotation
.end field

.field public title:Lcom/google/api/services/plusi/model/StoryTitle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/MoreDetailsProtoProviderDetails;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    const-class v0, Lcom/google/api/services/plusi/model/DetailProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
