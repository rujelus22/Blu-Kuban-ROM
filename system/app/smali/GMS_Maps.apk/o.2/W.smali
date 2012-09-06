.class Lo/w;
.super Lt/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lo/r;


# direct methods
.method private constructor <init>(Lo/r;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lo/w;->a:Lo/r;

    invoke-direct {p0}, Lt/t;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/r;Lo/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lo/w;-><init>(Lo/r;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lo/w;->c(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method static synthetic a(Lo/w;)V
    .registers 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lo/w;->b()V

    return-void
.end method

.method static synthetic a(Lo/w;Landroid/content/Context;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lo/w;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .registers 1

    .prologue
    .line 94
    invoke-super {p0}, Lt/t;->d()V

    .line 95
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lo/w;->a:Lo/r;

    invoke-virtual {v0}, Lo/r;->f()V

    .line 105
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    return-void
.end method
