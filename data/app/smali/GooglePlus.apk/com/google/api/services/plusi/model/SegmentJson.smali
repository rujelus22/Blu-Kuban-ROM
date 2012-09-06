.class public final Lcom/google/api/services/plusi/model/SegmentJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "SegmentJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Segment;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/SegmentJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/SegmentJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/SegmentJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/SegmentJson;->INSTANCE:Lcom/google/api/services/plusi/model/SegmentJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Segment;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "text"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/api/services/plusi/model/FormattingJson;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "formatting"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/LinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "link"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/UserRefJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "user"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/HashtagJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "hashtag"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/SegmentJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/SegmentJson;->INSTANCE:Lcom/google/api/services/plusi/model/SegmentJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Segment;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Segment;->text:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Segment;->formatting:Lcom/google/api/services/plusi/model/Formatting;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Segment;->link:Lcom/google/api/services/plusi/model/Link;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Segment;->user:Lcom/google/api/services/plusi/model/UserRef;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Segment;->hashtag:Lcom/google/api/services/plusi/model/Hashtag;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Segment;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Segment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/SegmentJson;->getValues(Lcom/google/api/services/plusi/model/Segment;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Segment;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/services/plusi/model/Segment;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Segment;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/SegmentJson;->newInstance()Lcom/google/api/services/plusi/model/Segment;

    move-result-object v0

    return-object v0
.end method
