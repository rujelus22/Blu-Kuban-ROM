.class Laz/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laz/m;

.field final synthetic b:Laz/a;


# direct methods
.method constructor <init>(Laz/a;Laz/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Laz/e;->b:Laz/a;

    iput-object p2, p0, Laz/e;->a:Laz/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 493
    iget-object v0, p0, Laz/e;->a:Laz/m;

    new-instance v1, Laz/l;

    invoke-direct {v1}, Laz/l;-><init>()V

    iget-object v2, p0, Laz/e;->b:Laz/a;

    invoke-static {v2}, Laz/a;->j(Laz/a;)[Laz/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Laz/l;->a([Laz/f;)Laz/l;

    move-result-object v1

    iget-object v2, p0, Laz/e;->b:Laz/a;

    invoke-static {v2}, Laz/a;->a(Laz/a;)Laz/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Laz/l;->a(Laz/f;)Laz/l;

    move-result-object v1

    iget-object v2, p0, Laz/e;->b:Laz/a;

    invoke-static {v2}, Laz/a;->i(Laz/a;)[Laz/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Laz/l;->b([Laz/f;)Laz/l;

    move-result-object v1

    iget-object v2, p0, Laz/e;->b:Laz/a;

    invoke-static {v2}, Laz/a;->d(Laz/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Laz/l;->a(I)Laz/l;

    move-result-object v1

    invoke-interface {v0, v1}, Laz/m;->onOfflineDataUpdate(Laz/l;)V

    .line 499
    return-void
.end method
