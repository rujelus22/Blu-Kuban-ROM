.class LVl;
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
    .line 64
    iput-object p1, p0, LVl;->a:LVk;

    iput-object p2, p0, LVl;->b:Landroid/content/Context;

    iput-object p3, p0, LVl;->a:LkR;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, LVl;->a:LVk;

    iget-object v1, p0, LVl;->b:Landroid/content/Context;

    iget-object v2, p0, LVl;->a:LkR;

    invoke-virtual {v0, v1, v2}, LVk;->e(Landroid/content/Context;LkR;)V

    .line 68
    return-void
.end method
