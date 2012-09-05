.class public Le/L;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field private final b:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(JLjava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/L;->a:J

    iput-object p3, p0, Le/L;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/io/PrintWriter;Le/L;)V
    .registers 4

    if-nez p1, :cond_8

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    const-string v0, "WifiScan [deliveryTime="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p1, Le/L;->a:J

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ", devices=["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Le/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/M;

    invoke-static {p0, v0}, Le/M;->a(Ljava/io/PrintWriter;Le/M;)V

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d

    :cond_32
    const-string v0, "]]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;Le/L;)V
    .registers 4

    if-nez p1, :cond_8

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    return-void

    :cond_8
    const-string v0, "WifiScan [deliveryTime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Le/L;->a:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", devices=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Le/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/M;

    invoke-static {p0, v0}, Le/M;->a(Ljava/lang/StringBuilder;Le/M;)V

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_32
    const-string v0, "]]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Le/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(J)LW/a;
    .registers 8

    iget-object v0, p0, Le/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, LW/a;

    sget-object v0, Lk/a;->G:LW/d;

    invoke-direct {v1, v0}, LW/a;-><init>(LW/d;)V

    const/4 v0, 0x1

    iget-wide v2, p0, Le/L;->a:J

    add-long/2addr v2, p1

    invoke-virtual {v1, v0, v2, v3}, LW/a;->b(IJ)V

    const/16 v0, 0x19

    iget-object v2, p0, Le/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_26
    if-ge v2, v3, :cond_3c

    const/4 v4, 0x2

    iget-object v0, p0, Le/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/M;

    invoke-virtual {v0}, Le/M;->a()LW/a;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, LW/a;->a(ILW/a;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    :cond_3c
    move-object v0, v1

    goto :goto_9
.end method

.method public final a(I)Le/M;
    .registers 3

    iget-object v0, p0, Le/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/M;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiScan [deliveryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/L;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/L;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
