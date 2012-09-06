.class public final Lcom/google/api/services/plusi/model/UserMediaProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "UserMediaProto.java"


# instance fields
.field public author:Lcom/google/api/services/plusi/model/AuthorProto;

.field public authorId:Ljava/lang/String;

.field public mediaId:Ljava/lang/String;

.field public moderationStatus:Ljava/lang/String;

.field public time:Lcom/google/api/services/plusi/model/TimeProto;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
