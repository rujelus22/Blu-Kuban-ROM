.class Li/u;
.super Li/y;


# instance fields
.field final synthetic a:I

.field final synthetic b:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/d;JI)V
    .registers 6

    iput-object p1, p0, Li/u;->b:Li/f;

    iput p5, p0, Li/u;->a:I

    invoke-direct {p0, p2, p3, p4}, Li/y;-><init>(Li/d;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 3

    iget v0, p0, Li/u;->a:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method
