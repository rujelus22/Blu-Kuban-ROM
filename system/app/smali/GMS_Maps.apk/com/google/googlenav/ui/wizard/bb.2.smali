.class Lcom/google/googlenav/ui/wizard/bB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/cn;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bz;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bz;Lcom/google/googlenav/cn;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bB;->b:Lcom/google/googlenav/ui/wizard/bz;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bB;->a:Lcom/google/googlenav/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bB;->b:Lcom/google/googlenav/ui/wizard/bz;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bz;->a:Lcom/google/googlenav/ui/wizard/bw;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bB;->a:Lcom/google/googlenav/cn;

    invoke-virtual {v1}, Lcom/google/googlenav/cn;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/bw;->a(Ljava/lang/String;)V

    .line 162
    return-void
.end method
