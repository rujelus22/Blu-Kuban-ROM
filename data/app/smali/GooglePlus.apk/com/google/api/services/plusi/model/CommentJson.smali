.class public final Lcom/google/api/services/plusi/model/CommentJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "CommentJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Comment;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/CommentJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/CommentJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CommentJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/CommentJson;->INSTANCE:Lcom/google/api/services/plusi/model/CommentJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Comment;

    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/RelativeDateInfoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "relativeDateInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/DataPlusOneJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "plusone"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "originalText"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "isContact"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/api/services/plusi/model/CommentJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "timestamp"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/ViewSegmentsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textSegments"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "text"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "authorPhotoUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "isViewerFollowing"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "obfuscatedId"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "isOwnedByViewer"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "authorName"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "updateId"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "authorProfileUrl"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "isTextLong"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "commentId"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "humanReadableTimestamp"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/api/services/plusi/model/CommentJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "updatedTimestampUsec"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "isSpam"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-class v3, Lcom/google/api/services/plusi/model/EditSegmentsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "originalTextSegments"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/CommentJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/CommentJson;->INSTANCE:Lcom/google/api/services/plusi/model/CommentJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Comment;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 51
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->relativeDateInfo:Lcom/google/api/services/plusi/model/RelativeDateInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->plusone:Lcom/google/api/services/plusi/model/DataPlusOne;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->originalText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->isContact:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->timestamp:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->textSegments:Lcom/google/api/services/plusi/model/ViewSegments;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->text:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->authorPhotoUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->isViewerFollowing:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->obfuscatedId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->isOwnedByViewer:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->authorName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->updateId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->authorProfileUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->isTextLong:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->commentId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->humanReadableTimestamp:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->updatedTimestampUsec:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->isSpam:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Comment;->originalTextSegments:Lcom/google/api/services/plusi/model/EditSegments;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Comment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/CommentJson;->getValues(Lcom/google/api/services/plusi/model/Comment;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Comment;
    .registers 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/api/services/plusi/model/Comment;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Comment;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/CommentJson;->newInstance()Lcom/google/api/services/plusi/model/Comment;

    move-result-object v0

    return-object v0
.end method
