.class Lcom/estrongs/android/pop/view/ck;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/ck;->b:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    sget-boolean v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a:Z

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/c;->a(ZLandroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_e1

    :cond_12
    :goto_12
    :try_start_12
    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/util/ah;->a()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->L()I

    move-result v1

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/util/ah;->a(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_de

    :cond_2d
    :goto_2d
    :try_start_2d
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/c;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->Q()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v3, 0x4d3f6400

    cmp-long v1, v1, v3

    if-lez v1, :cond_61

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/16 v2, 0xb

    const/4 v3, 0x0

    sget v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_61} :catch_dc

    :cond_61
    :goto_61
    :try_start_61
    sget v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:I

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->S()I

    move-result v1

    sget v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:I

    if-eq v1, v2, :cond_7c

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x4

    const/4 v3, 0x0

    sget v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V

    :cond_7c
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ck;->b:Z

    if-eqz v1, :cond_8f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {}, Lcom/estrongs/android/util/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_89} :catch_d3

    :cond_89
    :goto_89
    :try_start_89
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->getMacAddr(Landroid/content/Context;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_d5

    :goto_8e
    return-void

    :cond_8f
    :try_start_8f
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a0} :catch_da

    move-result-object v0

    :goto_a1
    if-eqz v0, :cond_89

    :try_start_a3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_89

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->ai()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_89

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {}, Lcom/estrongs/android/util/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ck;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/c;->c(J)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_d2} :catch_d3

    goto :goto_89

    :catch_d3
    move-exception v0

    goto :goto_89

    :catch_d5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8e

    :catch_da
    move-exception v1

    goto :goto_a1

    :catch_dc
    move-exception v1

    goto :goto_61

    :catch_de
    move-exception v1

    goto/16 :goto_2d

    :catch_e1
    move-exception v1

    goto/16 :goto_12
.end method
