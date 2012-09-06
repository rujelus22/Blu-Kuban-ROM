.class Lcom/google/googlenav/suggest/android/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/BaseSuggestView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/f;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 123
    if-eqz p2, :cond_f

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/f;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/f;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a(Lcom/google/googlenav/suggest/android/BaseSuggestView;Ljava/lang/CharSequence;I)V

    .line 132
    :goto_e
    return-void

    .line 129
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/f;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    iput-boolean v2, v0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->b:Z

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/f;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a(Z)V

    goto :goto_e
.end method
