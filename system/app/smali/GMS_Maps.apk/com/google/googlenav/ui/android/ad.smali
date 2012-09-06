.class public Lcom/google/googlenav/ui/android/ad;
.super Lcom/google/googlenav/ui/android/E;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/android/E;

.field private b:F


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/E;)V
    .registers 2
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/E;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ad;->a:Lcom/google/googlenav/ui/android/E;

    .line 17
    return-void
.end method


# virtual methods
.method public a(D)F
    .registers 5
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/google/googlenav/ui/android/ad;->b:F

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ad;->a:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v1, p1, p2}, Lcom/google/googlenav/ui/android/E;->a(D)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public a(DD)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ad;->a:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/android/E;->a(DD)Z

    move-result v0

    return v0
.end method

.method public a(F)Z
    .registers 3
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/google/googlenav/ui/android/ad;->b:F

    .line 27
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ad;->a:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/E;->a(F)Z

    move-result v0

    return v0
.end method
