.class Li/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Li/P;


# direct methods
.method constructor <init>(Li/P;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Li/Q;->a:Li/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Li/Q;->a:Li/P;

    iget-object v0, v0, Li/P;->b:Li/O;

    iget-object v1, p0, Li/Q;->a:Li/P;

    iget-object v1, v1, Li/P;->a:Li/b;

    invoke-virtual {v0, v1}, Li/O;->b(Li/b;)V

    .line 119
    return-void
.end method
