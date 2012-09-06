.class LaC/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gi;

.field final synthetic b:LaC/a;


# direct methods
.method constructor <init>(LaC/a;Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, LaC/b;->b:LaC/a;

    iput-object p2, p0, LaC/b;->a:Lcom/google/googlenav/ui/wizard/gi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/F;

    .line 85
    iget-object v1, p0, LaC/b;->a:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/gi;->a(Lcom/google/googlenav/ui/wizard/F;)V

    .line 86
    return-void
.end method
