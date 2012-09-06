.class Lcom/google/googlenav/ui/wizard/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/k;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/H;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/H;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/H;Lcom/google/googlenav/ui/wizard/I;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/J;-><init>(Lcom/google/googlenav/ui/wizard/H;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/H;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/H;->a(Lcom/google/googlenav/ui/wizard/H;)Lcom/google/googlenav/friend/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/j;->k()Lcom/google/googlenav/friend/i;

    move-result-object v0

    .line 142
    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/H;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/H;->c(Lcom/google/googlenav/ui/wizard/H;)Lcom/google/googlenav/android/Y;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/K;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/K;-><init>(Lcom/google/googlenav/ui/wizard/J;Lcom/google/googlenav/friend/i;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 149
    return-void
.end method
