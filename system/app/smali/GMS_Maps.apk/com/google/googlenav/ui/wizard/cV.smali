.class Lcom/google/googlenav/ui/wizard/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cu;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cu;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cv;->a:Lcom/google/googlenav/ui/wizard/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cv;->a:Lcom/google/googlenav/ui/wizard/cu;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cu;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->a(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/L;->b()V

    .line 78
    return-void
.end method
