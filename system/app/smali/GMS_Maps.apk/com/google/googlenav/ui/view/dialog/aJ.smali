.class Lcom/google/googlenav/ui/view/dialog/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/ai;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/ai;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aj;->a:Lcom/google/googlenav/ui/view/dialog/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aj;->a:Lcom/google/googlenav/ui/view/dialog/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ai;->dismiss()V

    .line 104
    return-void
.end method
