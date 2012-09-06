.class public Lcom/google/googlenav/android/background/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "is_finishing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/android/background/a;->a:Z

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 30
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    .line 31
    if-nez v0, :cond_7

    .line 57
    :cond_6
    :goto_6
    return-void

    .line 36
    :cond_7
    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_6

    .line 42
    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_6

    .line 49
    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->d()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_1c

    .line 51
    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/p;->b()V

    .line 55
    :cond_1c
    iget-boolean v1, p0, Lcom/google/googlenav/android/background/a;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->j(Z)V

    goto :goto_6
.end method
