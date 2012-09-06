.class Lcom/google/googlenav/ui/wizard/fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fh;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fh;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fj;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fj;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/wizard/fh;->a(I)V

    .line 53
    const/16 v0, 0x58

    const-string v1, "set"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "c=d"

    aput-object v3, v2, v4

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fj;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fh;->a()V

    .line 58
    return-void
.end method
