.class Lcom/google/googlenav/friend/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/E;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/E;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/googlenav/friend/F;->a:Lcom/google/googlenav/friend/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/googlenav/friend/F;->a:Lcom/google/googlenav/friend/E;

    iget-object v0, v0, Lcom/google/googlenav/friend/E;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 216
    iget-object v0, p0, Lcom/google/googlenav/friend/F;->a:Lcom/google/googlenav/friend/E;

    iget-object v1, p0, Lcom/google/googlenav/friend/F;->a:Lcom/google/googlenav/friend/E;

    iget-object v1, v1, Lcom/google/googlenav/friend/E;->c:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/friend/F;->a:Lcom/google/googlenav/friend/E;

    iget-object v2, v2, Lcom/google/googlenav/friend/E;->b:Lcom/google/googlenav/android/Y;

    iget-object v3, p0, Lcom/google/googlenav/friend/F;->a:Lcom/google/googlenav/friend/E;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/friend/E;->a(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)Lcom/google/googlenav/friend/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bt;->a()V

    .line 218
    return-void
.end method
