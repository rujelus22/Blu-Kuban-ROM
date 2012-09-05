.class final Lcom/google/android/youtube/core/converter/http/db;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/cv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/cv;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/db;->a:Lcom/google/android/youtube/core/converter/http/cv;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/p;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/google/android/youtube/core/model/p;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/p;

    .line 63
    :try_start_8
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/p;->n(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_13} :catch_14

    .line 67
    :goto_13
    return-void

    .line 65
    :catch_14
    move-exception v0

    const-string v0, "Badly formed stream uri - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_13
.end method
