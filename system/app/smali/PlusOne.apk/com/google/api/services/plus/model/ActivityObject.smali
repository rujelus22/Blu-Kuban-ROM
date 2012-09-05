.class public final Lcom/google/api/services/plus/model/ActivityObject;
.super Lcom/google/api/client/json/GenericJson;
.source "ActivityObject.java"


# instance fields
.field private actor:Lcom/google/api/services/plus/model/ActivityObjectActor;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "actor"
    .end annotation
.end field

.field private attachments:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "attachments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/ActivityObjectAttachments;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "content"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private objectType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "objectType"
    .end annotation
.end field

.field private originalContent:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "originalContent"
    .end annotation
.end field

.field private plusoners:Lcom/google/api/services/plus/model/ActivityObjectPlusoners;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "plusoners"
    .end annotation
.end field

.field private replies:Lcom/google/api/services/plus/model/ActivityObjectReplies;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "replies"
    .end annotation
.end field

.field private resharers:Lcom/google/api/services/plus/model/ActivityObjectResharers;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "resharers"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/ActivityObjectAttachments;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObject;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public setAttachments(Ljava/util/List;)Lcom/google/api/services/plus/model/ActivityObject;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/ActivityObjectAttachments;",
            ">;)",
            "Lcom/google/api/services/plus/model/ActivityObject;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/ActivityObjectAttachments;>;"
    iput-object p1, p0, Lcom/google/api/services/plus/model/ActivityObject;->attachments:Ljava/util/List;

    .line 72
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/api/services/plus/model/ActivityObject;
    .registers 2
    .parameter "content"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/api/services/plus/model/ActivityObject;->content:Ljava/lang/String;

    .line 166
    return-object p0
.end method
