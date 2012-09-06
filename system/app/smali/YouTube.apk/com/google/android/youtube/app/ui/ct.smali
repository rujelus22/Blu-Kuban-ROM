.class final Lcom/google/android/youtube/app/ui/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/SubscribeHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/ct;-><init>(Lcom/google/android/youtube/app/ui/SubscribeHelper;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->b(Lcom/google/android/youtube/app/ui/SubscribeHelper;)Lcom/google/android/youtube/core/async/l;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 176
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->ERROR:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    .line 184
    return-void
.end method

.method public final e_()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ct;->a:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    sget-object v1, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->ERROR:Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/app/ui/SubscribeHelper;Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V

    .line 180
    return-void
.end method
