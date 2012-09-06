.class LVm;
.super Lcg;
.source "SingleDocSynchronizerImpl.java"


# instance fields
.field final synthetic a:LVk;

.field final synthetic a:LkR;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(LVk;Landroid/content/Context;LkR;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, LVm;->a:LVk;

    iput-object p2, p0, LVm;->b:Landroid/content/Context;

    iput-object p3, p0, LVm;->a:LkR;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, LVm;->a:LVk;

    iget-object v1, p0, LVm;->b:Landroid/content/Context;

    iget-object v2, p0, LVm;->a:LkR;

    invoke-virtual {v0, v1, v2}, LVk;->d(Landroid/content/Context;LkR;)V

    .line 78
    iget-object v0, p0, LVm;->a:LVk;

    iget-object v1, p0, LVm;->b:Landroid/content/Context;

    iget-object v2, p0, LVm;->a:LkR;

    invoke-virtual {v0, v1, v2}, LVk;->e(Landroid/content/Context;LkR;)V

    .line 79
    return-void
.end method
