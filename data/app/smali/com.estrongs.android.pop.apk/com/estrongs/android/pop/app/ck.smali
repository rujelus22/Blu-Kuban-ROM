.class public Lcom/estrongs/android/pop/app/ck;
.super Landroid/app/ProgressDialog;


# instance fields
.field a:Z

.field private b:Lcom/estrongs/io/archive/h;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Lcom/estrongs/io/model/ArchiveEntryFile;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/h;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ck;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ck;->g:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ck;->c:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/ck;->b:Lcom/estrongs/io/archive/h;

    const v0, 0x7f090056

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ck;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ck;->setProgressStyle(I)V

    const v0, 0x7f090060

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/cl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cl;-><init>(Lcom/estrongs/android/pop/app/ck;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/ck;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ck;)Lcom/estrongs/io/archive/h;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ck;->b:Lcom/estrongs/io/archive/h;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ck;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/ck;->g:Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ck;)Lcom/estrongs/io/model/ArchiveEntryFile;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ck;->e:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/ck;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ck;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/ck;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ck;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/io/model/ArchiveEntryFile;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ck;->e:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ck;->f:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ck;->g:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ck;->d:Ljava/lang/String;

    return-void
.end method

.method public onStart()V
    .registers 2

    new-instance v0, Lcom/estrongs/android/pop/app/cm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cm;-><init>(Lcom/estrongs/android/pop/app/ck;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cm;->start()V

    return-void
.end method
