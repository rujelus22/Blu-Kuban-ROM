.class public Lcom/estrongs/android/pop/view/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/a/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/a/i;

    move-result-object v2

    if-eqz v2, :cond_18

    array-length v2, v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_3a

    if-eqz v2, :cond_18

    move-object v0, v1

    goto :goto_18

    :catch_3a
    move-exception v1

    goto :goto_18
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    sget-object v1, Lcom/estrongs/android/pop/view/a/a;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/view/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_48

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v2, "Spreadtrum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v2, "Spreadtrum_cmcc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    :cond_1b
    :try_start_1b
    instance-of v1, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_27

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Landroid/content/Intent;)Z

    :goto_26
    return-void

    :cond_27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_2a} :catch_2b

    goto :goto_26

    :catch_2b
    move-exception v1

    const v1, 0x7f09014d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_26

    :cond_48
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/pop/view/a/j;

    move-result-object v1

    if-nez v1, :cond_72

    if-nez p2, :cond_58

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_26

    :cond_58
    sget-object v1, Lcom/estrongs/android/pop/view/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "filepath"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_69
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_26

    :catch_6d
    move-exception v1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_26

    :cond_72
    iget-object v2, v1, Lcom/estrongs/android/pop/view/a/j;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/a/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_26
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 8

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    instance-of v1, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_1f

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b()Z

    move-result v2

    if-nez v2, :cond_20

    const v1, 0x7f0901d4

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    :cond_44
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "oneshot"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "configchange"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Lcom/estrongs/android/pop/c/a;

    iget v1, v1, Lcom/estrongs/android/pop/c/a;->a:I

    invoke-static {p1, v1}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p2}, Lcom/estrongs/android/pop/a/f;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_71
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_71} :catch_7a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_71} :catch_93

    :try_start_71
    invoke-static {p0, v2, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_74
    .catch Landroid/content/ActivityNotFoundException; {:try_start_71 .. :try_end_74} :catch_75
    .catch Ljava/lang/NullPointerException; {:try_start_71 .. :try_end_74} :catch_93

    goto :goto_1f

    :catch_75
    move-exception v1

    :try_start_76
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1f

    :catch_7a
    move-exception v1

    goto :goto_1f

    :cond_7c
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f

    :catch_93
    move-exception v1

    goto :goto_1f

    :cond_95
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "oneshot"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "configchange"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v3, "Market"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c3

    const-string v2, "/sdcard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/pop/a/f;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_d6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_76 .. :try_end_d6} :catch_7a
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_d6} :catch_93

    goto/16 :goto_1f
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2b
    return-void

    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_51

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/PopNoteEditor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_4d
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2b

    :cond_51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4d
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f09009e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f09009f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0900a0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0900a1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/estrongs/android/pop/view/a/b;

    invoke-direct {v2, p2, p0, p1}, Lcom/estrongs/android/pop/view/a/b;-><init>(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Longcheer"

    if-ne v0, v1, :cond_28

    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_28
.end method

.method private static a()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6} :catch_c

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 9

    const/4 v5, 0x0

    const/high16 v4, 0x400

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    instance-of v0, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_21

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b()Z

    move-result v1

    if-nez v1, :cond_22

    const v0, 0x7f0901d4

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    :cond_46
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "oneshot"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "configchange"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Lcom/estrongs/android/pop/c/a;

    iget v0, v0, Lcom/estrongs/android/pop/c/a;->a:I

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/pop/a/f;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_6f
    invoke-static {p0, v1, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_72
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_21

    :catch_73
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_21

    :cond_78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_21

    :cond_8d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "oneshot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "configchange"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p2}, Lcom/estrongs/android/pop/a/f;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_b1
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_b4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b1 .. :try_end_b4} :catch_b6

    goto/16 :goto_21

    :catch_b6
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_21
.end method

.method public static b(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ABSOLUTE_FILE_PATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_15
    return-void

    :cond_16
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "ABSOLUTE_FILE_PATH"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/estrongs/android/pop/a/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {p2}, Lcom/estrongs/android/pop/a/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_39
    invoke-static {}, Lcom/estrongs/android/pop/view/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_43
    invoke-static {}, Lcom/estrongs/android/pop/view/a/a;->a()Z

    move-result v3

    if-nez v3, :cond_65

    invoke-static {}, Lcom/estrongs/android/pop/a/a;->a()Lcom/estrongs/android/pop/a/a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/estrongs/android/pop/a/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_65

    if-eqz p1, :cond_65

    invoke-static {}, Lcom/estrongs/android/pop/a/a;->a()Lcom/estrongs/android/pop/a/a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v3, p1, v0}, Lcom/estrongs/android/pop/a/a;->a(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_65
    if-nez v1, :cond_7b

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "image/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_75
    invoke-static {p0, v2, v0}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_15

    :catch_79
    move-exception v0

    goto :goto_15

    :cond_7b
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_75

    :catch_7f
    move-exception v0

    goto :goto_15

    :cond_81
    invoke-static {}, Lcom/estrongs/android/pop/view/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "image/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_99
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_99} :catch_79
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_99} :catch_7f

    goto :goto_75

    :cond_9a
    move-object v0, p2

    goto :goto_8b

    :cond_9c
    move-object v0, p2

    goto :goto_43
.end method

.method public static b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/esj"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method private static b()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6} :catch_d

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    :goto_c
    return v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method public static c(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/x-shockwave-flash"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static d(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/epub+zip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static e(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/umd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static f(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/x-plucker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static g(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/x-expandedbook"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static h(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/x-mobipocket-ebook"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static i(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/x-bittorrent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static j(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/x-chess-pgn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static k(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static l(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/x-nzb"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static m(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public static n(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_33

    const-string v1, ".docx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2f
    :try_start_2f
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_32} :catch_42

    :cond_32
    :goto_32
    return-void

    :cond_33
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    :catch_42
    move-exception v0

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Longcheer"

    if-eq v0, v1, :cond_4f

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Inventec"

    if-ne v0, v1, :cond_32

    :cond_4f
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_32
.end method

.method public static o(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_33

    const-string v1, ".xlsx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2f
    :try_start_2f
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_32} :catch_42

    :cond_32
    :goto_32
    return-void

    :cond_33
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    :catch_42
    move-exception v0

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Longcheer"

    if-ne v0, v1, :cond_32

    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_32
.end method

.method public static p(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_33

    const-string v1, ".pptx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2f
    :try_start_2f
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_32} :catch_42

    :cond_32
    :goto_32
    return-void

    :cond_33
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    :catch_42
    move-exception v0

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Longcheer"

    if-ne v0, v1, :cond_32

    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_32
.end method

.method public static q(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/x-chm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_25
    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Longcheer"

    if-ne v0, v1, :cond_28

    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_28
.end method

.method public static r(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 5

    const v1, 0x7f090051

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    :goto_18
    return-void

    :cond_19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/html"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_29
    invoke-static {p0, v1, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_18

    :catch_2d
    move-exception v0

    goto :goto_18

    :cond_2f
    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_18

    :cond_33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1d
.end method

.method public static s(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    .registers 6

    const v3, 0x7f090051

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    :goto_c
    return-void

    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "archive_file_name"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x50038

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->B(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const v0, 0x50040

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->B(I)Ljava/lang/String;

    move-result-object v0

    :cond_37
    :goto_37
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_43
    invoke-static {p0, v1, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/content/ActivityNotFoundException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_c

    :catch_47
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_c

    :cond_4c
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->k(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_58
    const v0, 0x50041

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->B(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method
