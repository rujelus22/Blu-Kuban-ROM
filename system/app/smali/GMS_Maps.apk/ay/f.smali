.class Lay/f;
.super Lap/b;


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic e:Lay/a;


# direct methods
.method constructor <init>(Lay/a;Lap/c;Ljava/util/Vector;)V
    .registers 4

    iput-object p1, p0, Lay/f;->e:Lay/a;

    iput-object p3, p0, Lay/f;->a:Ljava/util/Vector;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v2

    :try_start_8
    new-instance v3, Lam/b;

    sget-object v0, LbD/Z;->u:Lam/e;

    invoke-direct {v3, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lay/f;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    move v1, v0

    :goto_17
    if-ge v1, v4, :cond_2d

    iget-object v0, p0, Lay/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/o;

    const/4 v5, 0x1

    invoke-virtual {v0}, Lay/o;->c()Lam/b;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_2d
    invoke-virtual {v3}, Lam/b;->f()[B

    move-result-object v0

    const-string v1, "PROTO_CLIENT_SAVED_PHOTO_CACHE"

    invoke-interface {v2, v0, v1}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOURCE_PROFILE_PHOTO_MANAGER_IMP-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lay/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t save photo index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lay/f;->e:Lay/a;

    invoke-static {v0}, Lay/a;->e(Lay/a;)V

    goto :goto_36
.end method
