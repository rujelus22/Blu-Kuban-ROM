.class Lcom/google/googlenav/ui/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 5100
    iput-object p1, p0, Lcom/google/googlenav/ui/L;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 5103
    iget-object v0, p0, Lcom/google/googlenav/ui/L;->a:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->m(Z)V

    .line 5104
    return-void
.end method
