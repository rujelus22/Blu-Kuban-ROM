.class Lcom/google/googlenav/ui/view/dialog/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cu;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cu;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cv;->a:Lcom/google/googlenav/ui/view/dialog/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cv;->a:Lcom/google/googlenav/ui/view/dialog/cu;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cu;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ja;->y()V

    .line 102
    return-void
.end method
