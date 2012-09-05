.class public final Lcom/google/android/youtube/plus1/PlusOneUtil;
.super Ljava/lang/Object;
.source "PlusOneUtil.java"


# static fields
.field private static final RESOURCES:Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;

.field private static final VIDEOS_PLUS_ONE_URI:Landroid/net/Uri;

.field private static final YOUTUBE_PLUS_ONE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 22
    const-string v0, "https://market.android.com/details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/plus1/PlusOneUtil;->VIDEOS_PLUS_ONE_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "http://www.youtube.com/watch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/plus1/PlusOneUtil;->YOUTUBE_PLUS_ONE_URI:Landroid/net/Uri;

    .line 27
    new-instance v0, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;

    const v1, 0x7f0b0012

    const v2, 0x7f0b0010

    const v3, 0x7f0b0011

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;-><init>(III)V

    sput-object v0, Lcom/google/android/youtube/plus1/PlusOneUtil;->RESOURCES:Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static makeAnnotationString(Landroid/content/Context;Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "context"
    .parameter "plusOne"

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/youtube/plus1/PlusOneUtil;->RESOURCES:Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;

    invoke-static {p0, v0, p1}, Lcom/google/android/plus1/BasePlusOneStrings;->makeAnnotationString(Landroid/content/Context;Lcom/google/android/plus1/BasePlusOneStrings$PlusOneStringResources;Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
