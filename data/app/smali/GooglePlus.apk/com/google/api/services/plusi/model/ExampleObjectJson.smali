.class public final Lcom/google/api/services/plusi/model/ExampleObjectJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ExampleObjectJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ExampleObject;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ExampleObjectJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ExampleObjectJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ExampleObjectJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ExampleObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/ExampleObjectJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ExampleObject;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/ExampleObjectJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "about"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/google/api/services/plusi/model/ExampleObjectJson;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "author"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "forOwnerOnly"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "forClientOnly"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/google/api/services/plusi/model/ExampleObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "itemRepeatedExtensionField"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/ExampleObjectAttendeeJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "attendee"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "stringRepeatedExtensionField"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "stringExtensionField"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "url"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "additionalName"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-class v3, Lcom/google/api/services/plusi/model/PlaceJson;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "location"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "contributor"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-class v3, Lcom/google/api/services/plusi/model/EmbedClientItemJson;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "thumbnail"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-class v3, Lcom/google/api/services/plusi/model/ExampleObjectJson;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "itemExtensionField"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ExampleObjectJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ExampleObjectJson;->INSTANCE:Lcom/google/api/services/plusi/model/ExampleObjectJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ExampleObject;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 48
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->about:Lcom/google/api/services/plusi/model/ExampleObject;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->author:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->forOwnerOnly:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->forClientOnly:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->itemRepeatedExtensionField:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->attendee:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->stringRepeatedExtensionField:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->stringExtensionField:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->additionalName:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->location:Lcom/google/api/services/plusi/model/Place;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->contributor:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->thumbnail:Lcom/google/api/services/plusi/model/EmbedClientItem;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->itemExtensionField:Lcom/google/api/services/plusi/model/ExampleObject;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ExampleObject;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ExampleObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ExampleObjectJson;->getValues(Lcom/google/api/services/plusi/model/ExampleObject;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ExampleObject;
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/api/services/plusi/model/ExampleObject;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ExampleObject;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ExampleObjectJson;->newInstance()Lcom/google/api/services/plusi/model/ExampleObject;

    move-result-object v0

    return-object v0
.end method
