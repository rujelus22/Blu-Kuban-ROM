.class public final Lcom/google/api/services/plusi/model/PlacePageAddressProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PlacePageAddressProto.java"


# instance fields
.field public address:Ljava/lang/String;

.field public addressLine:Ljava/util/List;
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
