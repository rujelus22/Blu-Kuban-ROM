.class Li/w;
.super Li/y;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/d;JZZ)V
    .registers 7

    iput-object p1, p0, Li/w;->c:Li/f;

    iput-boolean p5, p0, Li/w;->a:Z

    iput-boolean p6, p0, Li/w;->b:Z

    invoke-direct {p0, p2, p3, p4}, Li/y;-><init>(Li/d;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "onWifi: %s, onCellular: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Li/w;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Li/w;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
