.class public final Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "RealtimeUpdateProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/RealtimeUpdateProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/LinkFragmentJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "fragment"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "localizedTime"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/LinkFragmentJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "fullText"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "attribution"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/AuthorProtoJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "author"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/RealtimeUpdateProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;->fragment:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;->localizedTime:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;->fullText:Lcom/google/api/services/plusi/model/LinkFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;->attribution:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;->author:Lcom/google/api/services/plusi/model/AuthorProto;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;->getValues(Lcom/google/api/services/plusi/model/RealtimeUpdateProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/RealtimeUpdateProto;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/RealtimeUpdateProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/RealtimeUpdateProtoJson;->newInstance()Lcom/google/api/services/plusi/model/RealtimeUpdateProto;

    move-result-object v0

    return-object v0
.end method
