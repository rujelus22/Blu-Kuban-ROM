.class public final Lcom/google/android/youtube/core/async/a;
.super Lcom/google/android/youtube/core/async/ak;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/async/ak;-><init>(Lcom/google/android/youtube/core/async/g;)V

    .line 26
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->a:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/youtube/core/async/a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/a;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method
