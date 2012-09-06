.class Lcom/google/googlenav/ui/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ar;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ar;)V
    .registers 2
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/googlenav/ui/as;->a:Lcom/google/googlenav/ui/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/googlenav/ui/as;->a:Lcom/google/googlenav/ui/ar;

    iget-object v0, v0, Lcom/google/googlenav/ui/ar;->a:Lcom/google/googlenav/ui/ap;

    invoke-static {v0}, Lcom/google/googlenav/ui/ap;->b(Lcom/google/googlenav/ui/ap;)V

    .line 349
    return-void
.end method
