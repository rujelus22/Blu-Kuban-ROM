.class public final Lcom/google/android/youtube/core/utils/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/v;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/google/android/youtube/core/utils/v;->b:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/google/android/youtube/core/utils/v;->c:I

    .line 31
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 163
    if-nez p0, :cond_4

    .line 189
    :goto_3
    return v1

    .line 170
    :cond_4
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 171
    if-ltz v2, :cond_58

    .line 172
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;I)I

    move-result v0

    const v3, 0x36ee80

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x0

    .line 173
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 177
    :goto_20
    const-string v2, "m"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 178
    if-ltz v2, :cond_3b

    .line 179
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;I)I

    move-result v3

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 180
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 184
    :cond_3b
    const-string v2, "s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 187
    :cond_4d
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;F)F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, v0

    .line 189
    goto :goto_3

    :cond_58
    move v0, v1

    goto :goto_20
.end method

.method public static a(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/v;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 50
    const-string v0, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 51
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 53
    :cond_1c
    const-string v0, "vnd.youtube"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 54
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_38
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_48
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_55

    :goto_4e
    new-instance v2, Lcom/google/android/youtube/core/utils/v;

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/youtube/core/utils/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v2

    .line 62
    :goto_54
    return-object v0

    .line 54
    :cond_55
    const-string v1, "t"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/v;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_4e

    .line 56
    :cond_60
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v2, "/watch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "/movie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 58
    :cond_74
    const-string v0, "v"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_84

    new-instance v0, Ljava/text/ParseException;

    const-string v2, "No video id in URI"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_84
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    const-string v0, "t"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a2

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a2

    const-string v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_a2
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/v;->a(Ljava/lang/String;)I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_c5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_cd

    :cond_c5
    const/4 v0, 0x0

    :cond_c6
    :goto_c6
    new-instance v1, Lcom/google/android/youtube/core/utils/v;

    invoke-direct {v1, v2, v0, v4}, Lcom/google/android/youtube/core/utils/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_54

    :cond_cd
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v6, v5, v0

    const-string v0, ""

    if-lez v5, :cond_f0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f0
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_c6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c6

    .line 59
    :cond_110
    const-string v2, "/v/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 60
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/v;->b(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/v;

    move-result-object v0

    goto/16 :goto_54

    .line 61
    :cond_11e
    const-string v2, "/e/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12e

    const-string v2, "/embed/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 62
    :cond_12e
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    const-string v0, "start"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/v;->a(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Lcom/google/android/youtube/core/utils/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/utils/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_54

    .line 65
    :cond_147
    new-instance v0, Ljava/text/ParseException;

    const-string v2, "Unrecognised URI"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static b(Landroid/net/Uri;)Lcom/google/android/youtube/core/utils/v;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 127
    if-ltz v0, :cond_46

    .line 128
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 129
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 134
    const-string v5, "start="

    move v0, v1

    .line 135
    :goto_24
    array-length v6, v4

    if-ge v0, v6, :cond_3d

    .line 136
    aget-object v6, v4, v0

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 137
    aget-object v0, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/v;->a(Ljava/lang/String;)I

    move-result v1

    .line 141
    :cond_3d
    new-instance v0, Lcom/google/android/youtube/core/utils/v;

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/youtube/core/utils/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    :goto_42
    return-object v0

    .line 135
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 143
    :cond_46
    new-instance v0, Lcom/google/android/youtube/core/utils/v;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/youtube/core/utils/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_42
.end method
