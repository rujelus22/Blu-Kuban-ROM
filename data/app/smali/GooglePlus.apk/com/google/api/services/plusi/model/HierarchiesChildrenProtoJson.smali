.class public final Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "HierarchiesChildrenProtoJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/StoryTitleJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "storyTitle"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "totalChildren"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/PlacePageLinkJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "moreLink"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "columnRange"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoChildJson;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "child"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;->INSTANCE:Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;->storyTitle:Lcom/google/api/services/plusi/model/StoryTitle;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;->totalChildren:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;->moreLink:Lcom/google/api/services/plusi/model/PlacePageLink;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;->columnRange:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;->child:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;->getValues(Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/HierarchiesChildrenProtoJson;->newInstance()Lcom/google/api/services/plusi/model/HierarchiesChildrenProto;

    move-result-object v0

    return-object v0
.end method
