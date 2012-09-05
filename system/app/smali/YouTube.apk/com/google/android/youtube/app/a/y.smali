.class public final Lcom/google/android/youtube/app/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/youtube/core/client/al;


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/client/al;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput p1, p0, Lcom/google/android/youtube/app/a/y;->a:I

    .line 473
    const-string v0, "referrer cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/y;->b:Lcom/google/android/youtube/core/client/al;

    .line 474
    return-void
.end method
