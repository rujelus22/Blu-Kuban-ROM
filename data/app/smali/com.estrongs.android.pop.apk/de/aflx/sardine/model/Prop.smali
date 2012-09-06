.class public Lde/aflx/sardine/model/Prop;
.super Ljava/lang/Object;


# instance fields
.field protected any:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/Element;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private creationdate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private getcontentlength:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private getcontenttype:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private getetag:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private getlastmodified:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private resourcetype:Lde/aflx/sardine/model/Resourcetype;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAny()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/Element;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->any:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/aflx/sardine/model/Prop;->any:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->any:Ljava/util/List;

    return-object v0
.end method

.method public getCreationdate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->creationdate:Ljava/lang/String;

    return-object v0
.end method

.method public getGetcontentlength()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getcontentlength:Ljava/lang/String;

    return-object v0
.end method

.method public getGetcontenttype()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getcontenttype:Ljava/lang/String;

    return-object v0
.end method

.method public getGetetag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getetag:Ljava/lang/String;

    return-object v0
.end method

.method public getGetlastmodified()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->getlastmodified:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcetype()Lde/aflx/sardine/model/Resourcetype;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Prop;->resourcetype:Lde/aflx/sardine/model/Resourcetype;

    return-object v0
.end method
