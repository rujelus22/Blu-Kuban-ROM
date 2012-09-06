.class public Lcom/dropbox/android/activity/delegate/x;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static f:Ljava/lang/ref/WeakReference;

.field private static final g:Ljava/lang/String;


# instance fields
.field a:Lcom/dropbox/android/filemanager/LocalEntry;

.field b:Lcom/dropbox/android/filemanager/LocalEntry;

.field c:Lcom/dropbox/android/filemanager/LocalEntry;

.field public d:Z

.field public e:Z

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/delegate/x;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x1f

    iput v0, p0, Lcom/dropbox/android/activity/delegate/x;->h:I

    .line 73
    iput-boolean v1, p0, Lcom/dropbox/android/activity/delegate/x;->d:Z

    .line 74
    iput-boolean v1, p0, Lcom/dropbox/android/activity/delegate/x;->e:Z

    .line 76
    iput-boolean v1, p0, Lcom/dropbox/android/activity/delegate/x;->i:Z

    .line 85
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ldbxyzptlk/l/k;)Lcom/dropbox/android/activity/delegate/C;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v0, p3, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 291
    const-string v0, "video/mp4"

    .line 292
    const-string v0, "http://dl.dropbox.com/mock_streaming_file.mp4"

    .line 293
    new-instance v0, Lcom/dropbox/android/activity/delegate/C;

    const-string v1, "http://dl.dropbox.com/mock_streaming_file.mp4"

    const-string v2, "video/mp4"

    invoke-static {p1, p2, v1, v2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "http://dl.dropbox.com/mock_streaming_file.mp4"

    const-string v3, "video/mp4"

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/activity/delegate/C;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_1e
    return-object v0

    .line 297
    :cond_1f
    iget-object v0, p3, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 298
    const-string v0, "http://dl.dropbox.com/mock_streaming_file"

    .line 299
    new-instance v0, Lcom/dropbox/android/activity/delegate/C;

    const-string v1, "http://dl.dropbox.com/mock_streaming_file"

    iget-object v2, p3, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "http://dl.dropbox.com/mock_streaming_file"

    iget-object v3, p3, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/activity/delegate/C;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 304
    :cond_3b
    new-instance v0, Lcom/dropbox/android/activity/delegate/C;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/android/activity/delegate/C;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-static {p0}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 571
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 572
    return-void
.end method

.method static a(Landroid/app/Activity;Landroid/content/Intent;Lcom/dropbox/android/activity/delegate/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    .line 566
    invoke-virtual {p2}, Lcom/dropbox/android/activity/delegate/a;->a()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 567
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 552
    const-string v0, "no.viewer"

    invoke-static {v0, p2}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/LocalEntry;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 553
    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/x;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 554
    sget-object v0, Lcom/dropbox/android/activity/delegate/g;->g:Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/g;)V

    .line 555
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {p6}, Lcom/dropbox/android/util/aa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    new-instance v1, Ldbxyzptlk/e/t;

    sget-object v2, Ldbxyzptlk/e/w;->b:Ldbxyzptlk/e/w;

    invoke-direct {v1, p2, p3, v0, v2}, Ldbxyzptlk/e/t;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Intent;Ldbxyzptlk/e/w;)V

    .line 203
    sget-object v0, Lcom/dropbox/android/activity/delegate/g;->c:Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/g;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ldbxyzptlk/e/t;->a(I)V

    .line 204
    new-instance v0, Lcom/dropbox/android/activity/delegate/y;

    invoke-direct {v0, p0, p2}, Lcom/dropbox/android/activity/delegate/y;-><init>(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Ldbxyzptlk/e/t;->a(Ldbxyzptlk/e/v;)V

    .line 210
    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Ldbxyzptlk/e/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    :goto_2b
    return-void

    .line 212
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p5, p6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const v1, 0x7f090080

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v2, Lcom/dropbox/android/widget/ag;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/dropbox/android/widget/ag;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/content/Intent;[Landroid/content/Intent;)V

    .line 218
    new-instance v0, Lcom/dropbox/android/activity/delegate/z;

    invoke-direct {v0, p0, p2, p3}, Lcom/dropbox/android/activity/delegate/z;-><init>(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;)V

    invoke-virtual {v2, v0}, Lcom/dropbox/android/widget/ag;->a(Lcom/dropbox/android/widget/aj;)V

    .line 231
    invoke-virtual {v2}, Lcom/dropbox/android/widget/ag;->a()V

    goto :goto_2b
.end method

.method static synthetic a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 253
    if-nez p1, :cond_4

    .line 273
    :goto_3
    return v1

    .line 256
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 266
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 268
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 269
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_26

    .line 273
    :cond_40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_49

    const/4 v0, 0x1

    :goto_47
    move v1, v0

    goto :goto_3

    :cond_49
    move v0, v1

    goto :goto_47
.end method

.method public static a(Ldbxyzptlk/l/k;)Z
    .registers 3
    .parameter

    .prologue
    .line 237
    iget-boolean v0, p0, Ldbxyzptlk/l/k;->s:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ldbxyzptlk/l/k;->q:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 242
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/ap;->b()Ljava/io/File;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_14

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 246
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static b(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_7

    move-object p0, v0

    .line 586
    :cond_7
    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    new-instance v0, Ldbxyzptlk/e/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Ldbxyzptlk/e/c;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Intent;)V

    .line 191
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/dropbox/android/activity/delegate/x;->f:Ljava/lang/ref/WeakReference;

    .line 192
    sget-object v1, Lcom/dropbox/android/activity/delegate/g;->d:Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/delegate/g;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/c;->a(I)V

    .line 193
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;I)Landroid/app/Dialog;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-static {p2}, Lcom/dropbox/android/activity/delegate/g;->a(I)Lcom/dropbox/android/activity/delegate/g;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/dropbox/android/util/h;->q()Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 171
    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/g;->a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/dropbox/android/activity/delegate/x;->h:I

    .line 93
    return-void
