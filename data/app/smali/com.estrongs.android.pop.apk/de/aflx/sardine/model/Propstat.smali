.class public Lde/aflx/sardine/model/Propstat;
.super Ljava/lang/Object;


# instance fields
.field protected error:Lde/aflx/sardine/model/Error;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected prop:Lde/aflx/sardine/model/Prop;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field protected responsedescription:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protected status:Ljava/lang/String;
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
.method public getError()Lde/aflx/sardine/model/Error;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Propstat;->error:Lde/aflx/sardine/model/Error;

    return-object v0
.end method

.method public getProp()Lde/aflx/sardine/model/Prop;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Propstat;->prop:Lde/aflx/sardine/model/Prop;

    return-object v0
.end method

.method public getResponsedescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Propstat;->responsedescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Propstat;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Lde/aflx/sardine/model/Error;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Propstat;->error:Lde/aflx/sardine/model/Error;

    return-void
.end method

.method public setProp(Lde/aflx/sardine/model/Prop;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Propstat;->prop:Lde/aflx/sardine/model/Prop;

    return-void
.end method

.method public setResponsedescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Propstat;->responsedescription:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Propstat;->status:Ljava/lang/String;

    return-void
.end method
