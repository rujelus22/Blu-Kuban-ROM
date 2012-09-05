.class Li/l;
.super Li/y;


# instance fields
.field final synthetic a:Le/u;

.field final synthetic b:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/d;JLe/u;)V
    .registers 6

    iput-object p1, p0, Li/l;->b:Li/f;

    iput-object p5, p0, Li/l;->a:Le/u;

    invoke-direct {p0, p2, p3, p4}, Li/y;-><init>(Li/d;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object v0, p0, Li/l;->a:Le/u;

    invoke-virtual {v0, p1}, Le/u;->a(Ljava/io/PrintWriter;)V

    return-void
.end method
