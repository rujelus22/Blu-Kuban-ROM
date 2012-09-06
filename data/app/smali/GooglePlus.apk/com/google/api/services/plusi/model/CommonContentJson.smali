.class public final Lcom/google/api/services/plusi/model/CommonContentJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "CommonContentJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/CommonContent;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/CommonContentJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/CommonContentJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CommonContentJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/CommonContentJson;->INSTANCE:Lcom/google/api/services/plusi/model/CommonContentJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/CommonContent;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/LinksJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "links"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "photoUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/StringFieldJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "introduction"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/google/api/services/plusi/model/StringFieldJson;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "tagLine"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/ContactsJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "contacts"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/google/api/services/plusi/model/ScrapbookInfoJson;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "scrapbookInfo"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lcom/google/api/services/plusi/model/ScrapBookJson;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "scrapbook"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Lcom/google/api/services/plusi/model/NickNameJson;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "nickname"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/CommonContentJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/CommonContentJson;->INSTANCE:Lcom/google/api/services/plusi/model/CommonContentJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/CommonContent;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonContent;->links:Lcom/google/api/services/plusi/model/Links;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonContent;->photoUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonContent;->introduction:Lcom/google/api/services/plusi/model/StringField;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonContent;->tagLine:Lcom/google/api/services/plusi/model/StringField;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonContent;->contacts:Lcom/google/api/services/plusi/model/Contacts;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonContent;->scrapbookInfo:Lcom/google/api/services/plusi/model/ScrapbookInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonContent;->scrapbook:Lcom/google/api/services/plusi/model/ScrapBook;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/CommonContent;->nickname:Lcom/google/api/services/plusi/model/NickName;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/CommonContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/CommonContentJson;->getValues(Lcom/google/api/services/plusi/model/CommonContent;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/CommonContent;
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/services/plusi/model/CommonContent;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/CommonContent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/CommonContentJson;->newInstance()Lcom/google/api/services/plusi/model/CommonContent;

    move-result-object v0

    return-object v0
.end method
