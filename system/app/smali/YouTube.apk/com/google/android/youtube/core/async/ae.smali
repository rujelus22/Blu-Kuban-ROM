.class final Lcom/google/android/youtube/core/async/ae;
.super Lcom/google/android/youtube/core/async/al;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/al;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    instance-of v0, p2, Lcom/google/android/youtube/core/async/GDataResponseException;

    if-eqz v0, :cond_14

    move-object v0, p2

    .line 59
    check-cast v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsYouTubeSignupRequiredError()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 61
    const-string v0, "operation needs a full YouTube account"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    .line 65
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/async/al;->a(Lcom/google/android/youtube/core/async/aj;Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_13
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p1, p2}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/android/youtube/core/async/aj;Ljava/lang/Exception;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/ae;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/ae;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method
