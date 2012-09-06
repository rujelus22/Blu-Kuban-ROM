.class final Lcom/google/android/youtube/app/honeycomb/phone/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/k;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/k;)V
    .registers 2
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/k;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/n;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/k;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 307
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 307
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/honeycomb/phone/k;->a(Lcom/google/android/youtube/app/honeycomb/phone/k;Lcom/google/android/youtube/core/model/UserProfile;)Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->d(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/SubscribeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->c(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->l()V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->e(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/eh;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->f(Lcom/google/android/youtube/app/honeycomb/phone/k;)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->g(Lcom/google/android/youtube/app/honeycomb/phone/k;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->h(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->c(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/i;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->g(Lcom/google/android/youtube/app/honeycomb/phone/k;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->a(Lcom/google/android/youtube/app/honeycomb/phone/k;Landroid/view/View;)V

    :cond_4a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->i(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/e;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->j(Lcom/google/android/youtube/app/honeycomb/phone/k;)V

    :cond_57
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->k(Lcom/google/android/youtube/app/honeycomb/phone/k;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/k;->l(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/app/ui/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->c(Lcom/google/android/youtube/app/honeycomb/phone/k;)Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/i;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/n;->a:Lcom/google/android/youtube/app/honeycomb/phone/k;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->k(Lcom/google/android/youtube/app/honeycomb/phone/k;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/k;->a(Lcom/google/android/youtube/app/honeycomb/phone/k;Landroid/view/View;)V

    :cond_79
    return-void
.end method
