.class Lk/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lk/C;

.field final synthetic b:Lk/I;


# direct methods
.method constructor <init>(Lk/I;Lk/C;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lk/J;->b:Lk/I;

    iput-object p2, p0, Lk/J;->a:Lk/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lk/J;->b:Lk/I;

    iget-object v1, p0, Lk/J;->a:Lk/C;

    invoke-static {v0, v1}, Lk/I;->a(Lk/I;Lk/C;)V

    .line 51
    return-void
.end method
