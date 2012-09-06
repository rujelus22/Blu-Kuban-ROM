.class public final Lcom/google/api/services/plusi/model/AddressRangeProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "AddressRangeProto.java"


# instance fields
.field public number:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public parameter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public parameterIsSynthesized:Ljava/lang/Boolean;

.field public prefix:Ljava/lang/String;

.field public sameParity:Ljava/lang/Boolean;

.field public suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
