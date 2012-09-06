.class final Lcom/google/android/youtube/app/honeycomb/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/m;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/m;)V
    .registers 2
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/r;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/m;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/r;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/m;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/r;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->o(Lcom/google/android/youtube/app/honeycomb/ui/m;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/r;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->g(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/app/Activity;

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

    .line 380
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/r;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a(Lcom/google/android/youtube/app/honeycomb/ui/m;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/r;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->m(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/r;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/m;->j(Lcom/google/android/youtube/app/honeycomb/ui/m;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/r;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v0, v5}, Lcom/google/android/youtube/app/honeycomb/ui/m;->b(Lcom/google/android/youtube/app/honeycomb/ui/m;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/r;->a:Lcom/google/android/youtube/app/honeycomb/ui/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->n(Lcom/google/android/youtube/app/honeycomb/ui/m;)V

    return-void
.end method
