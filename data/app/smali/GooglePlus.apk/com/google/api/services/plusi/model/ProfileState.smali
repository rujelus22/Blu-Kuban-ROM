.class public final Lcom/google/api/services/plusi/model/ProfileState;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ProfileState.java"


# instance fields
.field public blockCount:Ljava/lang/Integer;

.field public blockReason:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nameCheckState:Ljava/lang/String;

.field public offenderStatus:Lcom/google/api/services/plusi/model/OffenderStatus;

.field public value:Ljava/lang/String;

.field public willBeBlockedAtUsec:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
