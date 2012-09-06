.class public final Lcom/google/android/youtube/googlemobile/common/util/a/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/Boolean;

.field static final b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/util/a/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const/16 v0, 0x5f

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v2, v1

    :goto_10
    const/4 v5, -0x1

    if-eq v0, v5, :cond_23

    if-ge v0, v4, :cond_23

    add-int/lit8 v2, v2, 0x1

    if-ltz v0, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    :cond_1e
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_10

    :cond_23
    add-int/lit8 v0, v2, 0x1

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    :goto_28
    if-ge v0, v2, :cond_3c

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_3c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    return-object v4
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method
