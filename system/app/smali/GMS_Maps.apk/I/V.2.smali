.class public Li/V;
.super Li/U;
.source "SourceFile"


# instance fields
.field private a:Li/U;

.field private b:Li/U;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li/U;Li/U;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-virtual {p3}, Li/U;->c()I

    move-result v0

    invoke-virtual {p3}, Li/U;->d()Lo/j;

    move-result-object v1

    const v2, 0x7f0d009f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Li/U;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p3}, Li/U;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Li/U;->b()Li/l;

    move-result-object v3

    invoke-virtual {p3}, Li/U;->b()Li/l;

    move-result-object v4

    invoke-static {v3, v4}, Li/l;->a(Li/l;Li/l;)Li/l;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Li/U;-><init>(ILo/j;Ljava/lang/CharSequence;Li/l;)V

    .line 23
    iput-object p2, p0, Li/V;->a:Li/U;

    .line 24
    iput-object p3, p0, Li/V;->b:Li/U;

    .line 25
    return-void
.end method


# virtual methods
.method public e()Li/U;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Li/V;->a:Li/U;

    return-object v0
.end method

.method public f()Li/U;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Li/V;->b:Li/U;

    return-object v0
.end method
