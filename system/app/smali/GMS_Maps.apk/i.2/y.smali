.class Li/y;
.super Ljava/lang/Object;


# instance fields
.field final e:Li/d;

.field final f:J


# direct methods
.method public constructor <init>(Li/d;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/y;->e:Li/d;

    iput-wide p2, p0, Li/y;->f:J

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/text/Format;Ljava/util/Date;Ljava/io/PrintWriter;)V
    .registers 8

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Li/y;->f:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Li/y;->b(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public b(Ljava/io/PrintWriter;)V
    .registers 5

    const/16 v2, 0x20

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v0, p0, Li/y;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Li/y;->e:Li/d;

    invoke-virtual {v0}, Li/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Li/y;->a(Ljava/io/PrintWriter;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method
