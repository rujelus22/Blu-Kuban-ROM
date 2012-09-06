.class Lcom/google/googlenav/ui/wizard/aX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aW;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aW;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aX;->a:Lcom/google/googlenav/ui/wizard/aW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/android/Y;Lcom/google/googlenav/ui/view/android/Y;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/Y;->e()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/Y;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 53
    const/4 v0, 0x0

    .line 58
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/Y;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/Y;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    check-cast p1, Lcom/google/googlenav/ui/view/android/Y;

    check-cast p2, Lcom/google/googlenav/ui/view/android/Y;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aX;->a(Lcom/google/googlenav/ui/view/android/Y;Lcom/google/googlenav/ui/view/android/Y;)I

    move-result v0

    return v0
.end method
