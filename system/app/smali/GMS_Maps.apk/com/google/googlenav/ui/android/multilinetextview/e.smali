.class Lcom/google/googlenav/ui/android/multilinetextview/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method protected constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->a:I

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->b:I

    .line 15
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->c:Z

    .line 18
    iput p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->a:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->a:I

    return v0
.end method

.method protected final a(Lcom/google/googlenav/ui/android/multilinetextview/e;)Lcom/google/googlenav/ui/android/multilinetextview/e;
    .registers 4
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->c:Z

    .line 52
    invoke-virtual {p1}, Lcom/google/googlenav/ui/android/multilinetextview/e;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This cannot be nextToken after consuming has finished."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_11
    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/googlenav/ui/android/multilinetextview/e;
    .registers 4
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->c:Z

    if-eqz v0, :cond_c

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This token has finished consuming"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/android/multilinetextview/e;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 63
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->a:I

    iget v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected b(Ljava/lang/String;)Lcom/google/googlenav/ui/android/multilinetextview/e;
    .registers 5
    .parameter

    .prologue
    .line 38
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->b:I

    .line 42
    :goto_c
    return-object p0

    :cond_d
    new-instance v0, Lcom/google/googlenav/ui/android/multilinetextview/e;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/multilinetextview/e;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/multilinetextview/e;->a(Lcom/google/googlenav/ui/android/multilinetextview/e;)Lcom/google/googlenav/ui/android/multilinetextview/e;

    move-result-object p0

    goto :goto_c
.end method

.method protected b(Lcom/google/googlenav/ui/android/multilinetextview/e;)Z
    .registers 4
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->a:I

    iget v1, p1, Lcom/google/googlenav/ui/android/multilinetextview/e;->a:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->b:I

    iget v1, p1, Lcom/google/googlenav/ui/android/multilinetextview/e;->b:I

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->c:Z

    iget-boolean v1, p1, Lcom/google/googlenav/ui/android/multilinetextview/e;->c:Z

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 85
    if-ne p1, p0, :cond_4

    .line 86
    const/4 v0, 0x1

    .line 91
    :goto_3
    return v0

    .line 88
    :cond_4
    instance-of v0, p1, Lcom/google/googlenav/ui/android/multilinetextview/e;

    if-eqz v0, :cond_f

    .line 89
    check-cast p1, Lcom/google/googlenav/ui/android/multilinetextview/e;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b(Lcom/google/googlenav/ui/android/multilinetextview/e;)Z

    move-result v0

    goto :goto_3

    .line 91
    :cond_f
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 76
    .line 78
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->b:I

    add-int/lit8 v0, v0, 0x1f

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/e;->a:I

    add-int/2addr v0, v1

    .line 80
    return v0
.end method
