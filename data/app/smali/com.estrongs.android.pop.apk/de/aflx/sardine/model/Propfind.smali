.class public Lde/aflx/sardine/model/Propfind;
.super Ljava/lang/Object;


# instance fields
.field protected allprop:Lde/aflx/sardine/model/Allprop;

.field protected prop:Lde/aflx/sardine/model/Prop;

.field protected propname:Lde/aflx/sardine/model/Propname;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllprop()Lde/aflx/sardine/model/Allprop;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Propfind;->allprop:Lde/aflx/sardine/model/Allprop;

    return-object v0
.end method

.method public getProp()Lde/aflx/sardine/model/Prop;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Propfind;->prop:Lde/aflx/sardine/model/Prop;

    return-object v0
.end method

.method public getPropname()Lde/aflx/sardine/model/Propname;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Propfind;->propname:Lde/aflx/sardine/model/Propname;

    return-object v0
.end method

.method public setAllprop(Lde/aflx/sardine/model/Allprop;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Propfind;->allprop:Lde/aflx/sardine/model/Allprop;

    return-void
.end method

.method public setProp(Lde/aflx/sardine/model/Prop;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Propfind;->prop:Lde/aflx/sardine/model/Prop;

    return-void
.end method

.method public setPropname(Lde/aflx/sardine/model/Propname;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Propfind;->propname:Lde/aflx/sardine/model/Propname;

    return-void
.end method
