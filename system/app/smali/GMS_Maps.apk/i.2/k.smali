.class Li/k;
.super Li/y;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/d;JIJ)V
    .registers 8

    iput-object p1, p0, Li/k;->c:Li/f;

    iput p5, p0, Li/k;->a:I

    iput-wide p6, p0, Li/k;->b:J

    invoke-direct {p0, p2, p3, p4}, Li/y;-><init>(Li/d;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 4

    iget v0, p0, Li/k;->a:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v0, p0, Li/k;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method
