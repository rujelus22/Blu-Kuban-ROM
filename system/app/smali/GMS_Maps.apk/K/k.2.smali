.class Lk/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lk/E;

.field final synthetic b:Lk/I;


# direct methods
.method constructor <init>(Lk/I;Lk/E;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lk/K;->b:Lk/I;

    iput-object p2, p0, Lk/K;->a:Lk/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lk/K;->b:Lk/I;

    iget-object v1, p0, Lk/K;->a:Lk/E;

    invoke-static {v0, v1}, Lk/I;->a(Lk/I;Lk/E;)V

    .line 62
    return-void
.end method
