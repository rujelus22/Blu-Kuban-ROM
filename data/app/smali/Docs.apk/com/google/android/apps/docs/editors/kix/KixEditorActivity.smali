.class public Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;
.super Lcom/google/android/apps/docs/RoboFragmentActivity;
.source "KixEditorActivity.java"

# interfaces
.implements LOT;
.implements LuE;
.implements Lxz;


# static fields
.field private static a:I


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LFu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LGh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LIG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LIH;

.field public a:LLz;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LQN;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LQm;

.field public a:LQo;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/content/Intent;

.field private a:Landroid/net/Uri;

.field private a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

.field public a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

.field public a:Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

.field public a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public a:Lkm;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lmw;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LuJ;

.field private a:Luy;

.field public a:LwG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LxQ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LyE;

.field private a:Lyf;

.field private a:Lyj;

.field private a:Lyn;

.field public a:LzH;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LzW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field public b:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;-><init>()V

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Landroid/os/Handler;

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Ljava/lang/Object;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->m:Z

    .line 192
    new-instance v0, LxA;

    invoke-direct {v0, p0}, LxA;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LIH;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 758
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mobilebasic"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 854
    sget v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:I

    .line 855
    sget v1, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:I

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddCollaboratorTextDialogFragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)LyE;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LyE;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;LyE;)LyE;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LyE;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Lyj;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    return-object v0
.end method

