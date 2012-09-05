.class Li/t;
.super Li/y;


# instance fields
.field final synthetic a:Le/b;

.field final synthetic b:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/d;JLe/b;)V
    .registers 6

    iput-object p1, p0, Li/t;->b:Li/f;

    iput-object p5, p0, Li/t;->a:Le/b;

    invoke-direct {p0, p2, p3, p4}, Li/y;-><init>(Li/d;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object v0, p0, Li/t;->a:Le/b;

    invoke-static {p1, v0}, Le/b;->a(Ljava/io/PrintWriter;Le/b;)V

    return-void
.end method
