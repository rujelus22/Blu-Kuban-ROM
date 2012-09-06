.class public final Lcom/google/api/services/plusi/model/Locations;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Locations.java"


# instance fields
.field public currentLocation:Ljava/lang/String;

.field public locationMapUrl:Ljava/lang/String;

.field public metadata:Lcom/google/api/services/plusi/model/Metadata;

.field public otherLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
