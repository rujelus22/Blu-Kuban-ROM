.class public Lcom/estrongs/android/pop/app/ZipViewer;
.super Lcom/estrongs/android/pop/esclasses/ESListActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/String;

.field private G:Landroid/os/Handler;

.field private H:Lcom/estrongs/android/pop/app/ck;

.field private I:Landroid/app/ProgressDialog;

.field private J:Landroid/app/ProgressDialog;

.field private K:Ljava/io/File;

.field private L:Ljava/lang/String;

.field private M:Lcom/estrongs/android/widget/ap;

.field private N:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field a:Lcom/estrongs/android/pop/app/cp;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Ljava/lang/String;

.field private y:Lcom/estrongs/io/archive/h;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESListActivity;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->b:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->c:Landroid/view/View;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->d:Landroid/view/View;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->e:Landroid/view/View;

    const-string v0, "/"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->y:Lcom/estrongs/io/archive/h;

    const-string v0, "/sdcard/test.zip"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->A:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->C:Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->D:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->F:Ljava/lang/String;

    const-string v0, "AUTO"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->L:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->M:Lcom/estrongs/android/widget/ap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->N:Ljava/util/HashMap;

    return-void
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_26

    move-result-object v1

    :try_start_e
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_40

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_3c

    move-result-object v0

    :goto_20
    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_25
    :goto_25
    return-object v0

    :catch_26
    move-exception v0

    move-object v1, v6

    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3a

    if-eqz v1, :cond_3e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_25

    :catchall_32
    move-exception v0

    move-object v1, v6

    :goto_34
    if-eqz v1, :cond_39

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_39
    throw v0

    :catchall_3a
    move-exception v0

    goto :goto_34

    :catch_3c
    move-exception v0

    goto :goto_28

    :cond_3e
    move-object v0, v6

    goto :goto_25

    :cond_40
    move-object v0, v6

    goto :goto_20
.end method

.method private a(IZ)V
    .registers 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v3, p1, v0

    if-lez v3, :cond_24

    sub-int v0, p1, v0

    :goto_10
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_26

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->N:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    return-void

    :cond_24
    move v0, v1

    goto :goto_10

    :cond_26
    const v0, 0x7f070257

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_48

    const v1, -0xeaab6a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->N:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_44
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_23

    :cond_48
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->N:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44
.end method

