.class Lo/I;
.super Ljava/lang/Object;

# interfaces
.implements Lo/b;


# instance fields
.field final synthetic a:Lo/G;

.field private final b:Lo/b;

.field private c:I


# direct methods
.method public constructor <init>(Lo/G;Lo/b;)V
    .registers 3

    iput-object p1, p0, Lo/I;->a:Lo/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/I;->b:Lo/b;

    return-void
.end method


# virtual methods
.method public a(Lo/a;)V
    .registers 4

    invoke-virtual {p0}, Lo/I;->a()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lo/I;->b:Lo/b;

    iget-object v1, p0, Lo/I;->a:Lo/G;

    invoke-interface {v0, v1}, Lo/b;->a(Lo/a;)V

    :cond_d
    return-void
.end method

.method public a()Z
    .registers 3

    iget v0, p0, Lo/I;->c:I

    iget-object v1, p0, Lo/I;->a:Lo/G;

    invoke-static {v1}, Lo/G;->a(Lo/G;)[Lo/a;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lo/I;->a:Lo/G;

    invoke-static {v0}, Lo/G;->a(Lo/G;)[Lo/a;

    move-result-object v0

    iget v1, p0, Lo/I;->c:I

    aget-object v0, v0, v1

    iget v1, p0, Lo/I;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/I;->c:I

    invoke-virtual {v0, p0}, Lo/a;->a(Lo/b;)V

    const/4 v0, 0x1

    goto :goto_c
.end method