.end method

.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    const/4 v3, 0x0

    .line 178
    instance-of v0, p1, Lcom/dropbox/android/activity/D;

    if-eqz v0, :cond_9

    move-object v0, p1

    .line 179
    check-cast v0, Lcom/dropbox/android/activity/D;

    move-object v3, v0

    .line 182
    :cond_9
    invoke-static {p2}, Lcom/dropbox/android/activity/delegate/a;->a(I)Lcom/dropbox/android/activity/delegate/a;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_16

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    .line 184
    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/activity/delegate/a;->a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;)V

    .line 186
    :cond_16
    return-void
.end method

.method public final a(Landroid/app/Activity;ILandroid/app/Dialog;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-static {p2}, Lcom/dropbox/android/activity/delegate/g;->a(I)Lcom/dropbox/android/activity/delegate/g;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0, p1, p3}, Lcom/dropbox/android/activity/delegate/g;->a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 166
    return-void
.end method

.method public final a(Landroid/app/Activity;ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    const/4 v0, 0x0

    .line 374
    instance-of v1, p1, Lcom/dropbox/android/activity/D;

    if-eqz v1, :cond_a1

    move-object v0, p1

    .line 375
    check-cast v0, Lcom/dropbox/android/activity/D;

    move-object v1, v0

    .line 378
    :goto_b
    sparse-switch p2, :sswitch_data_a4

    .line 455
    sget-object v0, Lcom/dropbox/android/activity/delegate/x;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message received from DropboxProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_26
    :goto_26
    :sswitch_26
    return-void

    .line 380
    :sswitch_27
    iput-boolean v2, p0, Lcom/dropbox/android/activity/delegate/x;->i:Z

    .line 381
    const v0, 0x7f090031

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-interface {v1, v0}, Lcom/dropbox/android/activity/D;->c(Ljava/lang/String;)V

    goto :goto_26

    .line 386
    :sswitch_34
    iput-boolean v2, p0, Lcom/dropbox/android/activity/delegate/x;->i:Z

    .line 387
    const v0, 0x7f090035

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-interface {v1, v0}, Lcom/dropbox/android/activity/D;->b(Ljava/lang/String;)V

    .line 389
    invoke-interface {v1, v3}, Lcom/dropbox/android/activity/D;->a_(Z)V

    goto :goto_26

    .line 393
    :sswitch_44
    iput-boolean v2, p0, Lcom/dropbox/android/activity/delegate/x;->i:Z

    .line 394
    invoke-interface {v1, v3}, Lcom/dropbox/android/activity/D;->a_(Z)V

    goto :goto_26

    .line 398
    :sswitch_4a
    iput-boolean v3, p0, Lcom/dropbox/android/activity/delegate/x;->i:Z

    .line 399
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-interface {v1, v0}, Lcom/dropbox/android/activity/D;->c(Ljava/lang/String;)V

    goto :goto_26

    .line 419
    :sswitch_57
    const v0, 0x7f090038

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/dropbox/android/activity/D;->b(Ljava/lang/String;)V

    goto :goto_26

    .line 425
    :sswitch_62
    iget-boolean v0, p0, Lcom/dropbox/android/activity/delegate/x;->i:Z

    if-eqz v0, :cond_71

    .line 426
    const v0, 0x7f090033

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_6d
    invoke-interface {v1, v0}, Lcom/dropbox/android/activity/D;->b(Ljava/lang/String;)V

    goto :goto_26

    .line 428
    :cond_71
    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    .line 434
    :sswitch_79
    const v0, 0x7f090036

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-interface {v1, v0}, Lcom/dropbox/android/activity/D;->b(Ljava/lang/String;)V

    goto :goto_26

    .line 439
    :sswitch_84
    const v0, 0x7f090039

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-interface {v1, v0}, Lcom/dropbox/android/activity/D;->b(Ljava/lang/String;)V

    goto :goto_26

    .line 444
    :sswitch_8f
    if-eqz p1, :cond_26

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/DropboxWebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    const-string v1, "INFO"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-static {p1, v0}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_26

    :cond_a1
    move-object v1, v0

    goto/16 :goto_b

    .line 378
    :sswitch_data_a4
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_34
        0x2 -> :sswitch_44
        0x3 -> :sswitch_4a
        0x8 -> :sswitch_26
        0x9 -> :sswitch_26
        0x10 -> :sswitch_57
        0x11 -> :sswitch_62
        0x12 -> :sswitch_79
        0x13 -> :sswitch_84
        0x14 -> :sswitch_8f
        0xff -> :sswitch_26
    .end sparse-switch
.end method

.method public final a(Landroid/app/Activity;Landroid/view/Menu;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 113
    iget v0, p0, Lcom/dropbox/android/activity/delegate/x;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_32

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_be

    const v0, 0x7f020067

    .line 117
    :goto_10
    sget-object v1, Lcom/dropbox/android/activity/delegate/I;->d:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v1

    const v2, 0x7f09007c

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 120
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->d:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/f;->a(Landroid/view/MenuItem;I)Z

    .line 122
    :cond_32
    iget v0, p0, Lcom/dropbox/android/activity/delegate/x;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_66

    .line 123
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->f:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v0

    const v1, 0x7f09007d

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020070

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 125
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->e:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v0

    const v1, 0x7f09007e

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 129
    :cond_66
    iget v0, p0, Lcom/dropbox/android/activity/delegate/x;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_83

    .line 130
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->c:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v0

    const v1, 0x7f09007b

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020071

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 134
    :cond_83
    iget v0, p0, Lcom/dropbox/android/activity/delegate/x;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a0

    .line 135
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->b:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v0

    const v1, 0x7f09007a

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 139
    :cond_a0
    iget v0, p0, Lcom/dropbox/android/activity/delegate/x;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_bd

    .line 140
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->a:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v0

    const v1, 0x7f090079

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 144
    :cond_bd
    return-void

    .line 114
    :cond_be
    const v0, 0x108004f

    goto/16 :goto_10
.end method

.method public final a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 558
    invoke-virtual {p2}, Lcom/dropbox/android/activity/delegate/g;->a()I

    move-result v0

    .line 560
    invoke-virtual {p1, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 561
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x10000003

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 488
    iget-boolean v0, p3, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_11

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot export a directory!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v2, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/ap;->d()Landroid/net/Uri;

    move-result-object v2

    .line 496
    iget-object v0, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v3, p3, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 499
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 505
    invoke-static {p3}, Lcom/dropbox/android/activity/delegate/x;->a(Ldbxyzptlk/l/k;)Z

    move-result v3

    if-nez v3, :cond_48

    iget-object v3, p3, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/android/util/aa;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 506
    :cond_48
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 512
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/Intent;

    aput-object v1, v0, v6

    aput-object v3, v0, v7

    .line 518
    :goto_5c
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    const/4 v4, 0x0

    const-class v5, Lcom/dropbox/android/activity/LocalFileBrowserActivity;

    invoke-direct {v1, v3, v4, p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 520
    const-string v2, "EXPORT_DB_PROVIDER_URI"

    new-instance v3, Lcom/dropbox/android/util/Z;

    iget-object v4, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 521
    new-instance v2, Landroid/content/pm/LabeledIntent;

    const-string v3, "com.dropbox.android"

    const v4, 0x7f090087

    const v5, 0x7f0200ee

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 522
    new-array v1, v7, [Landroid/content/Intent;

    aput-object v2, v1, v6

    .line 524
    const v2, 0x7f090081

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 526
    new-instance v3, Lcom/dropbox/android/widget/ag;

    invoke-direct {v3, p1, v2, v0, v1}, Lcom/dropbox/android/widget/ag;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/content/Intent;[Landroid/content/Intent;)V

    .line 528
    new-instance v0, Lcom/dropbox/android/activity/delegate/B;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/dropbox/android/activity/delegate/B;-><init>(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/dropbox/android/widget/ag;->a(Lcom/dropbox/android/widget/aj;)V

    .line 548
    invoke-virtual {v3}, Lcom/dropbox/android/widget/ag;->a()V

    .line 549
    return-void

    .line 514
    :cond_a4
    new-array v0, v7, [Landroid/content/Intent;

    aput-object v1, v0, v6

    goto :goto_5c
.end method

.method public final a(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 315
    iget-object v0, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v3, p3, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v3, p3, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-static {p2, p4, v0, v3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p3, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_31
    move v0, v2

    .line 320
    :goto_32
    iget-object v3, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/dropbox/android/activity/delegate/x;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    if-nez v0, :cond_5b

    .line 322
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_5d

    invoke-direct {p0, p2, p4, p3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Ljava/lang/String;Ldbxyzptlk/l/k;)Lcom/dropbox/android/activity/delegate/C;

    move-result-object v1

    .line 324
    :goto_42
    if-eqz v2, :cond_5f

    iget-boolean v2, v1, Lcom/dropbox/android/activity/delegate/C;->a:Z

    if-eqz v2, :cond_5f

    .line 325
    iget-object v0, v1, Lcom/dropbox/android/activity/delegate/C;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v1, Lcom/dropbox/android/activity/delegate/C;->c:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 344
    :goto_58
    return-void

    :cond_59
    move v0, v1

    .line 318
    goto :goto_32

    :cond_5b
    move v2, v1

    .line 320
    goto :goto_3c

    .line 322
    :cond_5d
    const/4 v1, 0x0

    goto :goto_42

    .line 326
    :cond_5f
    invoke-static {p3}, Lcom/dropbox/android/activity/delegate/x;->a(Ldbxyzptlk/l/k;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 328
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {v1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    instance-of v0, p2, Lcom/dropbox/android/activity/bj;

    if-eqz v0, :cond_7a

    move-object v0, p2

    .line 330
    check-cast v0, Lcom/dropbox/android/activity/bj;

    invoke-interface {v0}, Lcom/dropbox/android/activity/bj;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 332
    :cond_7a
    const-string v0, "SELECTED_PATH"

    iget-object v2, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_58

    .line 334
    :cond_85
    if-eqz v0, :cond_8b

    .line 335
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V

    goto :goto_58

    .line 337
    :cond_8b
    iget-object v0, p3, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 338
    const-string v0, "text/plain"

    iput-object v0, p3, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    .line 339
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V

    goto :goto_58

    .line 341
    :cond_9b
    invoke-direct {p0, p2, p3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;)V

    goto :goto_58
.end method

.method public final a(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 461
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    new-array v2, v4, [Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/dropbox/android/activity/CopyLinkToClipboardActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v0, v2, v5

    .line 466
    iget-boolean v0, p2, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_3e

    const v0, 0x7f090083

    .line 467
    :goto_25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    new-instance v3, Lcom/dropbox/android/widget/ag;

    new-array v4, v4, [Landroid/content/Intent;

    aput-object v1, v4, v5

    invoke-direct {v3, p1, v0, v4, v2}, Lcom/dropbox/android/widget/ag;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/content/Intent;[Landroid/content/Intent;)V

    .line 471
    new-instance v0, Lcom/dropbox/android/activity/delegate/A;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/android/activity/delegate/A;-><init>(Lcom/dropbox/android/activity/delegate/x;Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    invoke-virtual {v3, v0}, Lcom/dropbox/android/widget/ag;->a(Lcom/dropbox/android/widget/aj;)V

    .line 484
    invoke-virtual {v3}, Lcom/dropbox/android/widget/ag;->a()V

    .line 485
    return-void

    .line 466
    :cond_3e
    const v0, 0x7f090082

    goto :goto_25
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    const-string v0, "mEntryToDelete"

    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/x;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    const-string v0, "Options"

    iget v1, p0, Lcom/dropbox/android/activity/delegate/x;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v0, "mEntryToExport"

    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/x;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    const-string v0, "mEntryToView"

    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/x;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    return-void
.end method

.method public final a(Landroid/app/Activity;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 347
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 349
    const/4 v0, 0x0

    .line 367
    :goto_c
    return v0

    .line 351
    :cond_d
    iget-boolean v0, p0, Lcom/dropbox/android/activity/delegate/x;->d:Z

    if-nez v0, :cond_36

    .line 354
    sget-object v0, Lcom/dropbox/android/activity/delegate/x;->g:Ljava/lang/String;

    const-string v2, "Didn\'t authenticate, redirecting to login"

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    instance-of v0, p1, Lcom/dropbox/android/activity/D;

    if-eqz v0, :cond_38

    move-object v0, p1

    .line 358
    check-cast v0, Lcom/dropbox/android/activity/D;

    .line 359
    const-string v3, "FULL_SCREEN"

    invoke-interface {v0}, Lcom/dropbox/android/activity/D;->g()Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    :cond_2f
    :goto_2f
    sget-object v0, Lcom/dropbox/android/activity/delegate/a;->a:Lcom/dropbox/android/activity/delegate/a;

    invoke-static {p1, v2, v0}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/dropbox/android/activity/delegate/a;)V

    .line 365
    iput-boolean v1, p0, Lcom/dropbox/android/activity/delegate/x;->d:Z

    :cond_36
    move v0, v1

    .line 367
    goto :goto_c

    .line 361
    :cond_38
    instance-of v0, p1, Lcom/dropbox/android/activity/auth/DropboxAuth;

    if-eqz v0, :cond_2f

    .line 362
    const-string v0, "FULL_SCREEN"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2f
.end method

.method public final a(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-static {}, Lcom/dropbox/android/util/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 149
    const v0, 0x102002c

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 150
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 154
    :cond_12
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/dropbox/android/activity/delegate/I;->a(I)Lcom/dropbox/android/activity/delegate/I;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_21

    .line 156
    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/I;->a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 103
    if-eqz p1, :cond_28

    .line 104
    const-string v0, "mEntryToDelete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/LocalEntry;

    iput-object v0, p0, Lcom/dropbox/android/activity/delegate/x;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 105
    const-string v0, "Options"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/activity/delegate/x;->h:I

    .line 106
    const-string v0, "mEntryToExport"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/LocalEntry;

    iput-object v0, p0, Lcom/dropbox/android/activity/delegate/x;->b:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 107
    const-string v0, "mEntryToView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/LocalEntry;

    iput-object v0, p0, Lcom/dropbox/android/activity/delegate/x;->c:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 109
    :cond_28
    return-void
.end method
