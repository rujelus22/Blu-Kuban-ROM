.class Lcom/google/googlenav/ui/view/dialog/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/X;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/X;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ac;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ac;->a:Lcom/google/googlenav/ui/view/dialog/X;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/X;->b(Z)V

    .line 304
    return-void
.end method
