.class public Le/u;
.super Ljava/lang/Object;


# instance fields
.field public final a:Le/n;

.field public final b:Le/K;

.field public final c:Le/a;

.field public final d:Le/e;


# direct methods
.method public constructor <init>(Le/n;Le/K;Le/a;Le/e;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/u;->a:Le/n;

    iput-object p2, p0, Le/u;->b:Le/K;

    iput-object p3, p0, Le/u;->c:Le/a;

    iput-object p4, p0, Le/u;->d:Le/e;

    if-eqz p1, :cond_1b

    iget-object v0, p1, Le/n;->d:Le/p;

    sget-object v1, Le/p;->a:Le/p;

    if-eq v0, v1, :cond_1b

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Args"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    return-void
.end method


# virtual methods
.method public a()Le/L;
    .registers 2

    iget-object v0, p0, Le/u;->b:Le/K;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Le/u;->b:Le/K;

    iget-object v0, v0, Le/K;->a:Le/L;

    goto :goto_5
.end method

.method public a(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "NetworkLocation [\n bestResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Le/u;->a:Le/n;

    if-nez v0, :cond_32

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    :goto_e
    const-string v0, "\n wifiResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Le/u;->b:Le/K;

    invoke-static {p1, v0}, Le/K;->a(Ljava/io/PrintWriter;Le/K;)V

    const-string v0, "\n cellResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Le/u;->c:Le/a;

    invoke-static {p1, v0}, Le/a;->a(Ljava/io/PrintWriter;Le/a;)V

    const-string v0, "\n glsResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Le/u;->d:Le/e;

    invoke-static {p1, v0}, Le/e;->a(Ljava/io/PrintWriter;Le/e;)V

    const-string v0, "\n]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_32
    iget-object v0, p0, Le/u;->a:Le/n;

    iget-object v1, p0, Le/u;->b:Le/K;

    if-ne v0, v1, :cond_3e

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    :cond_3e
    iget-object v0, p0, Le/u;->a:Le/n;

    iget-object v1, p0, Le/u;->c:Le/a;

    if-ne v0, v1, :cond_4a

    const-string v0, "CELL"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    :cond_4a
    iget-object v0, p0, Le/u;->a:Le/n;

    iget-object v1, p0, Le/u;->d:Le/e;

    if-ne v0, v1, :cond_e

    const-string v0, "GLS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public b()Le/b;
    .registers 2

    iget-object v0, p0, Le/u;->c:Le/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Le/u;->c:Le/a;

    iget-object v0, v0, Le/a;->a:Le/d;

    invoke-virtual {v0}, Le/d;->b()Le/b;

    move-result-object v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "NetworkLocation [\n bestResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/u;->a:Le/n;

    if-nez v1, :cond_3d

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    :goto_15
    const-string v1, "\n wifiResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/u;->b:Le/K;

    invoke-static {v0, v1}, Le/K;->a(Ljava/lang/StringBuilder;Le/K;)V

    const-string v1, "\n cellResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/u;->c:Le/a;

    invoke-static {v0, v1}, Le/a;->a(Ljava/lang/StringBuilder;Le/a;)V

    const-string v1, "\n glsResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/u;->d:Le/e;

    invoke-static {v0, v1}, Le/e;->a(Ljava/lang/StringBuilder;Le/e;)V

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3d
    iget-object v1, p0, Le/u;->a:Le/n;

    iget-object v2, p0, Le/u;->b:Le/K;

    if-ne v1, v2, :cond_49

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_49
    iget-object v1, p0, Le/u;->a:Le/n;

    iget-object v2, p0, Le/u;->c:Le/a;

    if-ne v1, v2, :cond_55

    const-string v1, "CELL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_55
    iget-object v1, p0, Le/u;->a:Le/n;

    iget-object v2, p0, Le/u;->d:Le/e;

    if-ne v1, v2, :cond_15

    const-string v1, "GLS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method
