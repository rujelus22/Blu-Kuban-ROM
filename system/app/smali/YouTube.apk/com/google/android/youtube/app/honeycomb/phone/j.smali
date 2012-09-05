.class final Lcom/google/android/youtube/app/honeycomb/phone/j;
.super Lcom/google/android/youtube/core/ui/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/a;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/async/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->a:Lcom/google/android/youtube/core/async/a;

    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/ui/f;-><init>(Lcom/google/android/youtube/core/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->a:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/youtube/core/client/ad;->f(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 179
    :goto_1e
    return-void

    .line 177
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->showDialog(I)V

    goto :goto_1e
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Z)Z

    .line 190
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/f;->a(Ljava/lang/Exception;)V

    .line 191
    return-void
.end method

.method public final d_()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/j;->b:Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ChannelActivity;Z)Z

    .line 184
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/f;->d_()V

    .line 185
    return-void
.end method
