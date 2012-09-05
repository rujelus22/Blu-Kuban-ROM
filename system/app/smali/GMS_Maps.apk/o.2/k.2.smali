.class Lo/k;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lo/d;

.field private final b:Lo/R;

.field private c:Lo/Q;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(Lo/d;Lo/R;Lo/Q;)V
    .registers 4

    iput-object p1, p0, Lo/k;->a:Lo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/k;->b:Lo/R;

    iput-object p3, p0, Lo/k;->c:Lo/Q;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lo/k;->a(Lo/a;)V

    iget-object v0, p0, Lo/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lo/k;->a:Lo/d;

    invoke-static {v0}, Lo/d;->a(Lo/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lo/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lo/k;->d:Ljava/lang/String;

    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lo/k;->d:Ljava/lang/String;

    iput-object p2, p0, Lo/k;->e:Ljava/io/File;

    return-void
.end method

.method public a(Lo/a;)V
    .registers 4

    iget-object v0, p0, Lo/k;->c:Lo/Q;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lo/k;->c:Lo/Q;

    iget-object v1, p0, Lo/k;->b:Lo/R;

    invoke-interface {v0, v1, p1}, Lo/Q;->a(Lo/R;Lo/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/k;->c:Lo/Q;

    :cond_e
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo/k;->b:Lo/R;

    invoke-virtual {v0}, Lo/R;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lo/g;
    .registers 6

    iget-object v0, p0, Lo/k;->e:Ljava/io/File;

    invoke-static {v0}, Lo/d;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lo/k;->a()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lo/g;

    iget-object v1, p0, Lo/k;->a:Lo/d;

    invoke-static {v1}, Lo/d;->b(Lo/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/k;->d:Ljava/lang/String;

    iget-object v3, p0, Lo/k;->e:Ljava/io/File;

    iget-object v4, p0, Lo/k;->a:Lo/d;

    invoke-static {v4}, Lo/d;->c(Lo/d;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)V

    goto :goto_c
.end method
