.class public Le/e;
.super Le/n;


# instance fields
.field public final a:Le/L;


# direct methods
.method public constructor <init>(Le/x;Le/p;JLe/L;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Le/n;-><init>(Le/x;Le/p;J)V

    iput-object p5, p0, Le/e;->a:Le/L;

    return-void
.end method

.method public static a(LW/a;Le/L;J)Le/e;
    .registers 10

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_59

    invoke-virtual {p0, v2}, LW/a;->c(I)I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p0, v4}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0, v4}, LW/a;->f(I)LW/a;

    move-result-object v0

    invoke-virtual {v0, v2}, LW/a;->c(I)I

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {v0, v4}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {v0, v4}, LW/a;->f(I)LW/a;

    move-result-object v1

    invoke-virtual {v1, v2}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {v1, v2}, LW/a;->f(I)LW/a;

    move-result-object v0

    invoke-virtual {v0, v2}, LW/a;->c(I)I

    move-result v3

    invoke-virtual {v0, v4}, LW/a;->c(I)I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {v1, v5}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v1, v5}, LW/a;->c(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    move v2, v0

    :goto_45
    const v0, 0x4c4b40

    if-gt v2, v0, :cond_59

    new-instance v0, Le/e;

    new-instance v1, Le/x;

    invoke-direct {v1, v3, v4, v2}, Le/x;-><init>(III)V

    sget-object v2, Le/p;->a:Le/p;

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Le/e;-><init>(Le/x;Le/p;JLe/L;)V

    :goto_58
    return-object v0

    :cond_59
    const/4 v0, 0x0

    goto :goto_58

    :cond_5b
    move v2, v0

    goto :goto_45
.end method

.method public static a(Ljava/io/PrintWriter;Le/e;)V
    .registers 3

    if-nez p1, :cond_8

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    const-string v0, "GlsLocatorResult [wifiScan="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Le/e;->a:Le/L;

    invoke-static {p0, v0}, Le/L;->a(Ljava/io/PrintWriter;Le/L;)V

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0, p1}, Le/n;->a(Ljava/io/PrintWriter;Le/n;)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;Le/e;)V
    .registers 3

    if-nez p1, :cond_8

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    return-void

    :cond_8
    const-string v0, "GlsLocatorResult [wifiScan="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Le/e;->a:Le/L;

    invoke-static {p0, v0}, Le/L;->a(Ljava/lang/StringBuilder;Le/L;)V

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Le/n;->a(Ljava/lang/StringBuilder;Le/n;)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlsLocatorResult [wifiScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/e;->a:Le/L;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Le/n;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
