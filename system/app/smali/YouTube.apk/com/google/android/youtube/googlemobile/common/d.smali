.class public final Lcom/google/android/youtube/googlemobile/common/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/google/android/youtube/googlemobile/common/d;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "/strings.dat"

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/d;->b:Lcom/google/android/youtube/googlemobile/common/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/android/youtube/googlemobile/common/d;->g:[Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/youtube/googlemobile/common/d;->h:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "microedition.locale"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2b
    move-object v0, v1

    :cond_2c
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/common/d;->b(Ljava/lang/String;)V

    const-string v0, "en"

    invoke-static {v0, v4}, Lcom/google/android/youtube/googlemobile/debug/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/common/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/youtube/googlemobile/common/d;
    .registers 2

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/d;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/googlemobile/common/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/d;->b:Lcom/google/android/youtube/googlemobile/common/d;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v2, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "en"

    if-eqz p0, :cond_52

    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_24

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_52

    :cond_24
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    array-length v2, v1

    if-lt v2, v5, :cond_52

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_52
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/d;->c:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/d;->c:Ljava/lang/String;

    :goto_12
    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/d;->d:Ljava/lang/String;

    return-void

    :cond_15
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/d;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public final c(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_1d

    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/d;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/d;->e:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_18

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_18
    if-gez v1, :cond_20

    :goto_1a
    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/d;->f:Ljava/lang/String;

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/d;->c:Ljava/lang/String;

    goto :goto_6

    :cond_20
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method
