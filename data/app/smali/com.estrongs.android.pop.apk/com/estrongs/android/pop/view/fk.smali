.class Lcom/estrongs/android/pop/view/fk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/d/g;


# instance fields
.field a:Lcom/estrongs/android/pop/d/a;

.field b:J

.field final c:I

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/estrongs/android/pop/view/ff;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fk;->e:Lcom/estrongs/android/pop/view/ff;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/fk;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/fk;->a:Lcom/estrongs/android/pop/d/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/fk;->b:J

    const/16 v0, 0x2710

    iput v0, p0, Lcom/estrongs/android/pop/view/fk;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/fk;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/fk;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/fk;->d()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/fk;)Lcom/estrongs/android/pop/view/ff;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->e:Lcom/estrongs/android/pop/view/ff;

    return-object v0
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->a:Lcom/estrongs/android/pop/d/a;

    invoke-static {}, Lcom/estrongs/android/pop/view/ff;->A()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    sget-object v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->finish()V

    :cond_13
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->a:Lcom/estrongs/android/pop/d/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fk;->f:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/view/fk;->e:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v4, 0x7f09017b

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02007c

    const-wide/16 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->a:Lcom/estrongs/android/pop/d/a;

    invoke-static {}, Lcom/estrongs/android/pop/view/ff;->A()J

    move-result-wide v1

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/d/a;->a(JLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->d:Ljava/util/Map;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/fk;->d:Ljava/util/Map;

    :cond_11
    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->e:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->l(Lcom/estrongs/android/pop/view/ff;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/view/fk;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/fk;->b:J

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->a:Lcom/estrongs/android/pop/d/a;

    invoke-static {}, Lcom/estrongs/android/pop/view/ff;->A()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-boolean v0, v0, Lcom/estrongs/android/pop/d/c;->e:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->e:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/fl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fl;-><init>(Lcom/estrongs/android/pop/view/fk;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1b
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/fk;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/fk;->d()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->e:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->l(Lcom/estrongs/android/pop/view/ff;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->e:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/fm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fm;-><init>(Lcom/estrongs/android/pop/view/fk;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->e:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/fo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fo;-><init>(Lcom/estrongs/android/pop/view/fk;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public c()Z
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fk;->a:Lcom/estrongs/android/pop/d/a;

    invoke-static {}, Lcom/estrongs/android/pop/view/ff;->A()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, v0, Lcom/estrongs/android/pop/d/c;->e:Z

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method
