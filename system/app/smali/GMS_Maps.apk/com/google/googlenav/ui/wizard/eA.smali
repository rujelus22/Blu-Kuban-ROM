.class Lcom/google/googlenav/ui/wizard/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dX;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dX;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ea;->a:Lcom/google/googlenav/ui/wizard/dX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ea;->a:Lcom/google/googlenav/ui/wizard/dX;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dX;->a(Lcom/google/googlenav/ui/wizard/dX;)Lcom/google/googlenav/ui/wizard/eb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/eb;->c()V

    .line 134
    return-void
.end method
