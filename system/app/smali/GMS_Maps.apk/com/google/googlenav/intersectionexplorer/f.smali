.class Lcom/google/googlenav/intersectionexplorer/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lat/B;

.field final synthetic b:Lcom/google/googlenav/intersectionexplorer/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/intersectionexplorer/d;Lat/B;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/f;->b:Lcom/google/googlenav/intersectionexplorer/d;

    iput-object p2, p0, Lcom/google/googlenav/intersectionexplorer/f;->a:Lat/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/f;->b:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->e(Lcom/google/googlenav/intersectionexplorer/d;)Lat/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/f;->a:Lat/B;

    sget-object v2, Lcom/google/googlenav/intersectionexplorer/d;->b:Lat/Y;

    invoke-virtual {v0, v1, v2}, Lat/u;->d(Lat/B;Lat/Y;)V

    .line 624
    return-void
.end method
