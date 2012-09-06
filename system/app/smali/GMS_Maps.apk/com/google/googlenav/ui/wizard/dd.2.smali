.class Lcom/google/googlenav/ui/wizard/dD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 2
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dp;->A()V

    .line 824
    return-void
.end method
