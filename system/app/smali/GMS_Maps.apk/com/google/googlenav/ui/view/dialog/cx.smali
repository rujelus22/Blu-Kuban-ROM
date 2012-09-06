.class Lcom/google/googlenav/ui/view/dialog/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cw;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cw;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cx;->a:Lcom/google/googlenav/ui/view/dialog/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cx;->a:Lcom/google/googlenav/ui/view/dialog/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cw;->a:Lcom/google/googlenav/ui/wizard/ja;

    const/16 v1, 0x56d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Ljava/lang/String;)V

    .line 71
    return-void
.end method
