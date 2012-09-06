.class Lcom/google/googlenav/ui/wizard/fB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fA;)V
    .registers 2
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fB;->a:Lcom/google/googlenav/ui/wizard/fA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fB;->a:Lcom/google/googlenav/ui/wizard/fA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fA;->b:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->k(Lcom/google/googlenav/ui/wizard/ft;)V

    .line 523
    return-void
.end method
