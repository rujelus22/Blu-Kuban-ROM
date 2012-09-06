.class public final Lcom/google/googlenav/friend/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dk;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/aw;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/aw;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/googlenav/friend/ax;->a:Lcom/google/googlenav/friend/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 310
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/ax;->a:Lcom/google/googlenav/friend/aw;

    iget-object v1, v1, Lcom/google/googlenav/friend/aw;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 311
    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "roir"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/googlenav/friend/ax;->a:Lcom/google/googlenav/friend/aw;

    iget-object v0, v0, Lcom/google/googlenav/friend/aw;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->s()V

    .line 302
    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "oir"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method
