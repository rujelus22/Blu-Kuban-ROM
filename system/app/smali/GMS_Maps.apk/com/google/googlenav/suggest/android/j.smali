.class Lcom/google/googlenav/suggest/android/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/SuggestView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/j;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/j;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/j;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->isPopupShowing()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Lcom/google/googlenav/suggest/android/SuggestView;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/j;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-static {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->b(Lcom/google/googlenav/suggest/android/SuggestView;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/j;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->a(Lcom/google/googlenav/suggest/android/SuggestView;Z)V

    :cond_19
    return-void
.end method
