.class final Lcom/google/android/youtube/app/honeycomb/tablet/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/g;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/j;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 337
    const-string v0, "Error retrieving user profile"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_2a

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    const v1, 0x7f0b0191

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/d;->a(I)V

    :goto_20
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->e(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->d(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 337
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0, p2}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(Lcom/google/android/youtube/app/honeycomb/tablet/g;Lcom/google/android/youtube/core/model/UserProfile;)Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/app/ui/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/ui/i;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->b(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/app/ui/SubscribeHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->a(Lcom/google/android/youtube/core/model/UserProfile;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/j;->a:Lcom/google/android/youtube/app/honeycomb/tablet/g;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->c(Lcom/google/android/youtube/app/honeycomb/tablet/g;)Lcom/google/android/youtube/app/ui/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/g;->a(I)V

    return-void
.end method
