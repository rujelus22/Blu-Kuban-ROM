.class Lo/g;
.super Lo/a;


# instance fields
.field private a:Lo/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private final d:Landroid/os/Handler;

.field private e:I

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Lo/a;-><init>()V

    iput-object p1, p0, Lo/g;->f:Landroid/content/Context;

    iput-object p2, p0, Lo/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/g;->c:Ljava/io/File;

    iput-object p4, p0, Lo/g;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lo/g;Lo/a;)Lo/a;
    .registers 2

    iput-object p1, p0, Lo/g;->a:Lo/a;

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lo/g;->a:Lo/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/g;->a:Lo/a;

    invoke-virtual {v0}, Lo/a;->a()V

    :cond_9
    return-void
.end method

.method public a(Lo/b;)V
    .registers 5

    iget-object v0, p0, Lo/g;->c:Ljava/io/File;

    if-nez v0, :cond_f

    const-string v0, "AlertGenerator"

    const-string v1, "mFile=null"

    invoke-static {v0, v1}, Ln/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lo/b;->a(Lo/a;)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lo/g;->f:Landroid/content/Context;

    iget-object v1, p0, Lo/g;->c:Ljava/io/File;

    iget-object v2, p0, Lo/g;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lo/L;->a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)Lo/a;

    move-result-object v0

    iput-object v0, p0, Lo/g;->a:Lo/a;

    iget-object v0, p0, Lo/g;->a:Lo/a;

    if-nez v0, :cond_29

    invoke-interface {p1, p0}, Lo/b;->a(Lo/a;)V

    :goto_22
    iget v0, p0, Lo/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/g;->e:I

    goto :goto_e

    :cond_29
    iget-object v0, p0, Lo/g;->a:Lo/a;

    new-instance v1, Lo/h;

    invoke-direct {v1, p0, p1}, Lo/h;-><init>(Lo/g;Lo/b;)V

    invoke-virtual {v0, v1}, Lo/a;->a(Lo/b;)V

    goto :goto_22
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lo/g;->a:Lo/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/g;->a:Lo/a;

    invoke-virtual {v0}, Lo/a;->b()V

    :cond_9
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lo/g;->c:Ljava/io/File;

    iput-object v0, p0, Lo/g;->b:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo/g;->b:Ljava/lang/String;

    return-object v0
.end method
