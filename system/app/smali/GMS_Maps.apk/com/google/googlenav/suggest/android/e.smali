.class Lcom/google/googlenav/suggest/android/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/BaseSuggestView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/e;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/e;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_11

    .line 89
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/e;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->onFilterComplete(I)V

    .line 91
    :cond_11
    return-void
.end method
