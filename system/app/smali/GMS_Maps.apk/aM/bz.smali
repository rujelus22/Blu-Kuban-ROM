.class LaM/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/bx;


# direct methods
.method constructor <init>(LaM/bx;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, LaM/bz;->a:LaM/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 492
    const/4 v0, 0x1

    .line 493
    iget-object v1, p0, LaM/bz;->a:LaM/bx;

    iget-object v1, v1, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, LaM/bA;

    invoke-direct {v2, p0}, LaM/bA;-><init>(LaM/bz;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 503
    return-void
.end method
