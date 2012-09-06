.class Lcom/google/googlenav/ui/view/android/bW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/google/googlenav/ui/view/android/bR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bR;Lcom/google/googlenav/ui/g;Landroid/widget/TextView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bW;->c:Lcom/google/googlenav/ui/view/android/bR;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bW;->a:Lcom/google/googlenav/ui/g;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bW;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bW;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x6ab

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bW;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 173
    return-void
.end method