.method private a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 520
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lus;->close_application:I

    new-instance v2, LxM;

    invoke-direct {v2, p0}, LxM;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 534
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;Ljava/lang/Throwable;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 6
    .parameter

    .prologue
    .line 686
    invoke-static {p1}, LZA;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 687
    const-string v1, "CAKEMIX_EDITOR_CRASH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncaughtException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()LxQ;

    move-result-object v1

    invoke-virtual {v1}, LxQ;->delete()V

    .line 689
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Landroid/content/Intent;

    const-string v2, "stack_trace"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 691
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->finish()V

    .line 692
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 693
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 694
    return-void
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->c(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->m:Z

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->n:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->j()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->n:Z

    return v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->l:Z

    return p1
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->p()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->l:Z

    return v0
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->m()V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->j:Z

    return v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 325
    sget v0, Lup;->logo:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 326
    new-instance v1, LxF;

    invoke-direct {v1, p0}, LxF;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Landroid/content/Intent;

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 346
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Landroid/content/Intent;

    const-string v2, "kix_editor_intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 347
    return-void
.end method

.method private h()V
    .registers 5

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->n:Z

    if-nez v0, :cond_f

    .line 371
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LIG;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c:Ljava/lang/String;

    const-string v2, "writely"

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LIH;

    invoke-interface {v0, v1, v2, v3}, LIG;->a(Ljava/lang/String;Ljava/lang/String;LIH;)V

    .line 373
    :cond_f
    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFu;

    invoke-virtual {v1}, LFu;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setIsTestMode(Z)V

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxz;)V

    .line 380
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->k:Z

    if-eqz v0, :cond_1b

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LuJ;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxx;)V

    .line 385
    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->i:Z

    if-eqz v0, :cond_12f

    .line 386
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    const-string v2, "MenuHandler"

    invoke-virtual {v0, v1, v2}, LH;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 393
    :goto_32
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)V

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)V

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyf;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(Lyf;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyf;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(Lyf;)V

    .line 399
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->k:Z

    if-eqz v0, :cond_67

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LuJ;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(LuJ;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LuJ;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a(LuJ;)V

    .line 409
    :cond_67
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setCustomCursorPopup(LCe;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setCustomSelectionMode(LCD;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzW;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(LzN;)V

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    invoke-virtual {v0, v1}, LxQ;->addUpdateListener(Lyc;)V

    .line 415
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    invoke-virtual {v0, v1}, LxQ;->addInitializationListener(LxW;)V

    .line 416
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    invoke-virtual {v0, v1}, LxQ;->addNetworkStatusListener(Lyb;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    invoke-virtual {v0, v1}, LxQ;->addCollaboratorListener(LxU;)V

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-virtual {v0, v1}, LxQ;->addInitializationListener(LxW;)V

    .line 420
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0, v1}, LxQ;->addInitializationListener(LxW;)V

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyf;

    invoke-virtual {v0, v1}, LxQ;->addInitializationListener(LxW;)V

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyf;

    invoke-virtual {v0, v1}, LxQ;->addUpdateListener(Lyc;)V

    .line 424
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    new-instance v1, LxG;

    invoke-direct {v1, p0}, LxG;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-virtual {v0, v1}, LxQ;->addInitializationListener(LxW;)V

    .line 444
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->k:Z

    if-eqz v0, :cond_c9

    .line 445
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LuJ;

    invoke-virtual {v0, v1}, LxQ;->addInitializationListener(LxW;)V

    .line 448
    :cond_c9
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(LyC;)V

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(Lyj;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    new-instance v1, LxH;

    invoke-direct {v1, p0}, LxH;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-virtual {v0, v1}, LxQ;->setErrorHandler(LxX;)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    sget v1, Lup;->kix_editor_view:I

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/collab/CollaboratorFragment;

    const-string v3, "collaboratorFragment"

    invoke-virtual {v0, v1, v2, v3}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    sget v1, Lup;->kix_editor_view:I

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    const-string v3, "editorStatusFragment"

    invoke-virtual {v0, v1, v2, v3}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    sget v1, Lup;->kix_editor_view:I

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    const-string v3, "selectionPopup"

    invoke-virtual {v0, v1, v2, v3}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    sget v1, Lup;->kix_editor_view:I

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    const-string v3, "pastePopup"

    invoke-virtual {v0, v1, v2, v3}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    sget v1, Lup;->kix_editor_view:I

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    const-string v3, "savedStateFragment"

    invoke-virtual {v0, v1, v2, v3}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 496
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    new-instance v1, LxL;

    invoke-direct {v1, p0}, LxL;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-virtual {v0, v1}, LxQ;->addNetworkStatusListener(Lyb;)V

    .line 514
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->q()V

    .line 516
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->l()V

    .line 517
    return-void

    .line 389
    :cond_12f
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    sget v1, Lup;->title_bar_container:I

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    const-string v3, "MenuHandler"

    invoke-virtual {v0, v1, v2, v3}, LH;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    goto/16 :goto_32
.end method

.method private j()V
    .registers 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 600
    new-instance v0, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Lx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 604
    :goto_15
    return-void

    .line 602
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->finish()V

    goto :goto_15
.end method

.method private k()V
    .registers 4

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LyE;

    if-eqz v0, :cond_c

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LyE;

    invoke-virtual {v0}, LyE;->a()V

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LyE;

    .line 612
    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "This will modify (more like cripple) the content of your document.\nAre you sure?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yep"

    new-instance v2, LxO;

    invoke-direct {v2, p0}, LxO;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Nope"

    new-instance v2, LxN;

    invoke-direct {v2, p0}, LxN;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 630
    return-void
.end method

.method private l()V
    .registers 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Landroid/os/Handler;

    new-instance v1, LxC;

    invoke-direct {v1, p0}, LxC;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 755
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQm;

    new-instance v1, LxD;

    invoke-direct {v1, p0}, LxD;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-interface {v0, v1}, LQm;->a(LQn;)V

    .line 792
    return-void
.end method

.method private n()V
    .registers 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQm;

    new-instance v1, LxE;

    invoke-direct {v1, p0}, LxE;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-interface {v0, v1}, LQm;->b(LQn;)V

    .line 839
    return-void
.end method

.method private o()V
    .registers 4

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQm;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQm;

    invoke-interface {v0}, LQm;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    .line 851
    :cond_c
    :goto_c
    return-void

    .line 849
    :cond_d
    new-instance v0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;-><init>()V

    .line 850
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Lx;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lx;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private p()V
    .registers 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c()V

    .line 873
    return-void
.end method

.method private q()V
    .registers 6

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 891
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lun;->collaborator_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 892
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lun;->kix_edit_bottom_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 893
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lun;->kix_edit_left_padding_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 894
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lun;->kix_edit_right_padding_tablet:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 895
    sget v4, Lup;->editor:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 897
    :cond_37
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 861
    const-class v0, LQm;

    if-ne p1, v0, :cond_f

    .line 862
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, LafQ;->a(Z)V

    .line 864
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQm;

    .line 867
    :goto_c
    return-object v0

    .line 862
    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    .line 867
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/RoboFragmentActivity;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public a()Luy;
    .registers 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 901
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Luy;

    return-object v0
.end method

.method public a()LxQ;
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 907
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->d()V

    .line 908
    return-void
.end method

.method public a_(Z)V
    .registers 3
    .parameter

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 919
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Luy;

    if-eqz v0, :cond_10

    .line 920
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Luy;

    invoke-virtual {v0}, Luy;->b()V

    .line 922
    :cond_10
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 913
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->e()V

    .line 914
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 540
    sget v0, Lus;->open_document_failed:I

    sget v1, Lus;->open_document_failed_expanded:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(II)V

    .line 541
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 547
    sget v0, Lus;->document_deleted:I

    sget v1, Lus;->document_deleted_expanded:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(II)V

    .line 548
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->n()V

    .line 797
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 878
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 879
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Luy;

    if-eqz v0, :cond_11

    .line 880
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Luy;

    invoke-virtual {v0, p1}, Luy;->a(Landroid/content/res/Configuration;)V

    .line 882
    :cond_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    const-string v0, "KixEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 226
    invoke-static {}, Lkg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->i:Z

    .line 228
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 229
    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFu;

    invoke-virtual {v3, v0}, LFu;->a(Landroid/content/Intent;)V

    .line 231
    new-instance v3, LFj;

    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFu;

    invoke-virtual {v4}, LFu;->a()Z

    move-result v4

    invoke-direct {v3, v0, v4}, LFj;-><init>(Landroid/content/Intent;Z)V

    .line 232
    invoke-virtual {v3, p0}, LFj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c:Ljava/lang/String;

    .line 233
    invoke-virtual {v3}, LFj;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/String;

    .line 234
    const-string v4, "document/d"

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, LFj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Ljava/lang/String;

    .line 235
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Landroid/net/Uri;

    .line 236
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/String;

    if-nez v4, :cond_72

    .line 237
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFX;

    const-string v5, "kixDebugDocumentId"

    const-string v6, "1ZU-wer8Dh1bByaHDzjlfHr0dv1kGhEaF61so47qii88"

    invoke-interface {v4, v5, v6}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/String;

    .line 241
    :cond_72
    invoke-virtual {v3}, LFj;->a()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->j:Z

    .line 243
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFu;

    invoke-virtual {v4}, LFu;->a()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 245
    new-instance v4, LGk;

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LGh;

    iget-object v6, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c:Ljava/lang/String;

    sget-object v7, LdX;->d:LdX;

    iget-object v7, v7, LdX;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, LGk;-><init>(LGh;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 249
    :try_start_90
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_93} :catch_1e3

    .line 255
    :cond_93
    :goto_93
    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    const-string v5, "/kixEditor"

    invoke-virtual {v4, v5, v0}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Ljava/lang/Object;

    invoke-virtual {v0, v4}, LdE;->a(Ljava/lang/Object;)V

    .line 258
    new-instance v0, Lyf;

    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LLz;

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/String;

    invoke-virtual {v3}, LFj;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v4, v5, v6}, Lyf;-><init>(Landroid/content/Context;LLz;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyf;

    .line 260
    if-eqz p1, :cond_c2

    const-string v0, "editRecorded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 261
    const-string v0, "editRecorded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->l:Z

    .line 264
    :cond_c2
    invoke-static {}, LZG;->a()LdX;

    move-result-object v0

    .line 265
    sget-object v4, LdX;->d:LdX;

    invoke-virtual {v0, v4}, LdX;->a(LdX;)Z

    move-result v0

    if-nez v0, :cond_d8

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFX;

    const-string v4, "kixShowDebugMenu"

    invoke-interface {v0, v4, v1}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1ed

    :cond_d8
    move v0, v2

    :goto_d9
    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->o:Z

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFX;

    const-string v4, "kixShowMobixButton"

    invoke-interface {v0, v4, v2}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->p:Z

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFu;

    invoke-virtual {v0}, LFu;->b()Z

    move-result v0

    if-nez v0, :cond_101

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LeZ;

    sget-object v4, LeV;->s:LeV;

    invoke-interface {v0, v4}, LeZ;->a(LeV;)Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFX;

    const-string v4, "enableKixEditorComments"

    invoke-interface {v0, v4, v1}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_102

    :cond_101
    move v1, v2

    :cond_102
    iput-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->k:Z

    .line 274
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Lx;

    move-result-object v0

    const-string v1, "MenuHandler"

    invoke-virtual {v0, v1}, Lx;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    if-nez v0, :cond_121

    .line 277
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->i:Z

    if-eqz v0, :cond_1f0

    new-instance v0, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;

    invoke-direct {v0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;-><init>()V

    :goto_11f
    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    .line 280
    :cond_121
    sget v0, Luq;->kix_editor:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->setContentView(I)V

    .line 282
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->i:Z

    if-nez v0, :cond_12d

    .line 283
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->f()V

    .line 286
    :cond_12d
    invoke-virtual {v3}, LFj;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_14d

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->i:Z

    if-nez v0, :cond_14d

    .line 290
    sget v0, Lup;->title:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_14d
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzH;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    invoke-virtual {v0, v1}, LzH;->a(Lxr;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzH;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzW;

    invoke-virtual {v0, v1}, LzH;->a(LzW;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFu;

    invoke-virtual {v0}, LFu;->a()Z

    move-result v0

    if-nez v0, :cond_174

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQo;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, LQo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LQm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQm;

    .line 299
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->m()V

    .line 302
    :cond_174
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->g()V

    .line 304
    sget v0, Lup;->editor:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LeZ;

    sget-object v2, LeV;->r:LeV;

    invoke-interface {v1, v2}, LeZ;->a(LeV;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setProfilingEnabled(Z)V

    .line 307
    new-instance v0, Lcom/google/android/apps/docs/editors/kix/CursorTracker;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-direct {v0, v1}, Lcom/google/android/apps/docs/editors/kix/CursorTracker;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

    .line 309
    new-instance v8, LyK;

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d:Ljava/lang/String;

    invoke-direct {v8, p0, v0, v1, v2}, LyK;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Lyj;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFX;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzH;

    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-object v5, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/CursorTracker;

    iget-boolean v6, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->j:Z

    iget-boolean v7, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->k:Z

    invoke-direct/range {v0 .. v8}, Lyj;-><init>(Landroid/content/Context;LFX;LzH;Lcom/google/android/apps/docs/editors/kix/KixEditText;Lcom/google/android/apps/docs/editors/kix/CursorTracker;ZZLyJ;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    .line 315
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->k:Z

    if-eqz v0, :cond_1e2

    .line 316
    new-instance v0, LuJ;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    invoke-direct {v0, v1, v2}, LuJ;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;Lyj;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LuJ;

    .line 317
    new-instance v0, Luy;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Lx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LuJ;

    invoke-direct {v0, p0, p0, v1, v2}, Luy;-><init>(LuE;Landroid/app/Activity;Lx;LuF;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Luy;

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Luy;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzW;

    iget-object v4, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lmw;

    invoke-virtual {v0, v1, v2, v3, v4}, Luy;->a(Ljava/lang/String;Ljava/lang/String;LzW;Lmw;)V

    .line 322
    :cond_1e2
    return-void

    .line 250
    :catch_1e3
    move-exception v4

    .line 251
    const-string v5, "KixEditorActivity"

    const-string v6, "Waiting for client flag sync interrupted"

    invoke-static {v5, v6, v4}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_93

    :cond_1ed
    move v0, v1

    .line 265
    goto/16 :goto_d9

    .line 277
    :cond_1f0
    new-instance v0, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-direct {v0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;-><init>()V

    goto/16 :goto_11f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 553
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->o:Z

    if-eqz v0, :cond_46

    sget v0, Lur;->menu_editor_debug:I

    :goto_f
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 555
    sget v0, Lup;->menu_edit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 556
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->j:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 557
    sget v0, Lup;->menu_discussion:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 558
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->k:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 559
    sget v0, Lup;->menu_add_collaborator:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 560
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->j:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 561
    sget v0, Lup;->menu_mobix:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 562
    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->p:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->p:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 563
    const/4 v0, 0x1

    return v0

    .line 553
    :cond_46
    sget v0, Lur;->menu_editor:I

    goto :goto_f
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 724
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->b:Ljava/lang/Object;

    const-string v2, "/kixEditor"

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 726
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    invoke-virtual {v0}, LxQ;->delete()V

    .line 727
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onDestroy()V

    .line 728
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 732
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v1, p0}, Lck;->a(Landroid/content/Context;)V

    .line 733
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 742
    :goto_e
    return v0

    .line 736
    :cond_f
    const/4 v1, 0x4

    if-ne p1, v1, :cond_28

    .line 737
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->g()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 738
    new-instance v1, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;

    invoke-direct {v1}, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Lx;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->a(Lx;Ljava/lang/String;)V

    goto :goto_e

    .line 742
    :cond_28
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 569
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 571
    sget v1, Lup;->menu_traffic_test:I

    if-ne v0, v1, :cond_12

    .line 572
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->k()V

    .line 595
    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0

    .line 573
    :cond_12
    sget v1, Lup;->menu_send_feedback:I

    if-ne v0, v1, :cond_21

    .line 574
    new-instance v0, LXM;

    const-string v1, "android_docs_editors"

    invoke-direct {v0, p0, v1}, LXM;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, LXM;->a()V

    goto :goto_10

    .line 577
    :cond_21
    sget v1, Lup;->menu_mobix:I

    if-ne v0, v1, :cond_39

    .line 578
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 581
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 582
    :cond_39
    const v1, 0x102002c

    if-ne v0, v1, :cond_42

    .line 583
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->j()V

    goto :goto_10

    .line 584
    :cond_42
    sget v1, Lup;->menu_add_collaborator:I

    if-ne v0, v1, :cond_4a

    .line 585
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->o()V

    goto :goto_10

    .line 586
    :cond_4a
    sget v1, Lup;->menu_discussion:I

    if-ne v0, v1, :cond_58

    .line 587
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Luy;

    if-eqz v0, :cond_10

    .line 588
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Luy;

    invoke-virtual {v0}, Luy;->c()V

    goto :goto_10

    .line 590
    :cond_58
    sget v1, Lup;->menu_edit:I

    if-ne v0, v1, :cond_60

    .line 591
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->p()V

    goto :goto_10

    .line 593
    :cond_60
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 699
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyn;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    if-eqz v0, :cond_14

    .line 700
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyn;

    invoke-virtual {v0, v1}, Lyj;->b(Lyn;)V

    .line 703
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzW;

    if-eqz v0, :cond_1d

    .line 704
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzW;

    invoke-virtual {v0}, LzW;->d()V

    .line 707
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    if-eqz v0, :cond_26

    .line 708
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    invoke-virtual {v0}, LxQ;->onPause()V

    .line 711
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LwG;

    invoke-virtual {v0}, LwG;->a()V

    .line 713
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/Object;

    const-string v2, "kixActiveTime"

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->m:Z

    .line 716
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 718
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onPause()V

    .line 719
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 634
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onResume()V

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->m:Z

    .line 636
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LdE;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LdE;->a(Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    if-eqz v0, :cond_16

    .line 639
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    invoke-virtual {v0}, LxQ;->onResume()V

    .line 642
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LwG;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;

    iget-object v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LxQ;

    invoke-virtual {v0, v1, v2}, LwG;->a(Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;LxQ;)V

    .line 644
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzW;

    if-eqz v0, :cond_28

    .line 645
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LzW;

    invoke-virtual {v0}, LzW;->c()V

    .line 649
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    if-eqz v0, :cond_3a

    .line 650
    new-instance v0, LxP;

    invoke-direct {v0, p0}, LxP;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyn;

    .line 662
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyj;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Lyn;

    invoke-virtual {v0, v1}, Lyj;->a(Lyn;)V

    .line 665
    :cond_3a
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LFu;

    invoke-virtual {v0}, LFu;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 667
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LIH;

    invoke-interface {v0}, LIH;->a()V

    .line 672
    :goto_47
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQm;

    if-eqz v0, :cond_50

    .line 673
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:LQm;

    invoke-interface {v0}, LQm;->b()V

    .line 676
    :cond_50
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 677
    new-instance v0, LxB;

    invoke-direct {v0, p0}, LxB;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 683
    return-void

    .line 669
    :cond_5f
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->h()V

    goto :goto_47
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 366
    const-string v0, "editRecorded"

    iget-boolean v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    return-void
.end method

.method public setContentView(I)V
    .registers 4
    .parameter

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->setContentView(I)V

    .line 352
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->i:Z

    if-eqz v0, :cond_11

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_12

    .line 356
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 361
    :cond_11
    :goto_11
    return-void

    .line 358
    :cond_12
    const-string v0, "KixEditorActivity"

    const-string v1, "The action bar is not available."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
