.class public final Lcom/google/api/services/plus/model/Comment;
.super Lcom/google/api/client/json/GenericJson;
.source "Comment.java"


# instance fields
.field private actor:Lcom/google/api/services/plus/model/CommentActor;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "actor"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private inReplyTo:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "inReplyTo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/CommentInReplyTo;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "kind"
    .end annotation
.end field

.field private plusObject:Lcom/google/api/services/plus/model/CommentObject;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "object"
    .end annotation
.end field

.field private published:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "published"
    .end annotation
.end field

.field private selfLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "selfLink"
    .end annotation
.end field

.field private updated:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "updated"
    .end annotation
.end field

.field private verb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "verb"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
