.class final Lcom/google/android/youtube/athome/common/f;
.super Lcom/google/android/youtube/athome/common/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/youtube/athome/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/youtube/athome/common/d;)Landroid/support/place/rpc/Flattenable;
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 61
    new-instance v0, Lcom/google/android/youtube/athome/common/g;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/common/g;-><init>()V

    const-string v1, "minApiVersion"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/common/g;->a(I)Lcom/google/android/youtube/athome/common/g;

    move-result-object v0

    const-string v1, "maxApiVersion"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/common/g;->b(I)Lcom/google/android/youtube/athome/common/g;

    move-result-object v0

    const-string v1, "buildId"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/common/g;->a(Ljava/lang/String;)Lcom/google/android/youtube/athome/common/g;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/common/g;->b(Ljava/lang/String;)Lcom/google/android/youtube/athome/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/athome/common/g;->a()Lcom/google/android/youtube/athome/common/e;

    move-result-object v0

    return-object v0
.end method
