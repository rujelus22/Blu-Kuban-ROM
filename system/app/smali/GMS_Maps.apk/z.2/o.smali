.class final Lz/o;
.super Lz/d;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lat/h;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Z)V
    .registers 6

    iput-object p2, p0, Lz/o;->a:Landroid/content/Context;

    iput-object p3, p0, Lz/o;->b:Lat/h;

    iput-object p4, p0, Lz/o;->c:Ljava/lang/Runnable;

    iput-boolean p5, p0, Lz/o;->d:Z

    invoke-direct {p0, p1}, Lz/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v1, p0, Lz/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lz/o;->b:Lat/h;

    iget-object v3, p0, Lz/o;->c:Ljava/lang/Runnable;

    const-string v4, "NavigationParameters.data"

    iget-boolean v0, p0, Lz/o;->d:Z

    if-eqz v0, :cond_12

    const-string v0, "NavZoomTables.data"

    :goto_e
    invoke-static {v1, v2, v3, v4, v0}, Lz/n;->a(Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    const-string v0, "ZoomTables.data"

    goto :goto_e
.end method
