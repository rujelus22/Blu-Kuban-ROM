.class Lcom/google/googlenav/ui/x;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/google/googlenav/ui/x;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1293
    const/4 v0, 0x0

    .line 1295
    iget-object v1, p0, Lcom/google/googlenav/ui/x;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v1}, Lcom/google/googlenav/ui/v;->g(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/y;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/y;-><init>(Lcom/google/googlenav/ui/x;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 1303
    return-void
.end method
