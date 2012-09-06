.class Lcom/google/googlenav/ui/view/dialog/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cs;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cs;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ct;->a:Lcom/google/googlenav/ui/view/dialog/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ct;->a:Lcom/google/googlenav/ui/view/dialog/cs;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cs;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ja;->i()V

    .line 57
    return-void
.end method
