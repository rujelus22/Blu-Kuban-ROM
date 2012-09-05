.class public final Ldk;
.super Lct;
.source "a"

# interfaces
.implements Lep;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lct;",
        "Lep",
        "<",
        "Lef",
        "<*>;>;"
    }
.end annotation


# instance fields
.field public a:Lbk;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbk;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lct;-><init>()V

    .line 29
    iput-object p1, p0, Ldk;->b:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Ldk;->a:Lbk;

    .line 31
    return-void
.end method

.method private e()Ljava/net/URI;
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Ldk;->a:Lbk;

    if-nez v0, :cond_6

    .line 35
    const/4 v0, 0x0

    .line 59
    :goto_5
    return-object v0

    .line 38
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    iget-object v1, p0, Ldk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "/client/v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Ldk;->a:Lbk;

    invoke-virtual {v1}, Lbk;->getApplicationId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 42
    const-string v1, "applications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Ldk;->a:Lbk;

    invoke-virtual {v1}, Lbk;->getApplicationId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_30
    const-string v1, "resources/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Ldk;->a:Lbk;

    invoke-virtual {v1}, Lbk;->getResourceDiscriminator()Leg;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 48
    iget-object v1, p0, Ldk;->a:Lbk;

    invoke-virtual {v1}, Lbk;->getResourceDiscriminator()Leg;

    move-result-object v1

    sget-object v2, Leg;->b:Leg;

    if-ne v1, v2, :cond_65

    .line 49
    invoke-static {}, Lah;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_4e
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_53
    iget-object v1, p0, Ldk;->a:Lbk;

    invoke-virtual {v1}, Lbk;->getResourceFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_5

    .line 50
    :cond_65
    iget-object v1, p0, Ldk;->a:Lbk;

    invoke-virtual {v1}, Lbk;->getResourceDiscriminator()Leg;

    move-result-object v1

    sget-object v2, Leg;->a:Leg;

    if-ne v1, v2, :cond_77

    .line 51
    invoke-static {}, Lah;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 53
    :cond_77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized resource discriminator (will not append discriminator): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldk;->a:Lbk;

    invoke-virtual {v2}, Lbk;->getResourceDiscriminator()Leg;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj;->a(Ljava/lang/String;)V

    goto :goto_4e
.end method


# virtual methods
.method protected final a()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Ldk;->a:Lbk;

    return-object v0
.end method

.method public final bridge synthetic a(Lea;Lda;Lcq;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Ldk;->a:Lbk;

    invoke-virtual {v0}, Lbk;->getResourceType()Leh;

    move-result-object v0

    sget-object v1, Leh;->a:Leh;

    if-ne v0, v1, :cond_1b

    invoke-direct {p0}, Ldk;->e()Ljava/net/URI;

    move-result-object v0

    new-instance v1, Les;

    invoke-direct {v1}, Les;-><init>()V

    invoke-interface {p1, v0, p2, p3, v1}, Lea;->a(Ljava/net/URI;Lda;Lcq;Lei;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lef;

    move-object v0, p0

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Ldk;->a:Lbk;

    invoke-virtual {v0}, Lbk;->getResourceType()Leh;

    move-result-object v0

    sget-object v1, Leh;->b:Leh;

    if-ne v0, v1, :cond_3c

    invoke-direct {p0}, Ldk;->e()Ljava/net/URI;

    move-result-object v0

    new-instance v1, Lec;

    iget-object v2, p0, Ldk;->a:Lbk;

    invoke-virtual {v2}, Lbk;->getResourceDiscriminator()Leg;

    move-result-object v2

    invoke-direct {v1, v2}, Lec;-><init>(Leg;)V

    invoke-interface {p1, v0, p2, p3, v1}, Lea;->a(Ljava/net/URI;Lda;Lcq;Lei;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lef;

    move-object v0, p0

    goto :goto_1a

    :cond_3c
    new-instance v0, Leq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldk;->a:Lbk;

    invoke-virtual {v2}, Lbk;->getResourceType()Leh;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Leq;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v1, "GetResourceRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldk;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",resourceDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldk;->a:Lbk;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
