.class Lcom/google/googlenav/ui/view/dialog/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/s;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/y;->b:Lcom/google/googlenav/ui/view/dialog/s;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/y;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/y;->b:Lcom/google/googlenav/ui/view/dialog/s;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/y;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/s;->a(Lcom/google/googlenav/ui/view/dialog/s;Ljava/util/List;Lam/j;)V

    .line 293
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    .line 294
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/y;->b:Lcom/google/googlenav/ui/view/dialog/s;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/s;->c(Lcom/google/googlenav/ui/view/dialog/s;I)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 296
    :cond_14
    return-void
.end method
