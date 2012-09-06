.class public Lcom/google/googlenav/ui/wizard/ib;
.super Lcom/google/googlenav/ui/wizard/bo;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/ia;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ia;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ib;->b:Lcom/google/googlenav/ui/wizard/ia;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/bo;-><init>(Lcom/google/googlenav/ui/wizard/bj;Lcom/google/googlenav/ui/g;)V

    .line 50
    return-void
.end method


# virtual methods
.method public I_()V
    .registers 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/bo;->I_()V

    .line 56
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ib;->b:Lcom/google/googlenav/ui/wizard/ia;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ia;->h:Lcom/google/googlenav/ui/view/android/bb;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ic;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ic;-><init>(Lcom/google/googlenav/ui/wizard/ib;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 65
    return-void
.end method
