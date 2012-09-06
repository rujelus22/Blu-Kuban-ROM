.class Lmm;
.super LcI;
.source "OperationQueueImpl.java"


# instance fields
.field final synthetic a:Lml;

.field final synthetic a:Lmo;


# direct methods
.method constructor <init>(Lml;Lmo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lmm;->a:Lml;

    iput-object p2, p0, Lmm;->a:Lmo;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lmm;->a:Lml;

    iget-object v1, p0, Lmm;->a:Lmo;

    invoke-static {v0, v1}, Lml;->a(Lml;Lmo;)V

    .line 229
    return-void
.end method
