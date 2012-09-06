.class Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;
.super Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;
.source "ThumbnailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FifeSpec"
.end annotation


# static fields
.field private static final FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern; = null

.field private static final PATH_DELIMITER:Ljava/lang/String; = "="


# instance fields
.field protected final height:I

.field protected final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "^((http(s)?):)?\\/\\/((((lh[3-6]\\.((ggpht)|(googleusercontent)|(google)))|([1-4]\\.bp\\.blogspot)|(bp[0-3]\\.blogger))\\.com)|(www\\.google\\.com\\/visualsearch\\/lh))\\/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;-><init>()V

    .line 73
    iput p1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->width:I

    .line 74
    iput p2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->height:I

    .line 75
    return-void
.end method

.method static everythingButFifeParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "baseUrl"

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-static {p0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->isFifeUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 116
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, delimiterIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 126
    .end local v0           #delimiterIndex:I
    .end local p0
    :goto_10
    return-object p0

    .line 122
    .restart local v0       #delimiterIndex:I
    .restart local p0
    :cond_11
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 125
    .end local v0           #delimiterIndex:I
    :cond_16
    invoke-static {}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Tried to strip FIFE parameters from non-FIFE url: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method

.method protected static getSizedUrl(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 11
    .parameter "baseUrl"
    .parameter "height"
    .parameter "width"
    .parameter "squareCrop"

    .prologue
    const/16 v6, 0x640

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-static {p0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->isFifeUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 97
    invoke-static {}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Tried to apply FIFE size parameters to non-FIFE url: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .end local p0
    :goto_17
    return-object p0

    .line 101
    .restart local p0
    :cond_18
    invoke-static {p0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->everythingButFifeParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, parameterlessUrl:Ljava/lang/String;
    if-eqz p3, :cond_2b

    if-eq p2, p1, :cond_2b

    .line 104
    invoke-static {}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Square FIFE crop requested but width != height, returned image will be scaled up to larger of the two dimensions."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_2b
    const-string v2, "%s=w%d-h%d%s"

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x2

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x3

    if-eqz p3, :cond_53

    const-string v1, "-c"

    :goto_4c
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_53
    const-string v1, ""

    goto :goto_4c
.end method

.method static isFifeUrl(Ljava/lang/String;)Z
    .registers 2
    .parameter "baseUrl"

    .prologue
    .line 130
    sget-object v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getSizedUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "c"
    .parameter "baseUrl"

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->height:I

    iget v1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->width:I

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->getSizedUrl(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
