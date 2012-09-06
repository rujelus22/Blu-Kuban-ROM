.class Lcom/google/googlenav/ui/wizard/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/hf;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hg;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hg;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hh;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/cy;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hh;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ui/wizard/hg;)Lcom/google/googlenav/ai;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hh;->a:Lcom/google/googlenav/ui/wizard/hg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hh;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ui/wizard/hg;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hh;->a:Lcom/google/googlenav/ui/wizard/hg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, LaF/c;

    invoke-virtual {v0, p2}, LaF/c;->a(Lcom/google/googlenav/cy;)V

    .line 109
    :cond_27
    return-void
.end method
