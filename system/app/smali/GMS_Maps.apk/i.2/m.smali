.class Li/m;
.super Li/y;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/d;JZ)V
    .registers 6

    iput-object p1, p0, Li/m;->b:Li/f;

    iput-boolean p5, p0, Li/m;->a:Z

    invoke-direct {p0, p2, p3, p4}, Li/y;-><init>(Li/d;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 3

    iget-boolean v0, p0, Li/m;->a:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    return-void
.end method
