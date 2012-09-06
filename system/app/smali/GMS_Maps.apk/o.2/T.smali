.class Lo/t;
.super Lt/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lo/r;


# direct methods
.method constructor <init>(Lo/r;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lo/t;->a:Lo/r;

    invoke-direct {p0, p2}, Lt/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Lo/t;->a:Lo/r;

    invoke-static {v0}, Lo/r;->a(Lo/r;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 448
    iget-object v0, p0, Lo/t;->a:Lo/r;

    invoke-static {v0}, Lo/r;->c(Lo/r;)Lo/p;

    move-result-object v0

    iget-object v1, p0, Lo/t;->a:Lo/r;

    invoke-static {v1}, Lo/r;->b(Lo/r;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/p;->a(Landroid/location/Location;)V

    .line 450
    iget-object v0, p0, Lo/t;->a:Lo/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/r;->a(Lo/r;Landroid/location/Location;)Landroid/location/Location;

    .line 452
    :cond_1d
    iget-object v0, p0, Lo/t;->a:Lo/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/r;->a(Lo/r;Z)Z

    .line 453
    return-void
.end method
