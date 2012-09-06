.class public final Lcom/google/api/services/plusi/model/DataCommentJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "DataCommentJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/DataComment;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/DataCommentJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/DataCommentJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCommentJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/DataCommentJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCommentJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/DataComment;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "contentType"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "timestamp"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "asbeActivityId"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "commentType"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/google/api/services/plusi/model/DataUserJson;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "user"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "text"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "originalText"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/DataPlusOneJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "plusOne"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/DataCommentJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/DataCommentJson;->INSTANCE:Lcom/google/api/services/plusi/model/DataCommentJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/DataComment;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataComment;->contentType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataComment;->timestamp:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataComment;->asbeActivityId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataComment;->commentType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataComment;->user:Lcom/google/api/services/plusi/model/DataUser;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataComment;->text:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataComment;->originalText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataComment;->plusOne:Lcom/google/api/services/plusi/model/DataPlusOne;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/DataComment;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/DataComment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/DataCommentJson;->getValues(Lcom/google/api/services/plusi/model/DataComment;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/DataComment;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/api/services/plusi/model/DataComment;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataComment;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/DataCommentJson;->newInstance()Lcom/google/api/services/plusi/model/DataComment;

    move-result-object v0

    return-object v0
.end method
