.class final Lcom/google/android/youtube/athome/common/a;
.super Lcom/google/android/youtube/athome/common/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/youtube/athome/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/youtube/athome/common/d;)Landroid/support/place/rpc/Flattenable;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/google/android/youtube/athome/common/b;

    invoke-direct {v0}, Lcom/google/android/youtube/athome/common/b;-><init>()V

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/common/b;->a(Ljava/lang/String;)Lcom/google/android/youtube/athome/common/b;

    move-result-object v0

    const-string v1, "currentPosition"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/common/b;->a(I)Lcom/google/android/youtube/athome/common/b;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/youtube/athome/common/d;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/athome/common/b;->b(I)Lcom/google/android/youtube/athome/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/athome/common/b;->a()Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;

    move-result-object v0

    return-object v0
.end method
