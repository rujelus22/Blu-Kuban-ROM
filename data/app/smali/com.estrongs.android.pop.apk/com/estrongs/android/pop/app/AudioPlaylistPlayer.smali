.class public Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# static fields
.field private static S:I

.field private static T:I

.field private static U:I

.field private static W:I

.field private static X:I


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/SeekBar;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/ListView;

.field private N:Landroid/widget/ListView;

.field private O:Landroid/widget/ImageView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/TextView;

.field private R:Lcom/estrongs/android/pop/view/RealViewSwitcher;

.field private V:I

.field private Y:Landroid/view/MenuItem;

.field private Z:Landroid/view/View$OnTouchListener;

.field a:Lcom/estrongs/android/pop/app/ap;

.field private aa:Landroid/view/View$OnTouchListener;

.field private b:Lcom/estrongs/android/pop/app/AudioPlayerService;

.field private c:Z

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Landroid/view/View$OnClickListener;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Lcom/estrongs/android/pop/app/aq;

.field private p:Lcom/estrongs/android/pop/app/ao;

.field private q:Landroid/content/ServiceConnection;

.field private r:Landroid/os/Handler;

.field private s:Landroid/widget/FrameLayout;

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/FrameLayout;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    sput v1, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->S:I

    sput v2, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->T:I

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->U:I

    sput v1, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->W:I

    sput v2, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->X:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->f:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    iput v3, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->i:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j:Z

    iput v3, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->k:I

    new-instance v0, Lcom/estrongs/android/pop/app/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/s;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->m:Ljava/util/HashMap;

    iput v2, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->n:I

    new-instance v0, Lcom/estrongs/android/pop/app/ad;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ad;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o:Lcom/estrongs/android/pop/app/aq;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p:Lcom/estrongs/android/pop/app/ao;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a:Lcom/estrongs/android/pop/app/ap;

    new-instance v0, Lcom/estrongs/android/pop/app/af;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/af;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->q:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/estrongs/android/pop/app/ag;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ag;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    iput v2, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->V:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Y:Landroid/view/MenuItem;

    new-instance v0, Lcom/estrongs/android/pop/app/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ai;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Z:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/estrongs/android/pop/app/aj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/aj;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->aa:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic A(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->B:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic B(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->A:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic C(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->z:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic D(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h()V

    return-void
.end method

.method static synthetic E(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->i()V

    return-void
.end method

.method static synthetic F(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g()V

    return-void
.end method

.method static synthetic G(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->D:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic H(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->C:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic I(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_70

    :goto_b
    const-string v0, "/sdcard/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_17
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_data"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "mime_type"

    const-string v4, "audio/*"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_ringtone"

    if-ne p3, v1, :cond_75

    move v0, v1

    :goto_3b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_notification"

    const/4 v0, 0x2

    if-ne p3, v0, :cond_77

    move v0, v1

    :goto_48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_alarm"

    const/4 v4, 0x4

    if-ne p3, v4, :cond_55

    move v2, v1

    :cond_55
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_music"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :try_start_67
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_79

    move-result-object v0

    :goto_6f
    return-object v0

    :cond_70
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_75
    move v0, v2

    goto :goto_3b

    :cond_77
    move v0, v2

    goto :goto_48

    :catch_79
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_6f
.end method

.method private a(I)V
    .registers 4

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    if-ne v0, p1, :cond_8

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iput p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(I)V

    goto :goto_7
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d(II)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Lcom/estrongs/android/pop/app/ao;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p:Lcom/estrongs/android/pop/app/ao;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x3

    const/4 v4, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090019

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    sget-object v1, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_38
    :goto_38
    if-nez p1, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_4c
    return-void

    :cond_4d
    const v0, 0x7f0901f6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4c

    :cond_5c
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_38

    :cond_63
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/ak;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/pop/app/ak;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090060

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/am;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/am;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-array v1, v3, [Ljava/lang/CharSequence;

    const v2, 0x7f0901f1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f0901f2

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0901f3

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/estrongs/android/pop/app/an;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/an;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_4c
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 13

    const v9, 0x7f0901f7

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.estrongs/playlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {p0, v9}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_37
    :goto_37
    return v0

    :cond_38
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_72

    if-eqz p2, :cond_6f

    const v1, 0x7f0901f9

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_37

    :cond_6f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_72
    :try_start_72
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    array-length v6, v5

    move v2, v0

    :goto_85
    if-lt v2, v6, :cond_9e

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    const v1, 0x7f0901f8

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    goto :goto_37

    :cond_9e
    aget-object v1, v5, v2

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c0

    :goto_a6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_85

    :cond_c0
    const v7, 0x8c0e

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_c7} :catch_c9

    move-result-object v1

    goto :goto_a6

    :catch_c9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, v9}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-eqz p2, :cond_37

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_37
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-object v0
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v7, 0x0

    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_f
    if-ne p2, v1, :cond_5d

    const-string v0, "is_ringtone"

    move-object v6, v0

    :goto_14
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_1a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_data=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4d
    .catchall {:try_start_1a .. :try_end_4d} :catchall_e0

    move-result-object v1

    if-eqz v1, :cond_56

    :try_start_50
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_d8

    move-result v0

    if-nez v0, :cond_67

    :cond_56
    if-eqz v1, :cond_5b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5b
    move-object v0, v7

    :cond_5c
    :goto_5c
    return-object v0

    :cond_5d
    if-ne p2, v2, :cond_63

    const-string v0, "is_notification"

    move-object v6, v0

    goto :goto_14

    :cond_63
    const-string v0, "is_alarm"

    move-object v6, v0

    goto :goto_14

    :cond_67
    :try_start_67
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    if-nez v0, :cond_b6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_9d
    .catchall {:try_start_67 .. :try_end_9d} :catchall_d8

    :try_start_9d
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_9d .. :try_end_b6} :catchall_d8
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b6} :catch_d3

    :cond_b6
    :goto_b6
    :try_start_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cc
    .catchall {:try_start_b6 .. :try_end_cc} :catchall_d8

    move-result-object v0

    if-eqz v1, :cond_5c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    :catch_d3
    move-exception v0

    :try_start_d4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d8

    goto :goto_b6

    :catchall_d8
    move-exception v0

    move-object v7, v1

    :goto_da
    if-eqz v7, :cond_df

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_df
    throw v0

    :catchall_e0
    move-exception v0

    goto :goto_da
.end method

.method private b(I)V
    .registers 6

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c(II)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e:[Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.estrongs/playlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2f
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method private c()V
    .registers 4

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private c(I)V
    .registers 6

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private c(II)V
    .registers 7

    const/4 v1, -0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->n:I

    if-eq v0, v1, :cond_11

    if-eqz p1, :cond_11

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->n:I

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(II)V

    iput v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->n:I

    :cond_11
    packed-switch p1, :pswitch_data_88

    :goto_14
    return-void

    :pswitch_15
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h()V

    invoke-direct {p0, p2, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->J:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->K:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->L:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    :pswitch_43
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d(I)V

    goto :goto_14

    :pswitch_62
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h()V

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(II)V

    goto :goto_14

    :pswitch_6a
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h()V

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->J:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->K:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->L:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p2, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->n:I

    goto :goto_14

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_15
        :pswitch_43
        :pswitch_62
        :pswitch_6a
    .end packed-switch
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/.estrongs/playlist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_46
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5d

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    array-length v0, v4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v3, v0

    :goto_58
    array-length v0, v4

    if-lt v3, v0, :cond_67

    move-object v0, v1

    :goto_5c
    return-object v0

    :cond_5d
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_60} :catch_61

    goto :goto_46

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_5c

    :cond_67
    :try_start_67
    aget-object v0, v4, v3

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v3
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6d} :catch_61

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_58

    :cond_71
    move-object v0, v2

    goto :goto_5c
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/aq;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o:Lcom/estrongs/android/pop/app/aq;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-ge p1, v0, :cond_10

    if-gez v0, :cond_14

    :cond_10
    if-lt p1, v1, :cond_19

    if-ltz v1, :cond_19

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_19
    return-void
.end method

.method private d(II)V
    .registers 6

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v6

    :goto_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    :cond_12
    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/app/ao;

    const v3, 0x7f030008

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ao;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Landroid/content/Context;I[Ljava/lang/String;Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p:Lcom/estrongs/android/pop/app/ao;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p:Lcom/estrongs/android/pop/app/ao;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p:Lcom/estrongs/android/pop/app/ao;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ao;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b([Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c(I)V

    :cond_51
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->R:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a(I)V

    const/4 v0, 0x1

    goto :goto_8
.end method

.method private d()[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.estrongs/playlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_26

    new-array v0, v0, [Ljava/lang/String;

    :goto_25
    return-object v0

    :cond_26
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v1, v2

    if-nez v1, :cond_30

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_25

    :cond_30
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/String;

    :goto_33
    array-length v3, v2

    if-lt v0, v3, :cond_38

    move-object v0, v1

    goto :goto_25

    :cond_38
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method

.method private e(I)Ljava/lang/String;
    .registers 7

    div-int/lit16 v0, p1, 0x3e8

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .registers 2

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->f(I)V

    return-void
.end method

.method private e(II)V
    .registers 12

    const/4 v8, 0x1

    const v7, -0xeaab6a

    const/4 v6, 0x0

    const/16 v5, 0x8

    if-ltz p1, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-gt v0, p1, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-lt v0, p1, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_12

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f070065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v4, 0x7f070064

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_9e

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f(I)Z

    move-result v1

    if-eqz v1, :cond_75

    const v1, -0x4f4f50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12

    :cond_75
    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Spreadtrum_cmcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_8e
    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    :cond_9e
    if-ne p2, v8, :cond_b4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f020021

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_12

    :cond_b4
    const/4 v4, 0x2

    if-ne p2, v4, :cond_cb

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f020020

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_12

    :cond_cb
    const/4 v4, 0x3

    if-ne p2, v4, :cond_12

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_12
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->k:I

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    return-object v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private f(I)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g(I)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/app/ao;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p:Lcom/estrongs/android/pop/app/ao;

    return-object v0
.end method

.method private g()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->z:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(I)V

    return-void
.end method

.method private g(I)Z
    .registers 3

    const/4 v0, 0x3

    if-le p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private h()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->A:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->f(I)V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->A:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->V:I

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Q:Landroid/widget/TextView;

    return-object v0
.end method

.method private j()V
    .registers 5

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g(I)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_16
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    if-le v0, v1, :cond_3b

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    add-int/lit8 v0, v0, -0x3

    :goto_1e
    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    :cond_3b
    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->h:I

    goto :goto_1e

    :cond_3e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2f

    :cond_51
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2f
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j:Z

    return v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Lcom/estrongs/android/pop/view/RealViewSwitcher;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->R:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->i:Z

    return v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c()V

    return-void
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->J:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->K:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e()V

    return-void
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->l:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->k:I

    return v0
.end method

.method static synthetic y(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic z(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->x:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c:Z

    if-nez v0, :cond_13

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->q:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c:Z

    :cond_13
    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .registers 13

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    if-ne p2, v7, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/ringtones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_73

    const-string v0, "ES"

    const-string v1, "can\'t create ringtone folder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/notifications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_56
    const/4 v0, 0x4

    if-ne p2, v0, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/alarms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_71
    move v0, v6

    goto :goto_3a

    :cond_73
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_eb

    invoke-static {p0}, Lcom/estrongs/android/pop/d/p;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/p;

    move-result-object v0

    const-wide/16 v8, -0x1

    invoke-virtual {v0, p1, v2, v8, v9}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_a7

    move v0, v6

    goto :goto_3a

    :cond_a7
    move v3, v6

    :goto_a8
    const/4 v0, 0x0

    if-eqz v3, :cond_af

    invoke-direct {p0, v2, p2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_af
    if-nez v0, :cond_c0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    :goto_bb
    if-nez v0, :cond_e5

    move v0, v6

    goto/16 :goto_3a

    :cond_c0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_bb

    :cond_c5
    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_e0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Ljava/lang/String;Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_bb

    :cond_e0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_bb

    :cond_e5
    invoke-static {p0, p2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    move v0, v7

    goto/16 :goto_3a

    :cond_eb
    move v3, v7

    goto :goto_a8
.end method

.method b()V
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->q:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->c:Z

    :cond_c
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    packed-switch p1, :pswitch_data_50

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "RENAME_FILE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Ljava/lang/String;)V

    :cond_29
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e:[Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/app/ap;

    const v1, 0x7f030008

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e:[Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/estrongs/android/pop/app/ap;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a:Lcom/estrongs/android/pop/app/ap;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a:Lcom/estrongs/android/pop/app/ap;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a:Lcom/estrongs/android/pop/app/ap;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ap;->notifyDataSetChanged()V

    goto :goto_3

    nop

    :pswitch_data_50
    .packed-switch 0x10001000
        :pswitch_4
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const v3, 0x7f030008

    const/4 v7, 0x1

    const/4 v2, -0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->R:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    :goto_13
    if-nez v0, :cond_19

    :cond_15
    :goto_15
    return v7

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    goto :goto_13

    :cond_19
    sget v0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->S:I

    if-ne v1, v0, :cond_69

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->V:I

    if-eq v0, v2, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->V:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c(I)V

    iput v2, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->V:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    if-nez v0, :cond_3f

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    :cond_3f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    new-instance v0, Lcom/estrongs/android/pop/app/ao;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ao;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Landroid/content/Context;I[Ljava/lang/String;Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p:Lcom/estrongs/android/pop/app/ao;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p:Lcom/estrongs/android/pop/app/ao;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->p:Lcom/estrongs/android/pop/app/ao;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ao;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_15

    :cond_69
    sget v0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->T:I

    if-ne v1, v0, :cond_99

    iget v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->V:I

    if-eq v0, v2, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e:[Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->V:I

    aget-object v0, v0, v1

    iput v2, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->V:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e:[Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/app/ap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e:[Ljava/lang/String;

    invoke-direct {v0, p0, p0, v3, v1}, Lcom/estrongs/android/pop/app/ap;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a:Lcom/estrongs/android/pop/app/ap;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a:Lcom/estrongs/android/pop/app/ap;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a:Lcom/estrongs/android/pop/app/ap;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ap;->notifyDataSetChanged()V

    goto/16 :goto_15

    :cond_99
    sget v0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->U:I

    if-ne v1, v0, :cond_15

    goto/16 :goto_15
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->requestWindowFeature(I)Z

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->setContentView(I)V

    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->s:Landroid/widget/FrameLayout;

    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->x:Landroid/widget/ImageView;

    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->y:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/t;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->t:Landroid/widget/FrameLayout;

    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->z:Landroid/widget/ImageView;

    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->A:Landroid/widget/ImageView;

    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->B:Landroid/widget/ImageView;

    new-instance v2, Lcom/estrongs/android/pop/app/u;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/u;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->u:Landroid/widget/FrameLayout;

    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->C:Landroid/widget/ImageView;

    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->D:Landroid/widget/ImageView;

    new-instance v3, Lcom/estrongs/android/pop/app/v;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/v;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->v:Landroid/widget/FrameLayout;

    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->E:Landroid/widget/ImageView;

    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->F:Landroid/widget/ImageView;

    new-instance v4, Lcom/estrongs/android/pop/app/w;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/w;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->w:Landroid/widget/FrameLayout;

    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->H:Landroid/widget/ImageView;

    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->G:Landroid/widget/ImageView;

    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->I:Landroid/widget/ImageView;

    new-instance v5, Lcom/estrongs/android/pop/app/x;

    invoke-direct {v5, p0}, Lcom/estrongs/android/pop/app/x;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->J:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->J:Landroid/widget/SeekBar;

    const/16 v6, 0x3e8

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setMax(I)V

    new-instance v6, Lcom/estrongs/android/pop/app/y;

    invoke-direct {v6, p0}, Lcom/estrongs/android/pop/app/y;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v7, Lcom/estrongs/android/pop/app/z;

    invoke-direct {v7, p0}, Lcom/estrongs/android/pop/app/z;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    new-instance v8, Lcom/estrongs/android/pop/app/aa;

    invoke-direct {v8, p0}, Lcom/estrongs/android/pop/app/aa;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->O:Landroid/widget/ImageView;

    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->P:Landroid/widget/ImageView;

    new-instance v9, Lcom/estrongs/android/pop/app/ab;

    invoke-direct {v9, p0}, Lcom/estrongs/android/pop/app/ab;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    new-instance v10, Lcom/estrongs/android/pop/app/ac;

    invoke-direct {v10, p0}, Lcom/estrongs/android/pop/app/ac;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Q:Landroid/widget/TextView;

    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->K:Landroid/widget/TextView;

    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v11, "playlist"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    const-string v11, "isadd"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->f:Z

    const-string v11, "showlist"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j:Z

    iget-object v11, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    if-nez v11, :cond_1b3

    iget-boolean v11, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->j:Z

    if-nez v11, :cond_1b3

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1b3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "file://"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_240

    const-string v11, "file://"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1ab
    :goto_1ab
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    iput-object v11, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d:[Ljava/lang/String;

    :cond_1b3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->J:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Z:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->aa:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->R:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->R:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->M:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->N:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->registerForContextMenu(Landroid/view/View;)V

    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f07004c

    aput v2, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f0901fc

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a([I[I)V

    return-void

    :cond_240
    const-string v11, "http://127.0.0.1:59767/"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1ab

    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1ab
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7

    const/4 v2, 0x0

    const v0, 0x7f020094

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    const v0, 0x7f090011

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->R:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b()I

    move-result v0

    if-nez v0, :cond_22

    sget v0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->S:I

    const v1, 0x7f0901ef

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_21
    return-void

    :cond_22
    sget v0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->T:I

    const v1, 0x7f0901f0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_21
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    sget v0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->X:I

    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Y:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Y:Landroid/view/MenuItem;

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget v0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->W:I

    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/aq;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->o()V

    :cond_29
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->i:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->W:I

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Haier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lcom/estrongs/android/pop/app/ae;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ae;-><init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ae;->start()V

    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->finish()V

    :cond_24
    :goto_24
    const/4 v0, 0x1

    return v0

    :cond_26
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    goto :goto_21

    :cond_2c
    sget v1, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->X:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    if-nez v0, :cond_57

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/estrongs/android/pop/view/TitleEditor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "RENAME_FILE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TITLE"

    const v2, 0x7f0901fa

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10001000

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24

    :cond_57
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Ljava/lang/String;Z)Z

    goto :goto_24
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->R:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b()I

    move-result v0

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Y:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_f
    return v2

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->Y:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_f
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d(II)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d(II)V

    goto :goto_26

    :cond_34
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->d(II)V

    goto :goto_26
.end method

.method protected onStart()V
    .registers 3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->o:Lcom/estrongs/android/pop/app/aq;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/aq;)V

    :cond_13
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    :cond_11
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->f()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStop()V

    return-void
.end method
