.class final Lcom/google/android/youtube/athome/app/common/d;
.super Lcom/google/android/youtube/athome/common/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/youtube/athome/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/youtube/athome/common/d;)Landroid/support/place/rpc/Flattenable;
    .registers 5
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/youtube/athome/app/common/e;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/app/common/e;-><init>()V

    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/e;->a(I)Lcom/google/android/youtube/athome/app/common/e;

    move-result-object v0

    const-string v1, "videoId"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/e;

    move-result-object v1

    const-string v0, "ad"

    sget-object v2, Lcom/google/android/youtube/athome/app/common/a;->d:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/athome/app/common/a;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/athome/app/common/e;->a(Lcom/google/android/youtube/athome/app/common/a;)Lcom/google/android/youtube/athome/app/common/e;

    move-result-object v0

    const-string v1, "subtitlesEnabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/app/common/e;->a(Z)Lcom/google/android/youtube/athome/app/common/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/athome/app/common/e;->a()Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;

    move-result-object v0

    return-object v0
.end method
