.class Lcom/google/googlenav/ui/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/android/B;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5979
    iput-object p1, p0, Lcom/google/googlenav/ui/N;->b:Lcom/google/googlenav/ui/v;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/N;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 5982
    iget-boolean v0, p0, Lcom/google/googlenav/ui/N;->a:Z

    if-eqz v0, :cond_14

    .line 5983
    iget-object v0, p0, Lcom/google/googlenav/ui/N;->b:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->d(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const-string v1, "offline"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/J;->a(Ljava/lang/String;Z)V

    .line 5986
    :cond_14
    return-void
.end method
