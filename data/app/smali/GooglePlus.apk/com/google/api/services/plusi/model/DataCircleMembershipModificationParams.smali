.class public final Lcom/google/api/services/plusi/model/DataCircleMembershipModificationParams;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DataCircleMembershipModificationParams.java"


# instance fields
.field public addCircleMembersActionSource:Ljava/lang/String;

.field public includeIsFollowing:Ljava/lang/Boolean;

.field public person:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataCircleMemberToAdd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleMemberToAdd;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
