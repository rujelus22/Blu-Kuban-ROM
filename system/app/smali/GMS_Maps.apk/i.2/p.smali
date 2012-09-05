.class Li/p;
.super Li/y;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/d;JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Li/p;->c:Li/f;

    iput-object p5, p0, Li/p;->a:Ljava/lang/String;

    iput-object p6, p0, Li/p;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Li/y;-><init>(Li/d;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object v0, p0, Li/p;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Li/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
