.class final Lcom/google/android/youtube/app/honeycomb/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/q;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/q;)V
    .registers 3
    .parameter

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/ui/v;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/q;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/q;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/v;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/v;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->o(Lcom/google/android/youtube/app/honeycomb/ui/q;)Lcom/google/android/youtube/core/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/v;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->g(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 379
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/v;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Lcom/google/android/youtube/app/honeycomb/ui/q;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/v;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->m(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/v;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/q;->j(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/v;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0, v5}, Lcom/google/android/youtube/app/honeycomb/ui/q;->b(Lcom/google/android/youtube/app/honeycomb/ui/q;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/v;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->n(Lcom/google/android/youtube/app/honeycomb/ui/q;)V

    return-void
.end method
