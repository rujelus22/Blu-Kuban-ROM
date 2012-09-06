.class public final Lcom/google/api/services/plusi/model/CircleSharingData;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "CircleSharingData.java"


# instance fields
.field public circleName:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public memberKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public personForDisplay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/CommonPerson;",
            ">;"
        }
    .end annotation
.end field

.field public sharerGender:Ljava/lang/String;

.field public sharerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/google/api/services/plusi/model/CommonPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
