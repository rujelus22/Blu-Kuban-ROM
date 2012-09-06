.class public final Lcom/twitter/android/be;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/twitter/android/be;->a:I

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twitter/android/be;->b:Z

    return-void
.end method

.method public final a()Z
    .registers 3

    iget v0, p0, Lcom/twitter/android/be;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/be;->b:Z

    return v0
.end method

.method public final c()Z
    .registers 3

    iget v0, p0, Lcom/twitter/android/be;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/twitter/android/be;->b:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
