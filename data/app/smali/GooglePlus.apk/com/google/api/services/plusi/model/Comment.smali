.class public final Lcom/google/api/services/plusi/model/Comment;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "Comment.java"


# instance fields
.field public authorName:Ljava/lang/String;

.field public authorPhotoUrl:Ljava/lang/String;

.field public authorProfileUrl:Ljava/lang/String;

.field public commentId:Ljava/lang/String;

.field public humanReadableTimestamp:Ljava/lang/String;

.field public isContact:Ljava/lang/Boolean;

.field public isOwnedByViewer:Ljava/lang/Boolean;

.field public isSpam:Ljava/lang/Boolean;

.field public isTextLong:Ljava/lang/Boolean;

.field public isViewerFollowing:Ljava/lang/Boolean;

.field public obfuscatedId:Ljava/lang/String;

.field public originalText:Ljava/lang/String;

.field public originalTextSegments:Lcom/google/api/services/plusi/model/EditSegments;

.field public plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

.field public relativeDateInfo:Lcom/google/api/services/plusi/model/RelativeDateInfo;

.field public text:Ljava/lang/String;

.field public textSegments:Lcom/google/api/services/plusi/model/ViewSegments;

.field public timestamp:Ljava/lang/Long;

.field public updateId:Ljava/lang/String;

.field public updatedTimestampUsec:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
