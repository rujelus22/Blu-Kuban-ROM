.class Lcom/google/googlenav/settings/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/y;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/y;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/googlenav/settings/z;->a:Lcom/google/googlenav/settings/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/googlenav/settings/z;->a:Lcom/google/googlenav/settings/y;

    iget-object v0, v0, Lcom/google/googlenav/settings/y;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->a(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/z;->a:Lcom/google/googlenav/settings/y;

    iget-object v1, v1, Lcom/google/googlenav/settings/y;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v1}, Lcom/google/googlenav/settings/s;->c(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/C;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/settings/B;->b(Lcom/google/googlenav/settings/C;)V

    .line 314
    return-void
.end method
