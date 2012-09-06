.class Lcom/google/googlenav/ui/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4797
    iput-object p1, p0, Lcom/google/googlenav/ui/K;->b:Lcom/google/googlenav/ui/v;

    iput p2, p0, Lcom/google/googlenav/ui/K;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/google/googlenav/ui/K;->b:Lcom/google/googlenav/ui/v;

    iget v1, p0, Lcom/google/googlenav/ui/K;->a:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->d(I)V

    .line 4801
    return-void
.end method
