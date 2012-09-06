.class public Lcom/estrongs/android/pop/view/a;
.super Lcom/estrongs/android/pop/popupwindowwitharrow/e;


# static fields
.field private static i:Lcom/estrongs/android/pop/view/a;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/a;->i:Lcom/estrongs/android/pop/view/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/a;->j:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/view/View;Ljava/lang/String;II)Lcom/estrongs/android/pop/view/a;
    .registers 11

    const-class v6, Lcom/estrongs/android/pop/view/a;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/view/a;->i:Lcom/estrongs/android/pop/view/a;

    if-nez v0, :cond_16

    new-instance v0, Lcom/estrongs/android/pop/view/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/view/a;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    sput-object v0, Lcom/estrongs/android/pop/view/a;->i:Lcom/estrongs/android/pop/view/a;

    :cond_16
    sget-object v0, Lcom/estrongs/android/pop/view/a;->i:Lcom/estrongs/android/pop/view/a;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v6

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/a;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/a;->j:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized j()Lcom/estrongs/android/pop/view/a;
    .registers 2

    const-class v0, Lcom/estrongs/android/pop/view/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/estrongs/android/pop/view/a;->i:Lcom/estrongs/android/pop/view/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()V
    .registers 4

    new-instance v0, Lcom/estrongs/android/pop/app/ar;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ar;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/a;->c(Landroid/view/View;)V

    new-instance v1, Lcom/estrongs/android/pop/view/b;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/b;-><init>(Lcom/estrongs/android/pop/view/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ar;->a(Lcom/estrongs/android/pop/app/ba;)V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/a;->i:Lcom/estrongs/android/pop/view/a;

    return-void
.end method

.method public d()V
    .registers 8

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->d()V

    :try_start_4
    iget-object v1, p0, Lcom/estrongs/android/pop/view/a;->j:Ljava/lang/String;

    if-eqz v1, :cond_52

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_7c

    move-result-object v2

    if-nez v2, :cond_11

    iput-object v3, p0, Lcom/estrongs/android/pop/view/a;->j:Ljava/lang/String;

    :goto_10
    return-void

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/estrongs/android/pop/view/a;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    :cond_2f
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/estrongs/android/util/ak;

    invoke-direct {v5}, Lcom/estrongs/android/util/ak;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iput-boolean v1, v5, Lcom/estrongs/android/util/ak;->b:Z

    move-object v0, v2

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object v1, v0

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V
    :try_end_52
    .catchall {:try_start_11 .. :try_end_52} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_52} :catch_80

    :cond_52
    :goto_52
    iput-object v3, p0, Lcom/estrongs/android/pop/view/a;->j:Ljava/lang/String;

    goto :goto_10

    :cond_55
    :try_start_55
    invoke-static {v2, v1}, Lcom/estrongs/android/pop/view/a/l;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_80

    move-result-object v1

    :try_start_59
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_52

    :catch_5d
    move-exception v4

    :goto_5e
    :try_start_5e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to start the activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_75
    .catchall {:try_start_5e .. :try_end_75} :catchall_78

    iput-object v3, p0, Lcom/estrongs/android/pop/view/a;->j:Ljava/lang/String;

    goto :goto_10

    :catchall_78
    move-exception v1

    iput-object v3, p0, Lcom/estrongs/android/pop/view/a;->j:Ljava/lang/String;

    throw v1

    :catch_7c
    move-exception v1

    move-object v1, v3

    move-object v2, v3

    goto :goto_5e

    :catch_80
    move-exception v1

    move-object v1, v3

    goto :goto_5e
.end method
