.class public LJf;
.super Lanf;
.source "HttpModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lanf;-><init>()V

    .line 44
    iput-object p1, p0, LJf;->a:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic a(LJf;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LJf;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 49
    const-class v0, LIG;

    invoke-virtual {p0, v0}, LJf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LII;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 50
    const-class v0, LID;

    invoke-virtual {p0, v0}, LJf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LIE;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 51
    const-class v0, LJH;

    invoke-virtual {p0, v0}, LJf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LJh;

    invoke-interface {v0, v1}, LanQ;->b(Ljava/lang/Class;)LanV;

    .line 52
    const-class v0, LJh;

    invoke-virtual {p0, v0}, LJf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)V

    .line 53
    const-class v0, LIL;

    invoke-virtual {p0, v0}, LJf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LIM;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 54
    const-class v0, LJP;

    invoke-virtual {p0, v0}, LJf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LJQ;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 57
    const-class v0, LIF;

    invoke-virtual {p0, v0}, LJf;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    new-instance v1, LJg;

    invoke-direct {v1, p0}, LJg;-><init>(LJf;)V

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
