.class Lcom/google/googlenav/ui/wizard/dA;
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
    .line 789
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dA;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dA;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dp;->i()V

    .line 793
    return-void
.end method
