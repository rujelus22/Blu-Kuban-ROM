.class public final Lcom/google/ads/util/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/ads/util/c;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/util/b;->a:Lcom/google/ads/util/c;

    const/4 v0, 0x5

    sput v0, Lcom/google/ads/util/b;->b:I

    return-void
.end method

.method private static a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/google/ads/util/b;->a:Lcom/google/ads/util/c;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/ads/util/b;->a:Lcom/google/ads/util/c;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/ads/util/c;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->b:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "Ads"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->b:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0, p1}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(I)Z
    .registers 2

    sget v0, Lcom/google/ads/util/b;->b:I

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p1}, Lcom/google/ads/util/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->e:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "Ads"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->e:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0, p1}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->c:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "Ads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->c:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0, p1}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Ads"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->a:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->d:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0, p1}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Ads"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object v0, Lcom/google/ads/util/b$a;->d:Lcom/google/ads/util/b$a;

    invoke-static {v0, p0}, Lcom/google/ads/util/b;->a(Lcom/google/ads/util/b$a;Ljava/lang/String;)V

    return-void
.end method
