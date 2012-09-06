.class Lme;
.super LcI;
.source "MultiOperationQueueImpl.java"


# instance fields
.field final synthetic a:LkG;

.field final synthetic a:Lmc;

.field final synthetic a:Lmo;


# direct methods
.method constructor <init>(Lmc;LkG;Lmo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lme;->a:Lmc;

    iput-object p2, p0, Lme;->a:LkG;

    iput-object p3, p0, Lme;->a:Lmo;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 390
    iget-object v0, p0, Lme;->a:Lmc;

    iget-object v1, p0, Lme;->a:LkG;

    iget-object v2, p0, Lme;->a:Lmo;

    invoke-static {v0, v1, v2}, Lmc;->a(Lmc;LkG;Lmo;)V

    .line 391
    return-void
.end method
