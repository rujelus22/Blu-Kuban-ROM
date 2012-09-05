.class public abstract Lcom/google/android/plus1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/plus1/m;Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 54
    iget v0, p2, Lcom/google/android/plus1/u;->d:I

    if-le v0, v1, :cond_17

    .line 55
    iget v0, p1, Lcom/google/android/plus1/m;->c:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p2, Lcom/google/android/plus1/u;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_16
    return-object v0

    .line 56
    :cond_17
    iget v0, p2, Lcom/google/android/plus1/u;->d:I

    if-lez v0, :cond_22

    .line 57
    iget v0, p1, Lcom/google/android/plus1/m;->b:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 59
    :cond_22
    iget v0, p1, Lcom/google/android/plus1/m;->a:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method
