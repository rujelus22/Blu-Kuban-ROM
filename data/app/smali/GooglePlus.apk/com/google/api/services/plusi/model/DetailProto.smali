.class public final Lcom/google/api/services/plusi/model/DetailProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DetailProto.java"


# instance fields
.field public attribution:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public canonicalLabelId:Ljava/lang/String;

.field public displayLabel:Ljava/lang/String;

.field public hoverAttribution:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DetailProtoValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-class v0, Lcom/google/api/services/plusi/model/DetailProtoValue;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
