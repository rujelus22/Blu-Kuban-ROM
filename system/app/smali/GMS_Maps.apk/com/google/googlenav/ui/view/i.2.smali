.class Lcom/google/googlenav/ui/view/i;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;

.field final synthetic b:Lcom/google/googlenav/ui/view/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/e;Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/googlenav/ui/view/i;->b:Lcom/google/googlenav/ui/view/e;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/i;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 237
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->hasDataConnection()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 240
    iget-object v0, p0, Lcom/google/googlenav/ui/view/i;->a:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x333

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 246
    :goto_1e
    return v2

    .line 245
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/i;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/i;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(LaM/am;Z)V

    goto :goto_1e
.end method
