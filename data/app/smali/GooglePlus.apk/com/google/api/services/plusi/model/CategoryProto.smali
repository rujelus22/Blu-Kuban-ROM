.class public final Lcom/google/api/services/plusi/model/CategoryProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "CategoryProto.java"


# instance fields
.field public categoryLabel:Ljava/lang/String;

.field public showClosedZippyEllipsis:Ljava/lang/Boolean;

.field public zippyClosedItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/CategoryProtoItem;",
            ">;"
        }
    .end annotation
.end field

.field public zippyOpenedItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/CategoryProtoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/google/api/services/plusi/model/CategoryProtoItem;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    const-class v0, Lcom/google/api/services/plusi/model/CategoryProtoItem;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
