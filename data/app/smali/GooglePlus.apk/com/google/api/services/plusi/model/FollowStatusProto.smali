.class public final Lcom/google/api/services/plusi/model/FollowStatusProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "FollowStatusProto.java"


# instance fields
.field public circleName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isBlocked:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
