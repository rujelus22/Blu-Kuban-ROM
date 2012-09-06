.class public final Lcom/google/api/services/plusi/model/DataCirclePerson;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DataCirclePerson.java"


# instance fields
.field public joinKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataCircleMemberId;",
            ">;"
        }
    .end annotation
.end field

.field public memberId:Lcom/google/api/services/plusi/model/DataCircleMemberId;

.field public memberProperties:Lcom/google/api/services/plusi/model/DataCircleMemberProperties;

.field public membership:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataMembership;",
            ">;"
        }
    .end annotation
.end field

.field public primaryContact:Lcom/google/api/services/plusi/model/DataContact;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/DataMembership;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleMemberId;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
