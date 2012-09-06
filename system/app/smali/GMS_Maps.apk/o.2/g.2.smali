.class Lo/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/q;


# instance fields
.field final synthetic a:Lo/E;


# direct methods
.method private constructor <init>(Lo/E;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lo/G;->a:Lo/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/E;Lo/F;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lo/G;-><init>(Lo/E;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 116
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lo/G;->a:Lo/E;

    invoke-static {v0}, Lo/E;->a(Lo/E;)Lo/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/r;->a(IZ)V

    .line 99
    return-void
.end method

.method public a(Lac/g;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    instance-of v0, p1, Lo/g;

    if-eqz v0, :cond_f

    .line 91
    iget-object v0, p0, Lo/G;->a:Lo/E;

    invoke-static {v0}, Lo/E;->a(Lo/E;)Lo/r;

    move-result-object v0

    check-cast p1, Lo/g;

    invoke-virtual {v0, p1}, Lo/r;->a(Lo/g;)V

    .line 93
    :cond_f
    return-void
.end method

.method public b(Lac/g;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    instance-of v0, p1, Lo/g;

    if-eqz v0, :cond_13

    .line 106
    check-cast p1, Lo/g;

    .line 107
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lo/g;->a(I)V

    .line 109
    iget-object v0, p0, Lo/G;->a:Lo/E;

    invoke-static {v0}, Lo/E;->a(Lo/E;)Lo/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/r;->a(Lo/g;)V

    .line 111
    :cond_13
    return-void
.end method
