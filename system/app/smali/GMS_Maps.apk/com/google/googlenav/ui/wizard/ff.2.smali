.class Lcom/google/googlenav/ui/wizard/fF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fE;)V
    .registers 2
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fF;->a:Lcom/google/googlenav/ui/wizard/fE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fF;->a:Lcom/google/googlenav/ui/wizard/fE;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->h(Lcom/google/googlenav/ui/wizard/ft;)V

    .line 394
    return-void
.end method
