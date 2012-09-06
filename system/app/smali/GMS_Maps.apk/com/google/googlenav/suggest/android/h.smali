.class Lcom/google/googlenav/suggest/android/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/BaseSuggestView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->isPopupShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->b:Z

    .line 173
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    iget-boolean v0, v0, Lcom/google/googlenav/suggest/android/BaseSuggestView;->b:Z

    if-nez v0, :cond_16

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/h;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a(Z)V

    .line 176
    :cond_16
    return-void
.end method
