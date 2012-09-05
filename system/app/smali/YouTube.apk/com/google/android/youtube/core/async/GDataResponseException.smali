.class public Lcom/google/android/youtube/core/async/GDataResponseException;
.super Lorg/apache/http/client/HttpResponseException;
.source "SourceFile"


# static fields
.field private static final YOUTUBE_SIGNUP_REQUIRED_LIST:Ljava/util/List;


# instance fields
.field public final errors:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    sput-object v0, Lcom/google/android/youtube/core/async/GDataResponseException;->YOUTUBE_SIGNUP_REQUIRED_LIST:Ljava/util/List;

    sget-object v1, Lcom/google/android/youtube/core/model/f;->a:Lcom/google/android/youtube/core/model/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GData error(s):\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_17

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2d

    :cond_17
    const-string v0, "none"

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 42
    if-nez p3, :cond_32

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2a
    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataResponseException;->errors:Ljava/util/List;

    .line 44
    return-void

    .line 40
    :cond_2d
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 42
    :cond_32
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2a
.end method

.method private containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataResponseException;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/f;

    .line 57
    if-eqz p1, :cond_1c

    iget-object v2, v0, Lcom/google/android/youtube/core/model/f;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1c
    if-eqz p2, :cond_26

    iget-object v2, v0, Lcom/google/android/youtube/core/model/f;->c:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_26
    if-eqz p3, :cond_30

    iget-object v2, v0, Lcom/google/android/youtube/core/model/f;->d:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_30
    if-eqz p4, :cond_3a

    iget-object v0, v0, Lcom/google/android/youtube/core/model/f;->e:Ljava/lang/String;

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    :cond_3a
    const/4 v0, 0x1

    .line 65
    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public static createYouTubeSignupRequired(ILjava/lang/String;)Lcom/google/android/youtube/core/async/GDataResponseException;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataResponseException;->YOUTUBE_SIGNUP_REQUIRED_LIST:Ljava/util/List;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/youtube/core/async/GDataResponseException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public containsYouTubeSignupRequiredError()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v0, "yt:service"

    const-string v1, "youtube_signup_required"

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "GData"

    const-string v1, "InvalidRequestUriException"

    const-string v2, "Missing or invalid username."

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
