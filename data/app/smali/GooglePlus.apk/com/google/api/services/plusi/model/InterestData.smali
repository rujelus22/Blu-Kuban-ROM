.class public final Lcom/google/api/services/plusi/model/InterestData;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "InterestData.java"


# instance fields
.field public author:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/InterestDataAuthor;",
            ">;"
        }
    .end annotation
.end field

.field public sourceName:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;

.field public timestampMs:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Lcom/google/api/services/plusi/model/InterestDataAuthor;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
