.class public Lcom/estrongs/android/pop/esclasses/ESListActivity;
.super Landroid/app/ListActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getResources()Landroid/content/res/Resources;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/b;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/b;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/a;->a(Landroid/content/Context;)V

    return-void
.end method
