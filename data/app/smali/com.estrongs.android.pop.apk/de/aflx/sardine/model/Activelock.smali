.class public Lde/aflx/sardine/model/Activelock;
.super Ljava/lang/Object;


# instance fields
.field protected depth:Ljava/lang/String;

.field protected lockscope:Lde/aflx/sardine/model/Lockscope;

.field protected locktoken:Lde/aflx/sardine/model/Locktoken;

.field protected locktype:Lde/aflx/sardine/model/Locktype;

.field protected owner:Lde/aflx/sardine/model/Owner;

.field protected timeout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDepth()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Activelock;->depth:Ljava/lang/String;

    return-object v0
.end method

.method public getLockscope()Lde/aflx/sardine/model/Lockscope;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Activelock;->lockscope:Lde/aflx/sardine/model/Lockscope;

    return-object v0
.end method

.method public getLocktoken()Lde/aflx/sardine/model/Locktoken;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Activelock;->locktoken:Lde/aflx/sardine/model/Locktoken;

    return-object v0
.end method

.method public getLocktype()Lde/aflx/sardine/model/Locktype;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Activelock;->locktype:Lde/aflx/sardine/model/Locktype;

    return-object v0
.end method

.method public getOwner()Lde/aflx/sardine/model/Owner;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Activelock;->owner:Lde/aflx/sardine/model/Owner;

    return-object v0
.end method

.method public getTimeout()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/model/Activelock;->timeout:Ljava/lang/String;

    return-object v0
.end method

.method public setDepth(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Activelock;->depth:Ljava/lang/String;

    return-void
.end method

.method public setLockscope(Lde/aflx/sardine/model/Lockscope;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Activelock;->lockscope:Lde/aflx/sardine/model/Lockscope;

    return-void
.end method

.method public setLocktoken(Lde/aflx/sardine/model/Locktoken;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Activelock;->locktoken:Lde/aflx/sardine/model/Locktoken;

    return-void
.end method

.method public setLocktype(Lde/aflx/sardine/model/Locktype;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Activelock;->locktype:Lde/aflx/sardine/model/Locktype;

    return-void
.end method

.method public setOwner(Lde/aflx/sardine/model/Owner;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Activelock;->owner:Lde/aflx/sardine/model/Owner;

    return-void
.end method

.method public setTimeout(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lde/aflx/sardine/model/Activelock;->timeout:Ljava/lang/String;

    return-void
.end method
