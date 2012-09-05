.class public final Lcom/google/android/youtube/core/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/j;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/j;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 24
    const-string v1, "uri cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "list"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 27
    const-string v2, "PL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 29
    new-instance v0, Lcom/google/android/youtube/core/utils/j;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/utils/j;-><init>(Ljava/lang/String;)V

    .line 37
    :cond_24
    :goto_24
    return-object v0

    .line 33
    :cond_25
    const-string v1, "p"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 35
    new-instance v0, Lcom/google/android/youtube/core/utils/j;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/utils/j;-><init>(Ljava/lang/String;)V

    goto :goto_24
.end method
