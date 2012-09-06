.class LaM/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lat/B;

.field final synthetic b:I

.field final synthetic c:Ln/B;

.field final synthetic d:LaM/ae;


# direct methods
.method constructor <init>(LaM/ae;Lat/B;ILn/B;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1842
    iput-object p1, p0, LaM/af;->d:LaM/ae;

    iput-object p2, p0, LaM/af;->a:Lat/B;

    iput p3, p0, LaM/af;->b:I

    iput-object p4, p0, LaM/af;->c:Ln/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1847
    iget-object v0, p0, LaM/af;->d:LaM/ae;

    iget-object v1, p0, LaM/af;->a:Lat/B;

    invoke-static {v0, v1}, LaM/ae;->a(LaM/ae;Lat/B;)Lat/B;

    .line 1848
    iget-object v0, p0, LaM/af;->d:LaM/ae;

    iget v1, p0, LaM/af;->b:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, LaM/ae;->a(LaM/ae;J)J

    .line 1849
    iget-object v0, p0, LaM/af;->d:LaM/ae;

    iget-object v1, p0, LaM/af;->c:Ln/B;

    invoke-static {v0, v1}, LaM/ae;->a(LaM/ae;Ln/B;)Ln/B;

    .line 1850
    iget-object v0, p0, LaM/af;->d:LaM/ae;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, LaM/ae;->b(LaM/ae;J)J

    .line 1854
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->b()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1855
    iget-object v0, p0, LaM/af;->d:LaM/ae;

    invoke-virtual {v0}, LaM/ae;->a()V

    .line 1857
    :cond_32
    return-void
.end method
