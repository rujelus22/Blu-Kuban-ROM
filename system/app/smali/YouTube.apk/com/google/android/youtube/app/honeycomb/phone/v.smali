.class final Lcom/google/android/youtube/app/honeycomb/phone/v;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Z)Z

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->c(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->e(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const-string v1, "TRENDING_GUIDE_ITEM"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/v;->h()I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->f(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "GuideSubscriptionsInit"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->g(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/YouTubeApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/YouTubeApplication;->b(I)V

    .line 220
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->c(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Z)Z

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->d(Lcom/google/android/youtube/app/honeycomb/phone/t;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const-string v1, "THE_FEED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    .line 202
    :cond_1b
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/ui/g;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/ui/g;III)V

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->h(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    .line 226
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 194
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/v;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

.method protected final b()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/v;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->e(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    .line 213
    return-void
.end method
