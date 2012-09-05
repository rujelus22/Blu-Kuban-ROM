.class final Lcom/google/net/async/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/net/async/l;


# direct methods
.method constructor <init>(Lcom/google/net/async/l;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/net/async/m;->a:Lcom/google/net/async/l;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/net/async/m;->a:Lcom/google/net/async/l;

    invoke-virtual {v0}, Lcom/google/net/async/l;->a()V

    .line 149
    return-void
.end method
