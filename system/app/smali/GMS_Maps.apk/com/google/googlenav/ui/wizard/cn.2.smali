.class Lcom/google/googlenav/ui/wizard/cN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cM;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cN;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 252
    const/16 v0, 0x43

    const-string v1, "c"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cN;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaM/am;->b(Z)V

    .line 255
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cN;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    .line 256
    return-void
.end method
