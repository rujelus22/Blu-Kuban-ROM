.class Lcom/google/googlenav/ui/wizard/fz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ft;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ft;)V
    .registers 2
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fz;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 498
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ft;->e()V

    .line 499
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fz;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->j(Lcom/google/googlenav/ui/wizard/ft;)V

    .line 500
    return-void
.end method
