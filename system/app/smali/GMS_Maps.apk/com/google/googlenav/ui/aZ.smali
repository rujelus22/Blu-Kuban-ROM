.class Lcom/google/googlenav/ui/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ay;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ay;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/googlenav/ui/az;->a:Lcom/google/googlenav/ui/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/googlenav/ui/az;->a:Lcom/google/googlenav/ui/ay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ay;->a()Las/g;

    move-result-object v0

    invoke-interface {v0}, Las/g;->B_()V

    .line 59
    return-void
.end method
