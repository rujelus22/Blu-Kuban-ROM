.class public final Lcom/estrongs/android/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x5d

    sput v0, Lcom/estrongs/android/a/h;->a:I

    return-void
.end method

.method public static a(Ljava/lang/Object;)I
    .registers 3

    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/a/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/android/a/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 4

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/a/h;->a(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/lang/String;J)J
    .registers 6

    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-wide p1

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_24

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_29

    move-result-wide p1

    goto :goto_a

    :catch_29
    move-exception v0

    goto :goto_a
.end method

.method public static b(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/a/h;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
