.class public Lcom/google/googlenav/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Lae/g;


# static fields
.field private static final w:Ljava/util/List;


# instance fields
.field private final a:Lcom/google/googlenav/android/AndroidGmmApplication;

.field private final b:Lcom/google/googlenav/ui/aL;

.field private c:LaJ/p;

.field private d:LaJ/u;

.field private e:LaY/ab;

.field private f:Lcom/google/googlenav/ui/bQ;

.field private g:Lcom/google/googlenav/ui/A;

.field private final h:Lcom/google/googlenav/ui/D;

.field private final i:Lat/h;

.field private final j:Lcom/google/googlenav/ui/android/z;

.field private final k:Lcom/google/googlenav/android/ac;

.field private final l:Lcom/google/googlenav/layer/r;

.field private final m:Lcom/google/googlenav/android/h;

.field private final n:LaR/i;

.field private final o:Lcom/google/googlenav/prefetch/android/o;

.field private final p:LaR/g;

.field private q:Landroid/view/Menu;

.field private r:Lcom/google/android/maps/MapsActivity;

.field private s:Lcom/google/android/maps/t;

.field private t:Z

.field private final u:Lav/c;

.field private final v:[Lav/c;

.field private x:Ljava/util/Locale;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/l;->w:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/AndroidGmmApplication;Lap/c;Lat/h;)V
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/googlenav/android/l;->q:Landroid/view/Menu;

    iput-object v4, p0, Lcom/google/googlenav/android/l;->s:Lcom/google/android/maps/t;

    new-instance v0, Lav/m;

    const v1, 0x13d655

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lav/m;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/android/l;->u:Lav/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lav/c;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->u:Lav/c;

    aput-object v1, v0, v3

    sget-object v1, Lav/b;->a:Lav/b;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lav/j;->a:Lav/j;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lav/h;->a:Lav/h;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lav/i;->a:Lav/i;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/googlenav/android/l;->v:[Lav/c;

    iput-boolean v3, p0, Lcom/google/googlenav/android/l;->y:Z

    sget-object v0, Lcom/google/googlenav/android/l;->w:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/googlenav/android/l;->x()V

    iput-object p1, p0, Lcom/google/googlenav/android/l;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/android/l;->v()V

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ai()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {p1}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    :cond_5d
    invoke-static {p0}, Lae/d;->a(Lae/g;)V

    new-instance v1, Lcom/google/googlenav/android/h;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/h;-><init>(Lcom/google/googlenav/android/l;)V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->m:Lcom/google/googlenav/android/h;

    iput-object p3, p0, Lcom/google/googlenav/android/l;->i:Lat/h;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->i:Lat/h;

    invoke-virtual {v1}, Lat/h;->f()V

    sget-object v1, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v2, Lcom/google/googlenav/android/m;

    invoke-direct {v2, p0, v5, v3}, Lcom/google/googlenav/android/m;-><init>(Lcom/google/googlenav/android/l;ZZ)V

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    const/16 v1, 0xb

    invoke-static {v1}, Laf/m;->a(I)Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/l;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/google/googlenav/ui/android/z;

    invoke-direct {v1, p1}, Lcom/google/googlenav/ui/android/z;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->j:Lcom/google/googlenav/ui/android/z;

    new-instance v1, Lcom/google/googlenav/android/ac;

    invoke-direct {v1}, Lcom/google/googlenav/android/ac;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->k:Lcom/google/googlenav/android/ac;

    invoke-virtual {p0}, Lcom/google/googlenav/android/l;->c()LaJ/p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/android/l;->a(LaJ/p;)V

    new-instance v1, Lcom/google/googlenav/layer/b;

    invoke-direct {v1, p0}, Lcom/google/googlenav/layer/b;-><init>(Lcom/google/googlenav/android/l;)V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->l:Lcom/google/googlenav/layer/r;

    invoke-static {}, Lcom/google/googlenav/M;->F()Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->d()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/android/l;->n:LaR/i;

    sget-object v1, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v2, Lcom/google/googlenav/android/q;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/q;-><init>(Lcom/google/googlenav/android/l;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    new-instance v1, Lcom/google/googlenav/prefetch/android/o;

    iget-object v2, p0, Lcom/google/googlenav/android/l;->n:LaR/i;

    invoke-direct {v1, v2}, Lcom/google/googlenav/prefetch/android/o;-><init>(LaR/i;)V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->o:Lcom/google/googlenav/prefetch/android/o;

    new-instance v1, Lcom/google/googlenav/prefetch/android/l;

    invoke-direct {v1, p1}, Lcom/google/googlenav/prefetch/android/l;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->p:LaR/g;

    sget-object v1, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v2, Lcom/google/googlenav/android/r;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/r;-><init>(Lcom/google/googlenav/android/l;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    :goto_cd
    invoke-direct {p0}, Lcom/google/googlenav/android/l;->w()V

    iget-object v1, p0, Lcom/google/googlenav/android/l;->k:Lcom/google/googlenav/android/ac;

    invoke-static {p1, v1}, Lcom/google/googlenav/login/a;->a(Landroid/content/Context;Lcom/google/googlenav/android/ac;)Lcom/google/googlenav/login/g;

    new-instance v1, LaP/a;

    new-instance v2, Lcom/google/googlenav/android/s;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/s;-><init>(Lcom/google/googlenav/android/l;)V

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-direct {v1, v2, v0}, LaP/a;-><init>(LaP/e;Laf/a;)V

    invoke-static {v1}, LaP/h;->a(LaP/h;)V

    new-instance v0, Lcom/google/googlenav/android/z;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/android/z;-><init>(Lcom/google/googlenav/android/l;Lap/c;)V

    iput-object v0, p0, Lcom/google/googlenav/android/l;->b:Lcom/google/googlenav/ui/aL;

    invoke-direct {p0}, Lcom/google/googlenav/android/l;->u()V

    new-instance v0, Lcom/google/googlenav/ui/D;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->b:Lcom/google/googlenav/ui/aL;

    iget-object v2, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    iget-object v3, p0, Lcom/google/googlenav/android/l;->d:LaJ/u;

    iget-object v4, p0, Lcom/google/googlenav/android/l;->f:Lcom/google/googlenav/ui/bQ;

    iget-object v5, p0, Lcom/google/googlenav/android/l;->g:Lcom/google/googlenav/ui/A;

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v6

    iget-object v7, p0, Lcom/google/googlenav/android/l;->e:LaY/ab;

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/D;-><init>(Lcom/google/googlenav/ui/aL;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/bQ;Lcom/google/googlenav/ui/A;LaE/h;LaY/ab;)V

    iput-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    iget-object v0, p0, Lcom/google/googlenav/android/l;->v:[Lav/c;

    invoke-static {p3, v0}, Lav/d;->a(Lat/h;[Lav/c;)V

    new-instance v0, Lcom/google/googlenav/android/A;

    invoke-direct {v0}, Lcom/google/googlenav/android/A;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->a()V

    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/ui/D;)V

    return-void

    :cond_11a
    new-instance v1, LaR/d;

    invoke-direct {v1}, LaR/d;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->n:LaR/i;

    new-instance v1, LaR/c;

    invoke-direct {v1}, LaR/c;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->p:LaR/g;

    iput-object v4, p0, Lcom/google/googlenav/android/l;->o:Lcom/google/googlenav/prefetch/android/o;

    goto :goto_cd
.end method

.method static synthetic a(Lcom/google/googlenav/android/l;)LaR/i;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->n:LaR/i;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/android/b;)Landroid/app/ProgressDialog;
    .registers 5

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/android/n;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/android/n;-><init>(Lcom/google/googlenav/android/l;Lcom/google/googlenav/ui/android/b;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/android/l;->b(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, LaG/a;

    if-nez v3, :cond_42

    move v0, v1

    :goto_f
    invoke-direct {v4, v0}, LaG/a;-><init>(Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_4d

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->w()Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, LaH/j;

    invoke-direct {v0, p1}, LaH/j;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    new-instance v0, LaE/h;

    invoke-direct {v0, v1, v2}, LaE/h;-><init>(ZLjava/util/List;)V

    invoke-static {v0}, LaE/h;->a(LaE/h;)V

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    invoke-static {v0}, LaF/b;->a(LaF/c;)V

    new-instance v0, LaI/a;

    invoke-direct {v0}, LaI/a;-><init>()V

    invoke-static {v0}, LaI/c;->a(LaI/d;)V

    return-void

    :cond_42
    const/4 v0, 0x0

    goto :goto_f

    :cond_44
    new-instance v0, LaE/a;

    invoke-direct {v0, p1}, LaE/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4d
    const-string v0, "nlp_state"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_29
.end method

.method private a(Landroid/os/Handler;Lcom/google/googlenav/android/C;Landroid/app/ProgressDialog;ZLat/p;)V
    .registers 12

    new-instance v0, Lcom/google/googlenav/android/y;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/android/y;-><init>(Lcom/google/googlenav/android/l;Landroid/app/ProgressDialog;ZLcom/google/googlenav/android/C;Lat/p;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/android/AndroidGmmApplication;)V
    .registers 8

    const-class v1, Lcom/google/googlenav/android/l;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ai()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {}, LaB/d;->c()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/M;->a(Z)V

    :cond_17
    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cS;->e:[Lcom/google/android/maps/driveabout/vector/cU;

    const-string v3, "GMM"

    const v4, 0x7f060003

    new-instance v5, Lcom/google/googlenav/android/M;

    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/googlenav/android/M;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/cS;->a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/cU;Ljava/lang/String;ILaf/n;)V

    :cond_2e
    invoke-static {p0}, Lcom/google/googlenav/android/J;->a(Landroid/app/Application;)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_33

    monitor-exit v1

    return-void

    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/googlenav/android/l;Landroid/os/Handler;Lcom/google/googlenav/android/C;Landroid/app/ProgressDialog;ZLat/p;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/google/googlenav/android/l;->a(Landroid/os/Handler;Lcom/google/googlenav/android/C;Landroid/app/ProgressDialog;ZLat/p;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/l;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/D;)V
    .registers 1

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1}, Lat/h;->x()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1d
    const v1, 0x7f0b012e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/googlenav/android/a;->g()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {}, Laf/d;->a()Z

    move-result v1

    if-eqz v1, :cond_93

    :cond_2f
    invoke-static {}, Lcom/google/googlenav/android/J;->f()Z

    move-result v1

    if-nez v1, :cond_74

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unavailable. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Check that the server is up and that you have a network connection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_59
    const v1, 0x7f0b0109

    new-instance v2, Lcom/google/googlenav/android/o;

    invoke-direct {v2, p0}, Lcom/google/googlenav/android/o;-><init>(Lcom/google/googlenav/android/l;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/google/googlenav/android/p;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/p;-><init>(Lcom/google/googlenav/android/l;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_8

    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong remote strings version, or no network connection, or the GMM Server is down.  GMM Server must be hosting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_59

    :cond_93
    const v1, 0x7f0b012d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_59
.end method

.method private a(Ljava/lang/String;Lcom/google/googlenav/android/C;Z)V
    .registers 12

    new-instance v3, Lcom/google/googlenav/ui/android/b;

    invoke-direct {v3, p1}, Lcom/google/googlenav/ui/android/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p3, :cond_38

    invoke-direct {p0, v3}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/ui/android/b;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlenav/ui/android/u;->b(Landroid/app/Dialog;)V

    :goto_14
    iget-object v0, p0, Lcom/google/googlenav/android/l;->i:Lat/h;

    invoke-virtual {v0}, Lat/h;->e()Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/android/l;->i:Lat/h;

    invoke-virtual {v0}, Lat/h;->g()V

    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/android/l;->i:Lat/h;

    invoke-virtual {v0, v3}, Lat/h;->a(Lat/p;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/google/googlenav/android/x;

    const-string v2, "RemoteStrings"

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/android/x;-><init>(Lcom/google/googlenav/android/l;Ljava/lang/String;Lcom/google/googlenav/ui/android/b;Landroid/os/Handler;Lcom/google/googlenav/android/C;Landroid/app/ProgressDialog;Z)V

    invoke-virtual {v0}, Lcom/google/googlenav/android/x;->start()V

    :goto_37
    return-void

    :cond_38
    const/4 v6, 0x0

    goto :goto_14

    :cond_3a
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/android/b;->a(Z)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laf/b;->a([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/android/l;->y()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/l;->t:Z

    goto :goto_37
.end method

.method static synthetic a(Lcom/google/googlenav/android/l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/android/l;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/android/l;)LaR/g;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->p:LaR/g;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lae/d;->a()Lae/a;

    move-result-object v0

    invoke-virtual {v0}, Lae/a;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lf/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic c(Lcom/google/googlenav/android/l;)Lcom/google/android/maps/MapsActivity;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/android/AndroidGmmApplication;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/android/l;)Lat/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->i:Lat/h;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/android/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/android/l;->y()V

    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/android/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->m:Lcom/google/googlenav/android/h;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/android/z;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->j:Lcom/google/googlenav/ui/android/z;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->k:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/layer/r;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->l:Lcom/google/googlenav/layer/r;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/android/l;)LaJ/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    return-object v0
.end method

.method static synthetic l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method static synthetic m(Lcom/google/googlenav/android/l;)LaJ/u;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->d:LaJ/u;

    return-object v0
.end method

.method private t()[LaB/c;
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, LaB/g;->a:LaB/g;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object v2, LaB/e;->a:LaB/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->n()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v2, LaC/c;->a:LaC/c;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    sget-object v2, LaB/b;->a:LaB/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, LaB/a;->a:LaB/a;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    invoke-static {}, Lcom/google/googlenav/ui/bP;->b()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_4b
    sget-object v0, LaB/j;->a:LaB/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-nez v0, :cond_63

    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [LaB/c;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaB/c;

    return-object v0

    :cond_63
    sget-object v0, LaC/b;->a:LaC/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, LaB/i;->a:LaB/i;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/M;->F()Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, LaC/c;->a:LaC/c;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    sget-object v0, LaC/c;->a:LaC/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56
.end method

.method private u()V
    .registers 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, LaZ/i;

    invoke-direct {v0}, LaZ/i;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/l;->e:LaY/ab;

    iget-object v0, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    check-cast v0, LaK/a;

    iput-object v1, p0, Lcom/google/googlenav/android/l;->f:Lcom/google/googlenav/ui/bQ;

    iput-object v1, p0, Lcom/google/googlenav/android/l;->g:Lcom/google/googlenav/ui/A;

    new-instance v1, LaK/e;

    invoke-virtual {v0}, LaK/a;->u()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    invoke-virtual {v3}, LaJ/p;->b()LaJ/H;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/android/l;->k:Lcom/google/googlenav/android/ac;

    invoke-direct {v1, v2, v0, v3, v4}, LaK/e;-><init>(Lcom/google/android/maps/driveabout/vector/cV;LaK/a;LaJ/H;Lcom/google/googlenav/android/ac;)V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->d:LaJ/u;

    :goto_2d
    return-void

    :cond_2e
    new-instance v0, LaY/ab;

    invoke-direct {v0}, LaY/ab;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/l;->e:LaY/ab;

    iget-object v0, p0, Lcom/google/googlenav/android/l;->b:Lcom/google/googlenav/ui/aL;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aL;->a(LaJ/p;)Lcom/google/googlenav/ui/bQ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/l;->f:Lcom/google/googlenav/ui/bQ;

    iget-object v0, p0, Lcom/google/googlenav/android/l;->b:Lcom/google/googlenav/ui/aL;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aL;->b(LaJ/p;)Lcom/google/googlenav/ui/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/l;->g:Lcom/google/googlenav/ui/A;

    const/4 v0, 0x1

    new-instance v1, LaJ/h;

    iget-object v2, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    iget-object v3, p0, Lcom/google/googlenav/android/l;->f:Lcom/google/googlenav/ui/bQ;

    iget-object v4, p0, Lcom/google/googlenav/android/l;->g:Lcom/google/googlenav/ui/A;

    invoke-direct {v1, v2, v3, v4, v0}, LaJ/h;-><init>(LaJ/p;Lcom/google/googlenav/ui/bQ;Lcom/google/googlenav/ui/A;Z)V

    iput-object v1, p0, Lcom/google/googlenav/android/l;->d:LaJ/u;

    goto :goto_2d
.end method

.method private v()V
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->M()Z

    move-result v1

    if-nez v1, :cond_30

    const-string v0, "UserAgentPref"

    invoke-static {v0}, Laf/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_12
    if-eqz v1, :cond_22

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->m()Lak/i;

    move-result-object v0

    check-cast v0, Lal/g;

    invoke-virtual {v0, v1}, Lal/g;->a(Ljava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/android/u;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/googlenav/android/u;-><init>(Lcom/google/googlenav/android/l;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    goto :goto_21

    :cond_30
    move-object v1, v0

    goto :goto_12
.end method

.method private w()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->p()Lah/b;

    move-result-object v0

    check-cast v0, Lah/k;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lah/k;->a(Lah/l;)V

    new-instance v0, LaY/X;

    invoke-direct {v0}, LaY/X;-><init>()V

    invoke-static {v0}, LaY/X;->a(LaY/X;)V

    return-void
.end method

.method private x()V
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/android/l;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    goto :goto_8

    :cond_1e
    const/4 v0, 0x1

    if-le v1, v0, :cond_44

    const-string v0, "AndroidState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******************** WARNING **** =====>  Memory leak detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AndroidState instances !!! <==== **** WARNING ********************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    return-void

    :cond_45
    move v0, v1

    goto :goto_1c
.end method

.method private y()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ay()V

    iget-object v0, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->e()V

    :cond_e
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Lcom/google/googlenav/android/t;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/android/l;->k:Lcom/google/googlenav/android/ac;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/googlenav/android/t;-><init>(Lcom/google/googlenav/android/l;Lap/c;Lcom/google/googlenav/android/ac;Z)V

    invoke-virtual {v1}, Lcom/google/googlenav/android/t;->g()V

    return-void
.end method

.method public a(LaJ/p;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->j:Lcom/google/googlenav/ui/android/z;

    invoke-virtual {v0, v1}, LaJ/p;->b(Laq/e;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    invoke-virtual {v1, v0}, LaJ/p;->a(Z)V

    :cond_11
    iput-object p1, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    iget-object v0, p0, Lcom/google/googlenav/android/l;->j:Lcom/google/googlenav/ui/android/z;

    invoke-virtual {p1, v0}, LaJ/p;->a(Laq/e;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/android/l;->x:Ljava/util/Locale;

    if-nez v0, :cond_c

    const-string v0, "onConfigurationChanged"

    const-string v1, "currentLocale should not be null"

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/android/l;->x:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laf/b;->a([Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/l;->y:Z

    goto :goto_b
.end method

.method public a(Lcom/google/android/maps/MapsActivity;Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    if-eq v0, p1, :cond_36

    iput-object p1, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/content/Context;)V

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    check-cast v0, LaP/a;

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LaP/a;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    if-nez p2, :cond_36

    invoke-static {}, Lcom/google/googlenav/ui/view/android/aA;->a()Lcom/google/googlenav/ui/view/android/aA;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/google/android/maps/MapsActivity;->a()V

    :cond_36
    return-void
.end method

.method public a(Lcom/google/android/maps/t;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/l;->s:Lcom/google/android/maps/t;

    return-void
.end method

.method public a(Ljava/util/Locale;Lcom/google/googlenav/android/C;ZZ)V
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_7
    if-eqz p4, :cond_b

    if-nez p3, :cond_b

    :cond_b
    iput-object p1, p0, Lcom/google/googlenav/android/l;->x:Ljava/util/Locale;

    iput-boolean v1, p0, Lcom/google/googlenav/android/l;->y:Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Laf/b;->a(Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/google/googlenav/android/l;->q()Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz p3, :cond_30

    iput-boolean v1, p0, Lcom/google/googlenav/android/l;->t:Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laf/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p4}, Lcom/google/googlenav/android/l;->a(Ljava/lang/String;Lcom/google/googlenav/android/C;Z)V

    :goto_2f
    return-void

    :cond_30
    invoke-direct {p0}, Lcom/google/googlenav/android/l;->y()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/l;->t:Z

    goto :goto_2f
.end method

.method public b()Lcom/google/googlenav/prefetch/android/o;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->o:Lcom/google/googlenav/prefetch/android/o;

    return-object v0
.end method

.method public c()LaJ/p;
    .registers 16

    const/16 v7, 0x190

    const/high16 v2, 0x10

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, LaK/a;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x8

    invoke-virtual {v4}, Lcom/google/googlenav/M;->g()LaJ/B;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/googlenav/M;->h()LaJ/Y;

    move-result-object v6

    move v4, v2

    invoke-direct/range {v0 .. v7}, LaK/a;-><init>(Landroid/content/Context;IIILaJ/B;LaJ/Y;I)V

    :goto_24
    return-object v0

    :cond_25
    invoke-static {}, Lcom/google/googlenav/ui/bw;->W()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x2

    :goto_2c
    mul-int v9, v2, v0

    new-instance v8, LaJ/p;

    const/4 v10, -0x1

    invoke-virtual {v4}, Lcom/google/googlenav/M;->g()LaJ/B;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/googlenav/M;->h()LaJ/Y;

    move-result-object v13

    move v11, v2

    move v14, v7

    invoke-direct/range {v8 .. v14}, LaJ/p;-><init>(IIILaJ/B;LaJ/Y;I)V

    move-object v0, v8

    goto :goto_24

    :cond_40
    const/4 v0, 0x1

    goto :goto_2c
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aF()V

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, LaP/h;->b(LaP/i;)V

    invoke-direct {p0}, Lcom/google/googlenav/android/l;->u()V

    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->d:LaJ/u;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(LaJ/u;)V

    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->f:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/bQ;)V

    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->e:LaY/ab;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(LaY/ab;)V

    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, Lcom/google/googlenav/android/l;->g:Lcom/google/googlenav/ui/A;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/A;)V

    return-void
.end method

.method public e()V
    .registers 6

    invoke-static {}, LaB/d;->a()LaB/d;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/google/googlenav/android/l;->t()[LaB/c;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_24

    aget-object v0, v2, v1

    instance-of v4, v0, LaC/a;

    if-eqz v4, :cond_20

    check-cast v0, LaC/a;

    iget-object v4, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v4}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4}, LaC/a;->a(Landroid/content/Context;)V

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    invoke-static {v0, v2}, LaB/d;->a(Lcom/google/googlenav/ui/D;[LaB/c;)V

    :cond_29
    return-void
.end method

.method public f()Lcom/google/googlenav/android/AndroidGmmApplication;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    return-object v0
.end method

.method public g()Lcom/google/googlenav/android/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->m:Lcom/google/googlenav/android/h;

    return-object v0
.end method

.method public h()Lcom/google/android/maps/MapsActivity;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->r:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method public i()LaJ/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->c:LaJ/p;

    return-object v0
.end method

.method public j()LaJ/u;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->d:LaJ/u;

    return-object v0
.end method

.method public k()Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->h:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method public l()Lat/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->i:Lat/h;

    return-object v0
.end method

.method public m()Lcom/google/android/maps/t;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->s:Lcom/google/android/maps/t;

    return-object v0
.end method

.method public n()Lcom/google/googlenav/ui/android/z;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->j:Lcom/google/googlenav/ui/android/z;

    return-object v0
.end method

.method public o()Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/l;->k:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method public p()V
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/googlenav/android/v;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/android/v;-><init>(Lcom/google/googlenav/android/l;Landroid/os/Handler;)V

    invoke-static {}, Lz/n;->e()V

    iget-object v1, p0, Lcom/google/googlenav/android/l;->a:Lcom/google/googlenav/android/AndroidGmmApplication;

    iget-object v3, p0, Lcom/google/googlenav/android/l;->i:Lat/h;

    invoke-static {v1, v3, v2, v0}, Lz/n;->a(Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public q()Z
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->e()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public r()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/android/l;->t:Z

    return v0
.end method

.method public s()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/android/l;->y:Z

    return v0
.end method
