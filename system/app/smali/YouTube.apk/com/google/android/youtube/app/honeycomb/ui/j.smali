.class final Lcom/google/android/youtube/app/honeycomb/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/j;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 121
    if-eqz p2, :cond_26

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/j;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 124
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/j;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Ljava/lang/String;Z)V

    .line 127
    :cond_26
    return-void
.end method
