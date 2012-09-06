.class public final Lcom/google/api/services/plusi/model/NameProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "NameProto.java"


# instance fields
.field public featureDesignationProbability:Ljava/lang/Float;

.field public flag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public language:Ljava/lang/String;

.field public rawText:Ljava/lang/String;

.field public routeDirection:Ljava/lang/String;

.field public shortText:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
