.class Lau/b;
.super Lcom/google/android/maps/driveabout/vector/dI;
.source "SourceFile"


# instance fields
.field final synthetic b:Lau/a;


# direct methods
.method constructor <init>(Lau/a;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lau/b;->b:Lau/a;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/dI;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b(FFFFFZ)F
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->h()V

    .line 133
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/ap;->a(II)V

    .line 135
    invoke-super/range {p0 .. p6}, Lcom/google/android/maps/driveabout/vector/dI;->b(FFFFFZ)F

    move-result v0

    return v0
.end method

.method public c(FI)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 142
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->h()V

    .line 144
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/dI;->c(FI)V

    .line 145
    return-void
.end method
