.class public final Lcom/google/android/youtube/core/utils/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/google/android/common/http/UrlRules;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/s;->a:Landroid/content/ContentResolver;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/s;->b:Lcom/google/android/common/http/UrlRules;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-object p1

    :cond_f
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_e
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/s;->b:Lcom/google/android/common/http/UrlRules;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/core/utils/s;->b:Lcom/google/android/common/http/UrlRules;

    :goto_6
    invoke-virtual {v0, p1}, Lcom/google/android/common/http/UrlRules;->a(Ljava/lang/String;)Lcom/google/android/common/http/e;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/common/http/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_f
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/s;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/common/http/UrlRules;->a(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v0

    goto :goto_6
.end method
