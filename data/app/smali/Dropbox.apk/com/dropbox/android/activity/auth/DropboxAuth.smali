.class public Lcom/dropbox/android/activity/auth/DropboxAuth;
.super Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ldbxyzptlk/p/x;

.field private e:Ldbxyzptlk/p/u;

.field private g:Landroid/graphics/Bitmap;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Lcom/dropbox/android/activity/delegate/x;

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/auth/DropboxAuth;->a:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/android/activity/auth/DropboxAuth;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->h:Z

    .line 76
    new-instance v0, Lcom/dropbox/android/activity/delegate/x;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/x;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->x:Lcom/dropbox/android/activity/delegate/x;

    .line 87
    new-instance v0, Lcom/dropbox/android/activity/auth/a;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/auth/a;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->y:Landroid/os/Handler;

    .line 463
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/auth/DropboxAuth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->g:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->u:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/auth/DropboxAuth;Ldbxyzptlk/p/u;)Ldbxyzptlk/p/u;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->e:Ldbxyzptlk/p/u;

    return-object p1
.end method

.method static synthetic a(Lcom/dropbox/android/activity/auth/DropboxAuth;Ldbxyzptlk/p/x;)Ldbxyzptlk/p/x;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->d:Ldbxyzptlk/p/x;

    return-object p1
.end method

.method static synthetic a(Lcom/dropbox/android/activity/auth/DropboxAuth;Ldbxyzptlk/p/o;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Ldbxyzptlk/p/o;)V

    return-void
.end method

.method private a(Ldbxyzptlk/p/o;)V
    .registers 6
    .parameter

    .prologue
    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->k:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 365
    iget-object v1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->k:Ljava/lang/String;

    const-class v2, Lcom/dropbox/client2/android/AuthActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :goto_16
    const-string v1, "ACCESS_TOKEN"

    iget-object v2, p1, Ldbxyzptlk/p/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v1, "ACCESS_SECRET"

    iget-object v2, p1, Ldbxyzptlk/p/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v1, "UID"

    iget-wide v2, p1, Ldbxyzptlk/p/o;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    :try_start_34
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_34 .. :try_end_37} :catch_69

    .line 379
    :goto_37
    invoke-virtual {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->finish()V

    .line 380
    return-void

    .line 368
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/connect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_16

    .line 378
    :catch_69
    move-exception v0

    goto :goto_37
.end method

.method static synthetic a(Lcom/dropbox/android/activity/auth/DropboxAuth;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 298
    sget-boolean v0, Lcom/dropbox/android/activity/auth/DropboxAuth;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/x;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->d:Ldbxyzptlk/p/x;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 302
    const-string v1, "/connect"

    .line 303
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "k"

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->i:Ljava/lang/String;

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v3, "s"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->j:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "n"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->d:Ldbxyzptlk/p/x;

    iget-wide v3, v3, Ldbxyzptlk/p/x;->f:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 308
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 309
    iget-object v0, v0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v0}, Ldbxyzptlk/p/i;->a()Ldbxyzptlk/o/m;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/F;

    invoke-virtual {v0}, Ldbxyzptlk/p/F;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v1, v2}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    return-object v0
.end method

.method static synthetic g(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/u;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->e:Ldbxyzptlk/p/u;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 315
    new-instance v0, Lcom/dropbox/android/activity/auth/h;

    invoke-direct {v0, p0, p0}, Lcom/dropbox/android/activity/auth/h;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;Landroid/content/Context;)V

    .line 316
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/auth/h;->a(I)V

    .line 317
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/auth/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    return-void
.end method

