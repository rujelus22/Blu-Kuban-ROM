.class Lcom/google/googlenav/ui/wizard/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/a;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/b;->a:Lcom/google/googlenav/ui/wizard/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/b;->a:Lcom/google/googlenav/ui/wizard/a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/a;->a(Lcom/google/googlenav/ui/wizard/a;Ljava/lang/String;)V

    .line 61
    return-void
.end method
