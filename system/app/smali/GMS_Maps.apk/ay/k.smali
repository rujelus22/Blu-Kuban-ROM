.class Lay/k;
.super Lap/b;


# instance fields
.field private final a:Ljava/util/Vector;

.field private final e:Lay/l;


# direct methods
.method public constructor <init>(Lap/c;Ljava/util/Vector;Lay/l;)V
    .registers 4

    invoke-direct {p0, p1}, Lap/b;-><init>(Lap/c;)V

    iput-object p2, p0, Lay/k;->a:Ljava/util/Vector;

    iput-object p3, p0, Lay/k;->e:Lay/l;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v1, p0, Lay/k;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_89

    iget-object v0, p0, Lay/k;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/n;

    invoke-virtual {v0}, Lay/n;->h()Z

    move-result v4

    if-nez v4, :cond_24

    :goto_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_24
    :try_start_24
    invoke-virtual {v0}, Lay/n;->g()Lam/b;

    move-result-object v4

    invoke-virtual {v4}, Lam/b;->f()[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHOTO_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lay/n;->a()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lak/m;->b([BLjava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_83

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write failed, error Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_62} :catch_62

    :catch_62
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH-PhotoSaveToDiskTask can\'t savePHOTO_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lay/n;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lay/k;->e:Lay/l;

    invoke-interface {v0}, Lay/l;->b()V

    :goto_82
    return-void

    :cond_83
    :try_start_83
    iget-object v4, p0, Lay/k;->e:Lay/l;

    invoke-interface {v4, v0}, Lay/l;->a(Lay/n;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_88} :catch_62

    goto :goto_20

    :cond_89
    iget-object v0, p0, Lay/k;->e:Lay/l;

    invoke-interface {v0}, Lay/l;->a()V

    goto :goto_82
.end method
