.class Li/x;
.super Li/y;


# instance fields
.field final synthetic a:Li/B;

.field final synthetic b:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/d;JLi/B;)V
    .registers 6

    iput-object p1, p0, Li/x;->b:Li/f;

    iput-object p5, p0, Li/x;->a:Li/B;

    invoke-direct {p0, p2, p3, p4}, Li/y;-><init>(Li/d;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object v0, p0, Li/x;->a:Li/B;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
