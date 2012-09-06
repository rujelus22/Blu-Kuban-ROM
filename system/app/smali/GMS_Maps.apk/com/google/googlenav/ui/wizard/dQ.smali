.class Lcom/google/googlenav/ui/wizard/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dq;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dq;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/ui/wizard/dp;)V

    .line 340
    return-void
.end method
