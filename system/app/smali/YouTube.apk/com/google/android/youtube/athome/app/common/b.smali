.class final Lcom/google/android/youtube/athome/app/common/b;
.super Lcom/google/android/youtube/athome/common/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/youtube/athome/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/youtube/athome/common/d;)Landroid/support/place/rpc/Flattenable;
    .registers 5
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/youtube/athome/app/common/c;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/app/common/c;-><init>()V

    const-string v1, "adTitle"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/c;->a(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/c;

    move-result-object v0

    const-string v1, "clickthroughUri"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/c;->a(Landroid/net/Uri;)Lcom/google/android/youtube/athome/app/common/c;

    move-result-object v0

    const-string v1, "skippable"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/c;->a(Z)Lcom/google/android/youtube/athome/app/common/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/athome/app/common/c;->a()Lcom/google/android/youtube/athome/app/common/a;

    move-result-object v0

    return-object v0
.end method
