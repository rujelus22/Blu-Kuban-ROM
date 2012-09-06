.class final Lcom/google/android/youtube/app/ui/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/SubscribeHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cs;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 346
    const/4 v0, -0x1

    if-ne p2, v0, :cond_26

    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cs;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->WORKING:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cs;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->l(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cs;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->g(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/app/ui/cy;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/cs;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/cs;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v4}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->i(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/d;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/app/ui/cy;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 351
    :cond_26
    return-void
.end method
