.class Lcom/google/googlenav/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/x;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/google/googlenav/ui/y;->a:Lcom/google/googlenav/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/googlenav/ui/y;->a:Lcom/google/googlenav/ui/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/x;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->f(Lcom/google/googlenav/ui/v;)V

    .line 1301
    return-void
.end method
