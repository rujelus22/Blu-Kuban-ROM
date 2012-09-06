.class Lcom/google/googlenav/ui/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lat/B;

.field final synthetic b:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;Lat/B;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4786
    iput-object p1, p0, Lcom/google/googlenav/ui/J;->b:Lcom/google/googlenav/ui/v;

    iput-object p2, p0, Lcom/google/googlenav/ui/J;->a:Lat/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4789
    iget-object v0, p0, Lcom/google/googlenav/ui/J;->b:Lcom/google/googlenav/ui/v;

    iget-object v1, p0, Lcom/google/googlenav/ui/J;->a:Lat/B;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(Lat/B;)V

    .line 4790
    return-void
.end method
