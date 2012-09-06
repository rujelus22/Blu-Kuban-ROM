.class final Lt/n;
.super Lt/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lac/h;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p2, p0, Lt/n;->a:Landroid/content/Context;

    iput-object p3, p0, Lt/n;->b:Lac/h;

    iput-object p4, p0, Lt/n;->c:Ljava/lang/Runnable;

    iput-boolean p5, p0, Lt/n;->d:Z

    invoke-direct {p0, p1}, Lt/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public n_()V
    .registers 6

    .prologue
    .line 175
    iget-object v1, p0, Lt/n;->a:Landroid/content/Context;

    iget-object v2, p0, Lt/n;->b:Lac/h;

    iget-object v3, p0, Lt/n;->c:Ljava/lang/Runnable;

    const-string v4, "NavigationParameters.data"

    iget-boolean v0, p0, Lt/n;->d:Z

    if-eqz v0, :cond_12

    const-string v0, "NavZoomTables.data"

    :goto_e
    invoke-static {v1, v2, v3, v4, v0}, Lt/m;->a(Landroid/content/Context;Lac/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 175
    :cond_12
    const-string v0, "ZoomTables.data"

    goto :goto_e
.end method
