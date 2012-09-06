.class public LKK;
.super Ljava/lang/Object;
.source "PageScrubber.java"

# interfaces
.implements LKP;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LKP",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, LKK;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 121
    const/high16 v0, 0x3f80

    return v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, LKK;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I

    move-result v0

    return v0
.end method

.method public a(IZ)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 100
    const-string v0, ""

    return-object v0
.end method

.method public b(IZ)Ljava/lang/CharSequence;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, LKK;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LKK;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v3}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(IZ)Ljava/lang/CharSequence;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 111
    const-string v0, "%d / %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LKK;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v3}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->b(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
