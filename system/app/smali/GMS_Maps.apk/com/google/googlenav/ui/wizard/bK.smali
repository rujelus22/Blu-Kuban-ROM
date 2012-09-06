.class Lcom/google/googlenav/ui/wizard/bk;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bk;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bk;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bj;->o()Z

    move-result v0

    if-nez v0, :cond_d

    .line 172
    :goto_c
    return-void

    .line 171
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bk;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bj;->f()V

    goto :goto_c
.end method
