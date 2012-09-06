.class Lcom/google/googlenav/ui/wizard/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bm;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bm;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bj;->a(Lcom/google/googlenav/ui/wizard/bj;)V

    .line 292
    return-void
.end method
