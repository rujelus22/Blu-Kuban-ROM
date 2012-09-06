.class Lcom/google/googlenav/ui/view/dialog/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bm;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bo;->a:Lcom/google/googlenav/ui/view/dialog/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bo;->a:Lcom/google/googlenav/ui/view/dialog/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bm;->dismiss()V

    .line 81
    return-void
.end method
