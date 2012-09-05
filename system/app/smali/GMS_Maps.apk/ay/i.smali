.class Lay/i;
.super Lap/b;


# instance fields
.field private final a:Ljava/util/Vector;

.field private final e:Lay/a;

.field private final f:Lay/j;


# direct methods
.method public constructor <init>(Lap/c;Ljava/util/Vector;Lay/a;Lay/j;)V
    .registers 5

    invoke-direct {p0, p1}, Lap/b;-><init>(Lap/c;)V

    iput-object p2, p0, Lay/i;->a:Ljava/util/Vector;

    iput-object p3, p0, Lay/i;->e:Lay/a;

    iput-object p4, p0, Lay/i;->f:Lay/j;

    return-void
.end method


# virtual methods
.method public a(Lay/o;)Lay/n;
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-virtual {p1}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHOTO_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_29

    array-length v2, v1

    if-nez v2, :cond_2a

    :cond_29
    :goto_29
    return-object v0

    :cond_2a
    :try_start_2a
    new-instance v2, Lam/b;

    sget-object v3, LbD/Z;->w:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v2, v1}, Lam/b;->a([B)Lam/b;

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {p1, v1, v2, v3, v4}, Lay/n;->a(Lay/o;ILam/b;II)Lay/n;

    move-result-object v0

    invoke-virtual {v0}, Lay/n;->f()Lah/f;

    move-result-object v1

    invoke-interface {v1}, Lah/f;->a()I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_43

    goto :goto_29

    :catch_43
    move-exception v1

    const-string v2, "PHOTO_LOAD-PhotoLoadFromDiskTask failed to load photo"

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lay/i;->e:Lay/a;

    invoke-static {v1}, Lay/a;->e(Lay/a;)V

    goto :goto_29
.end method

.method public a()V
    .registers 6

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Lay/i;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_2f

    iget-object v0, p0, Lay/i;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/o;

    invoke-virtual {p0, v0}, Lay/i;->a(Lay/o;)Lay/n;

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lay/i;->f:Lay/j;

    invoke-interface {v0, v4}, Lay/j;->a(Lay/n;)V

    :goto_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_29
    iget-object v4, p0, Lay/i;->f:Lay/j;

    invoke-interface {v4, v0}, Lay/j;->a(Lay/o;)V

    goto :goto_25

    :cond_2f
    iget-object v0, p0, Lay/i;->f:Lay/j;

    invoke-interface {v0, v2}, Lay/j;->a(Ljava/util/Vector;)V

    return-void
.end method
