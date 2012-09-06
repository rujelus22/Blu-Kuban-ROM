.class Lcom/google/googlenav/ui/view/dialog/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestView;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/bm;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bm;Lcom/google/googlenav/suggest/android/SuggestView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bp;->b:Lcom/google/googlenav/ui/view/dialog/bm;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bp;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 89
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bp;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 91
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/bm;->l()Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v0

    const/16 v1, 0x35c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    :goto_22
    return-void

    .line 95
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bp;->b:Lcom/google/googlenav/ui/view/dialog/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bm;->dismiss()V

    .line 96
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bp;->b:Lcom/google/googlenav/ui/view/dialog/bm;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bp;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bm;->a(Ljava/lang/String;)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/bm;->m()Lcom/google/googlenav/android/BaseMapsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/aW;IZ)V

    goto :goto_22
.end method
