.class Li/g;
.super Li/y;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/d;JIZ)V
    .registers 7

    iput-object p1, p0, Li/g;->c:Li/f;

    iput p5, p0, Li/g;->a:I

    iput-boolean p6, p0, Li/g;->b:Z

    invoke-direct {p0, p2, p3, p4}, Li/y;-><init>(Li/d;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 3

    iget v0, p0, Li/g;->a:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " trigger "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Li/g;->b:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    return-void
.end method
