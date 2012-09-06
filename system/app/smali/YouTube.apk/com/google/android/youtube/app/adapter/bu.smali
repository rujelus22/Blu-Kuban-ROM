.class public final Lcom/google/android/youtube/app/adapter/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/youtube/core/b/aj;


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/b/aj;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput p1, p0, Lcom/google/android/youtube/app/adapter/bu;->a:I

    .line 479
    const-string v0, "referrer cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bu;->b:Lcom/google/android/youtube/core/b/aj;

    .line 480
    return-void
.end method
