.class Lcom/google/googlenav/ui/wizard/bD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lad/d;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bz;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bz;Lad/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bD;->b:Lcom/google/googlenav/ui/wizard/bz;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bD;->a:Lad/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bD;->b:Lcom/google/googlenav/ui/wizard/bz;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bD;->a:Lad/d;

    invoke-virtual {v1}, Lad/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/bw;->b(Ljava/lang/String;)V

    .line 207
    return-void
.end method
