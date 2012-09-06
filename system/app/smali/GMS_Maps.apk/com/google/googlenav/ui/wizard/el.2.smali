.class Lcom/google/googlenav/ui/wizard/eL;
.super Lcom/google/googlenav/ui/wizard/eJ;
.source "SourceFile"


# instance fields
.field final synthetic f:Lcom/google/googlenav/ui/wizard/eE;

.field private final g:Lcom/google/googlenav/ui/view/dialog/bO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eE;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/bO;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eL;->f:Lcom/google/googlenav/ui/wizard/eE;

    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/ui/wizard/eJ;-><init>(Lcom/google/googlenav/ui/wizard/eE;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V

    .line 586
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/eL;->g:Lcom/google/googlenav/ui/view/dialog/bO;

    .line 587
    return-void
.end method


# virtual methods
.method a()V
    .registers 1

    .prologue
    .line 597
    return-void
.end method

.method c()Landroid/view/View;
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eL;->g:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
