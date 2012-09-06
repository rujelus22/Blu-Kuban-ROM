.class Lcom/google/googlenav/ui/android/multilinetextview/f;
.super Lcom/google/googlenav/ui/android/multilinetextview/e;
.source "SourceFile"


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/multilinetextview/e;-><init>(I)V

    .line 12
    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/f;->a:I

    .line 16
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)Lcom/google/googlenav/ui/android/multilinetextview/e;
    .registers 5
    .parameter

    .prologue
    .line 20
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 21
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/f;->a:I

    .line 24
    :goto_c
    return-object p0

    :cond_d
    new-instance v0, Lcom/google/googlenav/ui/android/multilinetextview/e;

    iget v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/f;->a:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/multilinetextview/e;-><init>(I)V

    move-object p0, v0

    goto :goto_c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    if-ne p1, p0, :cond_5

    .line 45
    :cond_4
    :goto_4
    return v0

    .line 41
    :cond_5
    instance-of v2, p1, Lcom/google/googlenav/ui/android/multilinetextview/f;

    if-eqz v2, :cond_19

    .line 42
    check-cast p1, Lcom/google/googlenav/ui/android/multilinetextview/f;

    .line 43
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b(Lcom/google/googlenav/ui/android/multilinetextview/e;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, p0, Lcom/google/googlenav/ui/android/multilinetextview/f;->a:I

    iget v3, p1, Lcom/google/googlenav/ui/android/multilinetextview/f;->a:I

    if-eq v2, v3, :cond_4

    :cond_17
    move v0, v1

    goto :goto_4

    :cond_19
    move v0, v1

    .line 45
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 30
    .line 31
    invoke-super {p0}, Lcom/google/googlenav/ui/android/multilinetextview/e;->hashCode()I

    move-result v0

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/f;->a:I

    add-int/2addr v0, v1

    .line 33
    return v0
.end method
