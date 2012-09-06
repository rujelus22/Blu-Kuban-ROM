.class Lcom/google/googlenav/ui/wizard/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 2
    .parameter

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ds;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;Lcom/google/googlenav/aW;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1428
    invoke-virtual {p2}, Lcom/google/googlenav/aW;->S()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/googlenav/aW;->T()I

    move-result v1

    invoke-static {p1, v0, v1}, Lad/y;->a(Lcom/google/googlenav/ai;II)Lad/y;

    move-result-object v0

    .line 1432
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ds;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-static {v1, v0, p2}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/ui/wizard/dp;Lad/y;Lcom/google/googlenav/aW;)V

    .line 1433
    return-void
.end method
