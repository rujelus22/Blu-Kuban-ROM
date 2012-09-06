.class final Lcom/twitter/android/network/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lorg/apache/http/HttpHost;

.field public final b:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    move v1, v2

    :goto_f
    :try_start_f
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_1f

    move-result v0

    :goto_13
    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v4, "http"

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/twitter/android/network/e;->a:Lorg/apache/http/HttpHost;

    iput-boolean v1, p0, Lcom/twitter/android/network/e;->b:Z

    return-void

    :catch_1f
    move-exception v0

    const/4 v0, -0x1

    move v1, v2

    goto :goto_13

    :cond_23
    move v1, p1

    goto :goto_f
.end method
