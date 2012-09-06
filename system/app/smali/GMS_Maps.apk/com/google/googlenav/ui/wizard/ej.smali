.class Lcom/google/googlenav/ui/wizard/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/eo;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ei;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ei;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ej;->a:Lcom/google/googlenav/ui/wizard/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ej;->a:Lcom/google/googlenav/ui/wizard/ei;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ei;->a:Lcom/google/googlenav/ui/wizard/eh;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eh;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/ec;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ej;->a:Lcom/google/googlenav/ui/wizard/ei;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/ei;->a:Lcom/google/googlenav/ui/wizard/eh;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/eh;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->I()Lcom/google/googlenav/friend/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/j;->k()Lcom/google/googlenav/friend/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ec;->a(Lcom/google/googlenav/friend/i;)V

    .line 72
    return-void
.end method
