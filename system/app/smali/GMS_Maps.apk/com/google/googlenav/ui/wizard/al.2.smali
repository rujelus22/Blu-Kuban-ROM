.class final Lcom/google/googlenav/ui/wizard/aL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/y;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aK;

.field private final b:Lan/y;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/aK;Lan/y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aL;->a:Lcom/google/googlenav/ui/wizard/aK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aL;->b:Lan/y;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aL;)Lan/y;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aL;->b:Lan/y;

    return-object v0
.end method


# virtual methods
.method public a(ILan/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aL;->a:Lcom/google/googlenav/ui/wizard/aK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aK;->a(Lcom/google/googlenav/ui/wizard/aK;Lcom/google/googlenav/ui/wizard/aL;)Lcom/google/googlenav/ui/wizard/aL;

    .line 84
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aL;->a:Lcom/google/googlenav/ui/wizard/aK;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aK;->a(Lcom/google/googlenav/ui/wizard/aK;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/aN;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aN;-><init>(Lcom/google/googlenav/ui/wizard/aL;ILan/h;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 93
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aL;->a:Lcom/google/googlenav/ui/wizard/aK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aK;->a(Lcom/google/googlenav/ui/wizard/aK;Lcom/google/googlenav/ui/wizard/aL;)Lcom/google/googlenav/ui/wizard/aL;

    .line 66
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aL;->a:Lcom/google/googlenav/ui/wizard/aK;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aK;->a(Lcom/google/googlenav/ui/wizard/aK;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/aM;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aM;-><init>(Lcom/google/googlenav/ui/wizard/aL;Lat/B;Lan/h;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 75
    return-void
.end method
