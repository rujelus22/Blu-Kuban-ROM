.class public Lcom/google/ads/util/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "GoogleAdsAssertion"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/ads/util/a;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Assertion that an object is not null failed."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->c(ZLjava/lang/String;)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    if-ne p0, p1, :cond_24

    const/4 v0, 0x1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assertion that \'a\' and \'b\' refer to the same object failed.a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->c(ZLjava/lang/String;)V

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a non empty string, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->c(ZLjava/lang/String;)V

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Z)V
    .registers 3

    if-nez p0, :cond_9

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Assertion failed."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->c(ZLjava/lang/String;)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/ads/util/a;->c(ZLjava/lang/String;)V

    return-void
.end method

.method public static b(ZLjava/lang/String;)V
    .registers 3

    if-nez p0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0, p1}, Lcom/google/ads/util/a;->c(ZLjava/lang/String;)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static c(ZLjava/lang/String;)V
    .registers 4

    const-string v0, "GoogleAdsAssertion"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/google/ads/util/a;->a:Z

    if-nez v0, :cond_e

    :cond_d
    return-void

    :cond_e
    if-nez p0, :cond_d

    new-instance v0, Lcom/google/ads/util/a$a;

    invoke-direct {v0, p1}, Lcom/google/ads/util/a$a;-><init>(Ljava/lang/String;)V

    const-string v1, "GoogleAdsAssertion"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
