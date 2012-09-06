.class public Lcom/estrongs/android/pop/view/mh;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/app/ProgressDialog;

.field private static c:Z

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/mh;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/mh;->b:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/mh;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/mh;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final a()V
    .registers 3

    :try_start_0
    sget-object v1, Lcom/estrongs/android/pop/view/mh;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_18

    :try_start_3
    sget-boolean v0, Lcom/estrongs/android/pop/view/mh;->c:Z

    if-nez v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/estrongs/android/pop/view/mh;->a:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/pop/view/mj;

    invoke-direct {v2}, Lcom/estrongs/android/pop/view/mj;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    goto :goto_8

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    goto :goto_8
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)V
    .registers 1

    sput-object p0, Lcom/estrongs/android/pop/view/mh;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static final a(Landroid/content/Context;II)V
    .registers 10

    sget-object v6, Lcom/estrongs/android/pop/view/mh;->d:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    sget-boolean v0, Lcom/estrongs/android/pop/view/mh;->c:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/estrongs/android/pop/view/mh;->b:Landroid/app/ProgressDialog;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_30

    if-eqz v0, :cond_10

    :try_start_b
    sget-object v0, Lcom/estrongs/android/pop/view/mh;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_35

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :try_start_11
    sput-boolean v0, Lcom/estrongs/android/pop/view/mh;->c:Z

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lcom/estrongs/android/pop/view/mi;

    invoke-direct {v5, p0}, Lcom/estrongs/android/pop/view/mi;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/mh;->b:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/estrongs/android/pop/view/mh;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_30
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_33

    :goto_2e
    :try_start_2e
    monitor-exit v6

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v6
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v0

    :catch_33
    move-exception v0

    goto :goto_2e

    :catch_35
    move-exception v0

    goto :goto_10
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/estrongs/android/pop/view/mh;->c:Z

    return-void
.end method

.method static synthetic b()Landroid/app/ProgressDialog;
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/view/mh;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method
