.class public final Lcom/google/api/services/plusi/model/Review;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Review.java"


# instance fields
.field public name:Ljava/lang/String;

.field public reviewRating:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-class v0, Lcom/google/api/services/plusi/model/Rating;

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
