.class LaM/bB;
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
    .line 639
    iput-object p1, p0, LaM/bB;->a:LaM/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 643
    const/4 v0, 0x1

    .line 644
    iget-object v1, p0, LaM/bB;->a:LaM/bx;

    invoke-virtual {v1}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bw;->a(Z)Z

    .line 646
    iget-object v0, p0, LaM/bB;->a:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->J()V

    .line 647
    return-void
.end method
