.class public Lde/aflx/sardine/model/Set;
.super Ljava/lang/Object;


# instance fields
.field protected prop:Lde/aflx/sardine/model/Prop;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProp()Lde/aflx/sardine/model/Prop;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Set;->prop:Lde/aflx/sardine/model/Prop;

    return-object v0
.end method

.method public setProp(Lde/aflx/sardine/model/Prop;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Set;->prop:Lde/aflx/sardine/model/Prop;

    return-void
.end method