.method static synthetic h(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()V
    .registers 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->k()V

    .line 322
    return-void
.end method

.method static synthetic i(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->y:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    new-instance v0, Lcom/dropbox/android/activity/auth/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/activity/auth/g;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;Lcom/dropbox/android/activity/auth/a;)V

    invoke-virtual {v0}, Lcom/dropbox/android/activity/auth/g;->start()V

    .line 327
    return-void
.end method

.method static synthetic j(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method private j()V
    .registers 4

    .prologue
    .line 334
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 336
    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 337
    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 338
    const v1, 0x7f09000e

    new-instance v2, Lcom/dropbox/android/activity/auth/f;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/auth/f;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 346
    return-void
.end method

.method static synthetic k(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .registers 4

    .prologue
    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 353
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    :try_start_39
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_39 .. :try_end_3c} :catch_40

    .line 357
    :goto_3c
    invoke-virtual {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->finish()V

    .line 358
    return-void

    .line 356
    :catch_40
    move-exception v0

    goto :goto_3c
.end method

.method static synthetic l(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private l()V
    .registers 4

    .prologue
    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 385
    const v1, 0x7f090184

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 386
    const v1, 0x7f09000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 388
    return-void
.end method

.method static synthetic m(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/dropbox/android/activity/auth/DropboxAuth;)Z
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->h:Z

    return v0
.end method

.method static synthetic o(Lcom/dropbox/android/activity/auth/DropboxAuth;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->j()V

    return-void
.end method

.method static synthetic p(Lcom/dropbox/android/activity/auth/DropboxAuth;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->l()V

    return-void
.end method

.method static synthetic q(Lcom/dropbox/android/activity/auth/DropboxAuth;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->g()V

    return-void
.end method

.method static synthetic r(Lcom/dropbox/android/activity/auth/DropboxAuth;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->h()V

    return-void
.end method

.method static synthetic s(Lcom/dropbox/android/activity/auth/DropboxAuth;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->i()V

    return-void
.end method

.method static synthetic t(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic v(Lcom/dropbox/android/activity/auth/DropboxAuth;)Lcom/dropbox/android/activity/delegate/x;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->x:Lcom/dropbox/android/activity/delegate/x;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->x:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 166
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v1, "com.dropbox.activity.extra.NEXT_INTENT"

    invoke-virtual {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const-string v1, "FULL_SCREEN"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0, v4}, Lcom/dropbox/android/activity/auth/DropboxAuth;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    invoke-virtual {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->finish()V

    .line 259
    :goto_2a
    return-void

    .line 182
    :cond_2b
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->setContentView(I)V

    .line 184
    sput-boolean v3, Lcom/dropbox/android/activity/auth/DropboxAuth;->b:Z

    .line 186
    if-eqz p1, :cond_5b

    .line 187
    const-string v0, "mAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/x;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->d:Ldbxyzptlk/p/x;

    .line 188
    const-string v0, "mConnectInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/u;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->e:Ldbxyzptlk/p/u;

    .line 189
    const-string v0, "mAppIconBitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->g:Landroid/graphics/Bitmap;

    .line 190
    const-string v0, "mUseAppIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->h:Z

    .line 193
    :cond_5b
    invoke-virtual {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 194
    const-string v1, "CONSUMER_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->i:Ljava/lang/String;

    .line 195
    const-string v1, "CONSUMER_SIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->j:Ljava/lang/String;

    .line 196
    const-string v1, "CALLING_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->k:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->i:Ljava/lang/String;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->j:Ljava/lang/String;

    if-nez v0, :cond_8a

    .line 199
    :cond_7f
    sget-object v0, Lcom/dropbox/android/activity/auth/DropboxAuth;->a:Ljava/lang/String;

    const-string v1, "App trying to authenticate without setting a consumer key or sig."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->j()V

    goto :goto_2a

    .line 204
    :cond_8a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d7

    .line 211
    sget-object v0, Lcom/dropbox/android/activity/auth/DropboxAuth;->a:Ljava/lang/String;

    const-string v1, "App trying to authenticate has not set up proper intent filter."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->j()V

    goto/16 :goto_2a

    .line 216
    :cond_d7
    invoke-virtual {p0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->c:Landroid/content/Context;

    .line 217
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->l:Landroid/widget/Button;

    .line 218
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->m:Landroid/widget/Button;

    .line 219
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->n:Landroid/widget/Button;

    .line 220
    const v0, 0x7f0d0006

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->o:Landroid/widget/Button;

    .line 221
    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->p:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->q:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->r:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->s:Landroid/widget/ImageView;

    .line 225
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->t:Landroid/widget/ImageView;

    .line 226
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->u:Landroid/view/View;

    .line 227
    const v0, 0x7f0d0007

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->v:Landroid/view/View;

    .line 228
    const v0, 0x7f0d0004

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->w:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->q:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 232
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->l:Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/auth/b;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/auth/b;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->m:Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/auth/c;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/auth/c;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->n:Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/auth/d;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/auth/d;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->o:Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/auth/e;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/auth/e;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 284
    packed-switch p1, :pswitch_data_1c

    .line 293
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 286
    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 287
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 288
    const v1, 0x7f09017f

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/auth/DropboxAuth;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_5

    .line 284
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 263
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onResume()V

    .line 264
    new-instance v0, Lcom/dropbox/android/activity/auth/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/activity/auth/g;-><init>(Lcom/dropbox/android/activity/auth/DropboxAuth;Lcom/dropbox/android/activity/auth/a;)V

    invoke-virtual {v0}, Lcom/dropbox/android/activity/auth/g;->start()V

    .line 265
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 276
    const-string v0, "mAccount"

    iget-object v1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->d:Ldbxyzptlk/p/x;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 277
    const-string v0, "mConnectInfo"

    iget-object v1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->e:Ldbxyzptlk/p/u;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 278
    const-string v0, "mAppIconBitmap"

    iget-object v1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 279
    const-string v0, "mUseAppIcon"

    iget-boolean v1, p0, Lcom/dropbox/android/activity/auth/DropboxAuth;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    return-void
.end method
