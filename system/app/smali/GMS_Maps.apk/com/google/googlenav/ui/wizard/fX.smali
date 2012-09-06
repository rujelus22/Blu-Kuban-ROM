.class Lcom/google/googlenav/ui/wizard/fx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ft;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ft;)V
    .registers 2
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fx;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fx;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ft;->a()V

    .line 511
    return-void
.end method
