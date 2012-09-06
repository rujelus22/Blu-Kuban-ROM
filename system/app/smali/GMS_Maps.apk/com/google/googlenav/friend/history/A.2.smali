.class Lcom/google/googlenav/friend/history/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/history/z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/z;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/googlenav/friend/history/A;->a:Lcom/google/googlenav/friend/history/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/googlenav/friend/history/A;->a:Lcom/google/googlenav/friend/history/z;

    iget-object v0, v0, Lcom/google/googlenav/friend/history/z;->b:Lcom/google/googlenav/friend/history/H;

    invoke-interface {v0}, Lcom/google/googlenav/friend/history/H;->a()V

    .line 201
    return-void
.end method
