.class Lcom/google/googlenav/friend/history/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/history/C;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/C;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/googlenav/friend/history/D;->a:Lcom/google/googlenav/friend/history/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/googlenav/friend/history/D;->a:Lcom/google/googlenav/friend/history/C;

    iget-object v0, v0, Lcom/google/googlenav/friend/history/C;->a:Lcom/google/googlenav/friend/history/G;

    invoke-interface {v0}, Lcom/google/googlenav/friend/history/G;->a()V

    .line 262
    return-void
.end method
