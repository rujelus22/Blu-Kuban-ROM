.class Lcom/google/googlenav/ui/android/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/ui/android/I;-><init>(IIIZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/googlenav/ui/android/I;->a:I

    .line 40
    iput p2, p0, Lcom/google/googlenav/ui/android/I;->b:I

    .line 41
    iput-boolean p4, p0, Lcom/google/googlenav/ui/android/I;->d:Z

    .line 43
    if-eqz p3, :cond_e

    .line 44
    iput p3, p0, Lcom/google/googlenav/ui/android/I;->c:I

    .line 48
    :goto_d
    return-void

    .line 46
    :cond_e
    const v0, 0x7f020447

    iput v0, p0, Lcom/google/googlenav/ui/android/I;->c:I

    goto :goto_d
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/I;)I
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/google/googlenav/ui/android/I;->c:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/I;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/I;->d:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/google/googlenav/ui/android/J;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/ui/android/J;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/android/I;)V

    return-object v0
.end method

.method public a(III)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    iget v1, p0, Lcom/google/googlenav/ui/android/I;->a:I

    if-eq v1, p1, :cond_6

    .line 65
    :cond_5
    :goto_5
    return v0

    .line 62
    :cond_6
    iget v1, p0, Lcom/google/googlenav/ui/android/I;->b:I

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/google/googlenav/ui/android/I;->b:I

    if-ne v1, p2, :cond_5

    .line 63
    :cond_e
    const/4 v0, 0x1

    goto :goto_5
.end method
