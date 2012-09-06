.class public Lch;
.super Lanf;
.source "ContextModule.java"


# instance fields
.field private final a:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lanf;-><init>()V

    .line 37
    iput-object p1, p0, Lch;->a:Landroid/app/Application;

    .line 38
    return-void
.end method

.method static synthetic a(Lch;)Landroid/app/Application;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lch;->a:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 42
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lch;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lcj;

    invoke-interface {v0, v1}, LanQ;->b(Ljava/lang/Class;)LanV;

    .line 43
    const-class v0, Lck;

    invoke-virtual {p0, v0}, Lch;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lcl;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    move-result-object v0

    const-class v1, LanN;

    invoke-interface {v0, v1}, LanV;->a(Ljava/lang/Class;)V

    .line 45
    iget-object v0, p0, Lch;->a:Landroid/app/Application;

    if-eqz v0, :cond_53

    .line 46
    new-instance v0, Lcl;

    iget-object v1, p0, Lch;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcl;-><init>(Landroid/content/Context;)V

    .line 47
    const-class v1, Lcl;

    invoke-virtual {p0, v1}, Lch;->a(Ljava/lang/Class;)LanQ;

    move-result-object v1

    invoke-static {v0}, LaqX;->a(Ljava/lang/Object;)LanD;

    move-result-object v0

    invoke-interface {v1, v0}, LanQ;->a(LanD;)LanV;

    .line 48
    const-class v0, Landroid/app/Application;

    invoke-virtual {p0, v0}, Lch;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    iget-object v1, p0, Lch;->a:Landroid/app/Application;

    invoke-static {v1}, LaqX;->a(Ljava/lang/Object;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 54
    :goto_44
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lch;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    new-instance v1, Lci;

    invoke-direct {v1, p0}, Lci;-><init>(Lch;)V

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 61
    return-void

    .line 50
    :cond_53
    const-class v0, Lcl;

    invoke-virtual {p0, v0}, Lch;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    invoke-static {v2}, LaqX;->a(Ljava/lang/Object;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    .line 51
    const-class v0, Landroid/app/Application;

    invoke-virtual {p0, v0}, Lch;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    invoke-static {v2}, LaqX;->a(Ljava/lang/Object;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(LanD;)LanV;

    goto :goto_44
.end method
