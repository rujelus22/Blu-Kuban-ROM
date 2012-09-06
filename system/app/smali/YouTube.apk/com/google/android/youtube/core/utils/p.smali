.class public final Lcom/google/android/youtube/core/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/youtube/core/utils/o;

.field private static b:Lcom/google/android/youtube/core/utils/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/youtube/core/utils/q;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/q;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/utils/p;->a:Lcom/google/android/youtube/core/utils/o;

    .line 19
    new-instance v0, Lcom/google/android/youtube/core/utils/r;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/r;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/utils/p;->b:Lcom/google/android/youtube/core/utils/o;

    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/utils/o;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/youtube/core/utils/p;->a:Lcom/google/android/youtube/core/utils/o;

    return-object v0
.end method
