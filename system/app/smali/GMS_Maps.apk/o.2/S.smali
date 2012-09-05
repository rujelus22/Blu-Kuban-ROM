.class public Lo/S;
.super Lo/R;


# instance fields
.field private a:Lo/R;

.field private b:Lo/R;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/R;Lo/R;)V
    .registers 10

    invoke-virtual {p3}, Lo/R;->c()I

    move-result v0

    invoke-virtual {p3}, Lo/R;->d()Lu/j;

    move-result-object v1

    const v2, 0x7f0b0091

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lo/R;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p3}, Lo/R;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lo/R;->b()Lo/l;

    move-result-object v3

    invoke-virtual {p3}, Lo/R;->b()Lo/l;

    move-result-object v4

    invoke-static {v3, v4}, Lo/l;->a(Lo/l;Lo/l;)Lo/l;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lo/R;-><init>(ILu/j;Ljava/lang/CharSequence;Lo/l;)V

    iput-object p2, p0, Lo/S;->a:Lo/R;

    iput-object p3, p0, Lo/S;->b:Lo/R;

    return-void
.end method


# virtual methods
.method public e()Lo/R;
    .registers 2

    iget-object v0, p0, Lo/S;->a:Lo/R;

    return-object v0
.end method

.method public f()Lo/R;
    .registers 2

    iget-object v0, p0, Lo/S;->b:Lo/R;

    return-object v0
.end method
