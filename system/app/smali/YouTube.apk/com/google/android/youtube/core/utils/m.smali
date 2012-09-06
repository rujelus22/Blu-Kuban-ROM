.class public final Lcom/google/android/youtube/core/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/m;->a:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/google/android/youtube/core/utils/m;->b:Z

    .line 19
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/m;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    const-string v2, "uri cannot be null"

    invoke-static {p0, v2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v2, "playnext"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_16

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    .line 38
    :cond_16
    const-string v2, "list"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 40
    const-string v3, "PL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 42
    new-instance v1, Lcom/google/android/youtube/core/utils/m;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/core/utils/m;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 50
    :goto_35
    return-object v0

    :cond_36
    move-object v0, v1

    .line 44
    goto :goto_35

    .line 46
    :cond_38
    const-string v2, "p"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 48
    new-instance v1, Lcom/google/android/youtube/core/utils/m;

    invoke-direct {v1, v2, v0}, Lcom/google/android/youtube/core/utils/m;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_35

    :cond_4b
    move-object v0, v1

    .line 50
    goto :goto_35
.end method
