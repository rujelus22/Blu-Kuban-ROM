.class LaM/aM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laz/l;

.field final synthetic b:LaM/aL;


# direct methods
.method constructor <init>(LaM/aL;Laz/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, LaM/aM;->b:LaM/aL;

    iput-object p2, p0, LaM/aM;->a:Laz/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 90
    new-instance v1, LaM/aO;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaM/aO;-><init>(LaM/aM;)V

    .line 92
    iget-object v0, p0, LaM/aM;->a:Laz/l;

    invoke-virtual {v0}, Laz/l;->f()[Laz/f;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_1a

    aget-object v4, v2, v0

    .line 93
    iget-object v5, p0, LaM/aM;->b:LaM/aL;

    invoke-static {v5, v1, v4}, LaM/aL;->a(LaM/aL;Lcom/google/googlenav/F;Laz/f;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 95
    :cond_1a
    iget-object v0, p0, LaM/aM;->b:LaM/aL;

    invoke-virtual {v0, v1}, LaM/aL;->b(Lcom/google/googlenav/F;)V

    .line 96
    iget-object v0, p0, LaM/aM;->b:LaM/aL;

    iget-object v0, v0, LaM/aL;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    iget-object v1, p0, LaM/aM;->b:LaM/aL;

    invoke-virtual {v0, v1}, LaM/am;->m(LaM/i;)V

    .line 97
    return-void
.end method
