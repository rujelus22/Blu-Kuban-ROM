.class Lcom/google/googlenav/ui/view/dialog/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/a;)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/i;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/i;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/a;->e(Lcom/google/googlenav/ui/view/dialog/a;)V

    .line 373
    return-void
.end method