.method private a(Landroid/widget/ImageView;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, p2, :cond_f

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-void
.end method

.method private a(Landroid/widget/ListView;Z)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-direct {p0, v0, p2}, Lcom/estrongs/android/pop/app/ZipViewer;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ZipViewer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ZipViewer;Landroid/widget/ListView;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/widget/ListView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ZipViewer;Lcom/estrongs/io/archive/h;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->y:Lcom/estrongs/io/archive/h;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->L:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ZipViewer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/ZipViewer;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    const v2, 0x7f090051

    const/4 v3, 0x0

    :try_start_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/app/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3d

    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2c

    goto :goto_15

    :catch_2c
    move-exception v0

    instance-of v1, v0, Landroid/content/ActivityNotFoundException;

    if-eqz v1, :cond_4f

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_15

    :cond_3d
    :try_start_3d
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_15

    :cond_47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4e} :catch_2c

    goto :goto_15

    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090150

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_15
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->showDialog(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/eo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/eo;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/eo;->start()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->e:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .registers 7

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "archive_file"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "output_path"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->B:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "overwrite"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "charset_name"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->L:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-ge v0, v3, :cond_63

    :cond_2c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3b

    array-length v0, v2

    if-lez v0, :cond_3b

    array-length v3, v2

    const/4 v0, 0x0

    :goto_39
    if-lt v0, v3, :cond_55

    :cond_3b
    const-string v0, "files_selected"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-class v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :goto_54
    return-void

    :cond_55
    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_63
    const-string v0, "files_selected"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-class v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_54
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ZipViewer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->C:Z

    return-void
.end method

.method private b(Z)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->c(Z)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->c(Z)V

    goto :goto_15
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, ".gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_30
    const/4 v0, 0x1

    goto :goto_3
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/estrongs/android/pop/app/ZipViewer;->C:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->N:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->g:Landroid/widget/ImageView;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->M:Lcom/estrongs/android/widget/ap;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/ap;->a([Ljava/io/File;)V

    new-instance v0, Lcom/estrongs/android/pop/app/en;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ZipViewer;->M:Lcom/estrongs/android/widget/ap;

    const v4, 0x7f030052

    new-array v5, v7, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    new-array v6, v7, [I

    fill-array-data v6, :array_6e

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/app/en;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;Landroid/content/Context;Lcom/estrongs/android/widget/an;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->I:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->I:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_6d
    return-void

    :array_6e
    .array-data 0x4
        0x56t 0x2t 0x7t 0x7ft
        0x57t 0x2t 0x7t 0x7ft
    .end array-data
.end method

.method private c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->c:Landroid/view/View;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_14

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_13
    return-void

    :cond_14
    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;

    return-object v0
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isTmpFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    if-nez v0, :cond_37

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_a

    :cond_37
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_48
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->y:Lcom/estrongs/io/archive/h;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->y:Lcom/estrongs/io/archive/h;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->g()V

    goto :goto_26
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    return-object v0
.end method

.method private e()V
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->C:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->g:Landroid/widget/ImageView;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->finish()V

    :goto_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;

    if-nez v0, :cond_30

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->setResult(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->finish()V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_16

    :catch_2b
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->finish()V

    goto :goto_21

    :cond_30
    :try_start_30
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->c()V
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_33} :catch_2b

    goto :goto_21
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/ZipViewer;)Lcom/estrongs/android/pop/app/ck;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->H:Lcom/estrongs/android/pop/app/ck;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->D:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->I:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/ZipViewer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->c()V

    return-void
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/ZipViewer;)Lcom/estrongs/io/archive/h;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->y:Lcom/estrongs/io/archive/h;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->N:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/ZipViewer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->G:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->N:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/al;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/estrongs/android/widget/al;->notifyDataSetChanged()V

    :cond_12
    return-void
.end method

.method public a()Z
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/view/SupportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "which_help"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->d()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESListActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_49

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1e
    const-string v2, "not_ask_more"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->A:Z

    const-string v2, "output_path_type"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_52

    const-string v0, "output_path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->B:Ljava/lang/String;

    :cond_37
    :goto_37
    if-eqz v1, :cond_41

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->B:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Z)V

    :cond_41
    const v0, 0x10001000

    if-ne v0, p1, :cond_49

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->b()V

    :cond_49
    return-void

    :cond_4a
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :cond_52
    if-ne v5, v2, :cond_66

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->B:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    goto :goto_37

    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->B:Ljava/lang/String;

    goto :goto_37
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07025a

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070259

    if-ne v0, v1, :cond_40

    :cond_14
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->C:Z

    if-eqz v0, :cond_26

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->C:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->g:Landroid/widget/ImageView;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Z)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/ZipViewer;->C:Z

    const v0, 0x7f090135

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->g:Landroid/widget/ImageView;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    :cond_40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07025d

    if-eq v0, v1, :cond_52

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07025c

    if-ne v0, v1, :cond_25

    :cond_52
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->h:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->C:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-ge v0, v3, :cond_7d

    :cond_6a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_25

    :cond_7d
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->A:Z

    if-eqz v0, :cond_85

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->b()V

    goto :goto_25

    :cond_85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "archive_file"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wait_for_output_path"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "charset_name"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/ArchiveExtractEditActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v1, 0x10001000

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_25
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v1, 0x0

    const/16 v2, 0x400

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->H()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->setTheme(I)V

    :goto_21
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "archive_file_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    if-nez v0, :cond_d7

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_51

    const v0, 0x7f090160

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->finish()V

    :goto_48
    return-void

    :cond_49
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_21

    :cond_51
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    const-string v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d7

    :try_start_65
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->D:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_d1

    const-string v0, "application/x-gzip"

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_363

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_87
    if-nez v0, :cond_aa

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/estrongs/android/util/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_aa
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tmp/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/estrongs/android/util/a/b;->a(Ljava/io/InputStream;Ljava/io/File;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ZipViewer;->D:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_d7} :catch_109

    :cond_d7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_121

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-wide/16 v0, 0x3e8

    :try_start_101
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_104
    .catch Ljava/lang/InterruptedException; {:try_start_101 .. :try_end_104} :catch_11c

    :goto_104
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->finish()V

    goto/16 :goto_48

    :catch_109
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const v0, 0x7f090161

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->finish()V

    goto/16 :goto_48

    :catch_11c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_104

    :cond_121
    invoke-virtual {p0, v8}, Lcom/estrongs/android/pop/app/ZipViewer;->requestWindowFeature(I)Z

    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->setTheme(I)V

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/c;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->b:Landroid/widget/TextView;

    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->c:Landroid/view/View;

    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->d:Landroid/view/View;

    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->e:Landroid/view/View;

    const v0, 0x7f070258

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->r:Landroid/widget/TextView;

    const v0, 0x7f07025b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->s:Landroid/widget/TextView;

    const v0, 0x7f07025e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->t:Landroid/widget/TextView;

    const v0, 0x7f07025f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->u:Landroid/widget/TextView;

    const v0, 0x7f070261

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->v:Landroid/widget/TextView;

    const v0, 0x7f070263

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->r:Landroid/widget/TextView;

    const v1, 0x7f0901a0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->s:Landroid/widget/TextView;

    const v1, 0x7f09023c

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->t:Landroid/widget/TextView;

    const v1, 0x7f090246

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->u:Landroid/widget/TextView;

    const v1, 0x7f09023b

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->v:Landroid/widget/TextView;

    const v1, 0x7f090247

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->w:Landroid/widget/TextView;

    const v1, 0x7f090098

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->f:Landroid/widget/ImageView;

    const v0, 0x7f07025a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->g:Landroid/widget/ImageView;

    const v0, 0x7f07025d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->h:Landroid/widget/ImageView;

    const v0, 0x7f070240

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->i:Landroid/widget/ImageView;

    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->j:Landroid/widget/ImageView;

    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->k:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->G()Z

    move-result v0

    if-eqz v0, :cond_2b7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->k:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/widget/ImageView;I)V

    :cond_2b7
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f070259

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f07025c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f07023f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f070262

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f070260

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->q:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->p:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/ej;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ej;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/ep;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ep;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/eq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eq;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/er;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/er;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->d:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/es;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/es;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->m:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/et;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/et;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->q:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/ew;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ew;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/pop/app/ey;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ey;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->G:Landroid/os/Handler;

    invoke-static {p0}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/estrongs/android/pop/app/ez;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/ez;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->M:Lcom/estrongs/android/widget/ap;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->L:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v8}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_48

    :cond_363
    move-object v0, v1

    goto/16 :goto_87
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    const v1, 0x7f090055

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_5a

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :pswitch_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->I:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->I:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->I:Landroid/app/ProgressDialog;

    const v1, 0x7f090056

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->I:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->I:Landroid/app/ProgressDialog;

    const v1, 0x7f090060

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/ek;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ek;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->I:Landroid/app/ProgressDialog;

    goto :goto_8

    :pswitch_3e
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->J:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->J:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->J:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->J:Landroid/app/ProgressDialog;

    goto :goto_8

    :pswitch_56
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->H:Lcom/estrongs/android/pop/app/ck;

    goto :goto_8

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_9
        :pswitch_3e
        :pswitch_56
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESListActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->d()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->e()V

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->C:Z

    if-eqz v1, :cond_2e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0, p3, v4}, Lcom/estrongs/android/pop/app/ZipViewer;->a(IZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_24
    return-void

    :cond_25
    invoke-direct {p0, p3, v5}, Lcom/estrongs/android/pop/app/ZipViewer;->a(IZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_46

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->K:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->E:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Landroid/widget/ListView;Z)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ZipViewer;->c()V

    goto :goto_24

    :cond_46
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/f;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_24

    :cond_5f
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->D:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-nez v1, :cond_da

    iput-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->H:Lcom/estrongs/android/pop/app/ck;

    if-nez v1, :cond_7a

    new-instance v1, Lcom/estrongs/android/pop/app/ck;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->G:Landroid/os/Handler;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ZipViewer;->y:Lcom/estrongs/io/archive/h;

    invoke-direct {v1, p0, v2, v3}, Lcom/estrongs/android/pop/app/ck;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/h;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->H:Lcom/estrongs/android/pop/app/ck;

    :cond_7a
    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->H:Lcom/estrongs/android/pop/app/ck;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ZipViewer;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/ck;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->H:Lcom/estrongs/android/pop/app/ck;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/ck;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->a:Lcom/estrongs/android/pop/app/cp;

    if-nez v1, :cond_b7

    new-instance v1, Lcom/estrongs/android/pop/app/cp;

    invoke-direct {v1, p0, v4, v5}, Lcom/estrongs/android/pop/app/cp;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->a:Lcom/estrongs/android/pop/app/cp;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->a:Lcom/estrongs/android/pop/app/cp;

    const/4 v2, -0x1

    const v3, 0x7f09005e

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/ZipViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/app/el;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/el;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/cp;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ZipViewer;->a:Lcom/estrongs/android/pop/app/cp;

    const/4 v2, -0x2

    const v3, 0x7f090060

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/ZipViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/app/em;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/em;-><init>(Lcom/estrongs/android/pop/app/ZipViewer;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/cp;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_b7
    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->H:Lcom/estrongs/android/pop/app/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ck;->a()Z

    move-result v0

    if-nez v0, :cond_cd

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->a:Lcom/estrongs/android/pop/app/cp;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cp;->b()Z

    move-result v0

    if-nez v0, :cond_d4

    :cond_cd
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ZipViewer;->a:Lcom/estrongs/android/pop/app/cp;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cp;->show()V

    goto/16 :goto_24

    :cond_d4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->showDialog(I)V

    goto/16 :goto_24

    :cond_da
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Ljava/lang/String;)V

    goto/16 :goto_24
.end method
