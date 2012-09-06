.class Lcom/google/googlenav/android/O;
.super Lcom/google/googlenav/android/aa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2332
    invoke-direct {p0}, Lcom/google/googlenav/android/aa;-><init>()V

    .line 2334
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "q"

    aput-object v1, v0, v2

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulAndAngleBracketsLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/O;->registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    .line 2339
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cbp"

    aput-object v1, v0, v2

    const-string v1, "z"

    aput-object v1, v0, v3

    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllIllegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/O;->registerParameters([Ljava/lang/String;Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    .line 2345
    return-void
.end method
