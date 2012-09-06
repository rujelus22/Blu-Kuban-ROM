.class public final Lcom/google/api/services/plusi/model/ZagatAspectRatingsProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ZagatAspectRatingsProto.java"


# instance fields
.field public aspectRating:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/google/api/services/plusi/model/ZagatAspectRatingProto;

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
