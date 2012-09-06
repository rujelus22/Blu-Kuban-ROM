.class public final Lcom/google/api/services/plusi/model/DataCircleMemberToAdd;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DataCircleMemberToAdd.java"


# instance fields
.field public contactId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public displayName:Ljava/lang/String;

.field public memberId:Lcom/google/api/services/plusi/model/DataCircleMemberId;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
