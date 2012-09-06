.class public final Lcom/anddoes/launcher/Launcher;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/anddoes/launcher/ha;


# static fields
.field private static ad:Lcom/anddoes/launcher/gb;

.field private static ae:Ljava/util/HashMap;

.field private static an:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static ao:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static ap:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static as:Ljava/util/ArrayList;

.field static final d:Ljava/util/ArrayList;

.field private static final u:Ljava/lang/Object;

.field private static v:I


# instance fields
.field private A:Landroid/view/View;

.field private B:Lcom/anddoes/launcher/DragLayer;

.field private C:Lcom/anddoes/launcher/bm;

.field private D:Landroid/appwidget/AppWidgetManager;

.field private E:Lcom/anddoes/launcher/gk;

.field private F:Lcom/anddoes/launcher/t;

.field private G:I

.field private H:Lcom/anddoes/launcher/jo;

.field private I:Lcom/anddoes/launcher/ec;

.field private J:[I

.field private K:Lcom/anddoes/launcher/dd;

.field private L:Lcom/anddoes/launcher/Hotseat;

.field private M:Landroid/view/View;

.field private N:Lcom/anddoes/launcher/SearchDropTargetBar;

.field private O:Z

.field private P:Landroid/os/Bundle;

.field private Q:Landroid/text/SpannableStringBuilder;

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Landroid/os/Bundle;

.field private X:Lcom/anddoes/launcher/LauncherModel;

.field private Y:Lcom/anddoes/launcher/ds;

.field private Z:Z

.field public a:Landroid/view/LayoutInflater;

.field private aA:Landroid/os/Vibrator;

.field private aB:Z

.field private aC:Z

.field private aD:I

.field private aE:I

.field private aF:Landroid/app/Dialog;

.field private aG:Z

.field private aH:Z

.field private final aI:Landroid/content/BroadcastReceiver;

.field private final aJ:Landroid/os/Handler;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private af:Landroid/content/Intent;

.field private final ag:I

.field private final ah:I

.field private final ai:I

.field private aj:J

.field private ak:J

.field private al:Ljava/util/HashMap;

.field private final am:I

.field private aq:Lcom/anddoes/launcher/BubbleTextView;

.field private ar:Ljava/lang/Runnable;

.field private at:Lcom/anddoes/launcher/PreviewPane;

.field private au:Lcom/anddoes/launcher/az;

.field private av:Landroid/view/View;

.field private aw:Landroid/view/ViewGroup$LayoutParams;

.field private ax:Landroid/view/View;

.field private ay:Landroid/view/ViewGroup$LayoutParams;

.field private az:Landroid/widget/ListPopupWindow;

.field public b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

.field public c:Lcom/anddoes/launcher/AppsCustomizePagedView;

.field public e:Lcom/anddoes/launcher/LauncherApplication;

.field public f:Lcom/anddoes/launcher/preference/f;

.field public g:Lcom/anddoes/launcher/c/l;

.field public h:Lcom/anddoes/launcher/ui/f;

.field public i:Z

.field public j:Lcom/anddoes/launcher/preference/a;

.field public k:Lcom/anddoes/launcher/preference/az;

.field public l:Lcom/anddoes/launcher/preference/c;

.field public m:Z

.field public n:Z

.field public o:Lcom/anddoes/launcher/ig;

.field public p:I

.field private q:Lcom/anddoes/launcher/gf;

.field private r:Landroid/animation/AnimatorSet;

.field private s:Landroid/animation/AnimatorSet;

.field private t:Landroid/view/ViewPropertyAnimator;

.field private final w:Landroid/content/BroadcastReceiver;

.field private final x:Landroid/database/ContentObserver;

.field private y:Lcom/anddoes/launcher/Workspace;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/Launcher;->u:Ljava/lang/Object;

    .line 226
    sput v1, Lcom/anddoes/launcher/Launcher;->v:I

    .line 278
    const/4 v0, 0x0

    sput-object v0, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/Launcher;->ae:Ljava/util/HashMap;

    .line 297
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/anddoes/launcher/Launcher;->an:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 298
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/anddoes/launcher/Launcher;->ao:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 299
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/anddoes/launcher/Launcher;->ap:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/Launcher;->d:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/Launcher;->as:Ljava/util/ArrayList;

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 216
    sget-object v0, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    .line 228
    new-instance v0, Lcom/anddoes/launcher/fx;

    invoke-direct {v0, p0, v2}, Lcom/anddoes/launcher/fx;-><init>(Lcom/anddoes/launcher/Launcher;B)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->w:Landroid/content/BroadcastReceiver;

    .line 229
    new-instance v0, Lcom/anddoes/launcher/fw;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/fw;-><init>(Lcom/anddoes/launcher/Launcher;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->x:Landroid/database/ContentObserver;

    .line 242
    iput v2, p0, Lcom/anddoes/launcher/Launcher;->G:I

    .line 243
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->H:Lcom/anddoes/launcher/jo;

    .line 245
    new-instance v0, Lcom/anddoes/launcher/ec;

    invoke-direct {v0}, Lcom/anddoes/launcher/ec;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    .line 246
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->J:[I

    .line 256
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->O:Z

    .line 260
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    .line 262
    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->R:Z

    .line 264
    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->S:Z

    .line 273
    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->Z:Z

    .line 274
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->aa:Z

    .line 275
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->ab:Z

    .line 276
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->ac:Z

    .line 282
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->af:Landroid/content/Intent;

    .line 285
    iput v1, p0, Lcom/anddoes/launcher/Launcher;->ag:I

    .line 286
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/anddoes/launcher/Launcher;->ah:I

    .line 287
    const/16 v0, 0xfa

    iput v0, p0, Lcom/anddoes/launcher/Launcher;->ai:I

    .line 289
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/anddoes/launcher/Launcher;->ak:J

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->al:Ljava/util/HashMap;

    .line 294
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/anddoes/launcher/Launcher;->am:I

    .line 305
    new-instance v0, Lcom/anddoes/launcher/ed;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/ed;-><init>(Lcom/anddoes/launcher/Launcher;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->ar:Ljava/lang/Runnable;

    .line 335
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->i:Z

    .line 342
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->aB:Z

    .line 343
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->aC:Z

    .line 344
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->m:Z

    .line 347
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->aF:Landroid/app/Dialog;

    .line 348
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->n:Z

    .line 2266
    new-instance v0, Lcom/anddoes/launcher/eo;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/eo;-><init>(Lcom/anddoes/launcher/Launcher;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->aI:Landroid/content/BroadcastReceiver;

    .line 2353
    new-instance v0, Lcom/anddoes/launcher/ez;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/ez;-><init>(Lcom/anddoes/launcher/Launcher;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method private R()V
    .registers 3

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aB:Z

    if-eqz v0, :cond_13

    .line 591
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aC:Z

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aB:Z

    .line 595
    :cond_13
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 596
    if-eqz v0, :cond_20

    .line 597
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    .line 599
    :cond_20
    return-void
.end method

.method private S()V
    .registers 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_17

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->m:Z

    .line 650
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Hotseat;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->V:Z

    if-nez v0, :cond_17

    .line 652
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->T()V

    .line 655
    :cond_17
    return-void
.end method

.method private T()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 658
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->getPaddingRight()I

    move-result v2

    .line 659
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->getPaddingBottom()I

    move-result v1

    .line 660
    if-lez v1, :cond_22

    move v1, v2

    .line 665
    :goto_10
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Workspace;->getPaddingLeft()I

    move-result v3

    .line 666
    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v4}, Lcom/anddoes/launcher/Workspace;->getPaddingTop()I

    move-result v4

    .line 665
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/anddoes/launcher/Workspace;->setPadding(IIII)V

    .line 667
    return-void

    :cond_22
    move v5, v1

    move v1, v0

    move v0, v5

    .line 663
    goto :goto_10
.end method

.method private U()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 768
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->e:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_8

    .line 784
    :goto_7
    return-void

    .line 771
    :cond_8
    sget-object v0, Lcom/anddoes/launcher/gf;->e:Lcom/anddoes/launcher/gf;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    .line 772
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 773
    const-string v0, "NONE"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 774
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->g(Z)V

    .line 780
    :goto_1f
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/SearchDropTargetBar;->b(Z)V

    .line 781
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->H()V

    .line 782
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->K()V

    .line 783
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->at:Lcom/anddoes/launcher/PreviewPane;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PreviewPane;->a()V

    goto :goto_7

    .line 776
    :cond_32
    invoke-direct {p0, v2}, Lcom/anddoes/launcher/Launcher;->g(Z)V

    goto :goto_1f
.end method

.method private V()V
    .registers 4

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v0, :cond_3b

    .line 1144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1145
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1146
    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1147
    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1148
    const v1, 0x7f06000e

    .line 1149
    new-instance v2, Lcom/anddoes/launcher/fl;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/fl;-><init>(Lcom/anddoes/launcher/Launcher;)V

    .line 1148
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1157
    const v1, 0x7f06000f

    .line 1158
    new-instance v2, Lcom/anddoes/launcher/fr;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/fr;-><init>(Lcom/anddoes/launcher/Launcher;)V

    .line 1157
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1165
    :cond_3b
    return-void
.end method

.method private W()V
    .registers 4

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->b:Z

    if-eqz v0, :cond_41

    .line 1169
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anddoes/launcher/preference/f;->b:Z

    .line 1170
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->b:Z

    const-string v2, "desktop_locked"

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/h;->b(Ljava/lang/String;Z)V

    .line 1171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1172
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1173
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1174
    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1175
    const v1, 0x7f060007

    .line 1176
    new-instance v2, Lcom/anddoes/launcher/fs;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/fs;-><init>(Lcom/anddoes/launcher/Launcher;)V

    .line 1175
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1182
    :cond_41
    return-void
.end method

.method private X()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1271
    const-string v1, ""

    .line 1272
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v2}, Lcom/anddoes/launcher/preference/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 1273
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1274
    array-length v5, v4

    move v2, v0

    :goto_11
    if-lt v2, v5, :cond_23

    .line 1277
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v2}, Lcom/anddoes/launcher/preference/c;->b()Ljava/lang/String;

    move-result-object v2

    .line 1278
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1279
    array-length v3, v2

    :goto_20
    if-lt v0, v3, :cond_47

    .line 1282
    return-object v1

    .line 1274
    :cond_23
    aget-object v3, v4, v2

    .line 1275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v6, v3}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1274
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_11

    .line 1279
    :cond_47
    aget-object v4, v2, v0

    .line 1280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v5, v4}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1279
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method private Y()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1450
    sget-object v1, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    if-nez v1, :cond_10

    .line 1451
    new-instance v1, Lcom/anddoes/launcher/fu;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/fu;-><init>(Lcom/anddoes/launcher/Launcher;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 1465
    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/fu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1498
    :cond_f
    :goto_f
    return-void

    .line 1469
    :cond_10
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1471
    sget-object v2, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    iget-object v2, v2, Lcom/anddoes/launcher/gb;->a:Ljava/lang/String;

    .line 1472
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1474
    sget-object v4, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    iget v4, v4, Lcom/anddoes/launcher/gb;->b:I

    .line 1475
    iget v5, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1477
    sget-object v6, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    iget v6, v6, Lcom/anddoes/launcher/gb;->c:I

    .line 1478
    iget v1, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1480
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1481
    if-ne v5, v4, :cond_58

    if-ne v1, v6, :cond_58

    .line 1480
    :goto_38
    if-eqz v0, :cond_f

    .line 1484
    sget-object v0, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    iput-object v3, v0, Lcom/anddoes/launcher/gb;->a:Ljava/lang/String;

    .line 1485
    sget-object v0, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    iput v5, v0, Lcom/anddoes/launcher/gb;->b:I

    .line 1486
    sget-object v0, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    iput v1, v0, Lcom/anddoes/launcher/gb;->c:I

    .line 1488
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Y:Lcom/anddoes/launcher/ds;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ds;->b()V

    .line 1490
    sget-object v0, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    .line 1491
    new-instance v1, Lcom/anddoes/launcher/fv;

    const-string v2, "WriteLocaleConfiguration"

    invoke-direct {v1, p0, v2, v0}, Lcom/anddoes/launcher/fv;-><init>(Lcom/anddoes/launcher/Launcher;Ljava/lang/String;Lcom/anddoes/launcher/gb;)V

    .line 1496
    invoke-virtual {v1}, Lcom/anddoes/launcher/fv;->start()V

    goto :goto_f

    .line 1481
    :cond_58
    const/4 v0, 0x1

    goto :goto_38
.end method

.method private Z()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1943
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->C:Lcom/anddoes/launcher/bm;

    .line 1945
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/DragLayer;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    .line 1946
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    const v3, 0x7f080033

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/Workspace;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    .line 1947
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1950
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->a()I

    move-result v3

    .line 1951
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->removeAllViews()V

    move v0, v1

    .line 1952
    :goto_2e
    if-lt v0, v3, :cond_105

    .line 1956
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->z:Landroid/view/View;

    .line 1957
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    .line 1960
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v0, p0, v2}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/bm;)V

    .line 1963
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/Hotseat;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    .line 1964
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_5f

    .line 1965
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/Hotseat;->a(Lcom/anddoes/launcher/Launcher;)V

    .line 1969
    :cond_5f
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 1971
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/bm;)V

    .line 1972
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/bn;)V

    .line 1975
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/SearchDropTargetBar;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    .line 1977
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    if-eqz v0, :cond_9e

    const-string v0, "ICE_CREAM_SANDWICH"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1978
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1979
    if-eqz v0, :cond_9e

    .line 1980
    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1985
    :cond_9e
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/AppsCustomizeTabHost;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 1986
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 1987
    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/AppsCustomizePagedView;

    .line 1986
    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    .line 1988
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0, p0, v2}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/bm;)V

    .line 1991
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->M:Landroid/view/View;

    .line 1992
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->M:Landroid/view/View;

    if-eqz v0, :cond_d7

    .line 1993
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->M:Landroid/view/View;

    new-instance v1, Lcom/anddoes/launcher/ef;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/ef;-><init>(Lcom/anddoes/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2002
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->M:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2004
    :cond_d7
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PreviewPane;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->at:Lcom/anddoes/launcher/PreviewPane;

    .line 2008
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/bv;)V

    .line 2009
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/bm;->b(Landroid/view/View;)V

    .line 2010
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/bm;->a(Landroid/view/View;)V

    .line 2011
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/cb;)V

    .line 2012
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->at:Lcom/anddoes/launcher/PreviewPane;

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/cb;)V

    .line 2013
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    if-eqz v0, :cond_104

    .line 2014
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v0, p0, v2}, Lcom/anddoes/launcher/SearchDropTargetBar;->a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/bm;)V

    .line 2016
    :cond_104
    return-void

    .line 1953
    :cond_105
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->t()V

    .line 1952
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2e
.end method

.method private a(II)Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4657
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4658
    if-eqz v0, :cond_b

    .line 4664
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4670
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4601
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4604
    const/16 v1, 0x80

    .line 4603
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 4604
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 4605
    if-eqz v1, :cond_3e

    .line 4606
    const-string v2, "com.android.launcher.toolbar_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 4607
    if-eqz v1, :cond_3e

    .line 4608
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    .line 4609
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_1d} :catch_40

    move-result-object v0

    .line 4622
    :goto_1e
    return-object v0

    .line 4612
    :catch_1f
    move-exception v0

    .line 4614
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load toolbar icon; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4615
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4616
    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4614
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4622
    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    goto :goto_1e

    .line 4617
    :catch_40
    move-exception v0

    .line 4619
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load toolbar icon from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4620
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4619
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method private a(Lcom/anddoes/launcher/kj;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 2027
    .line 2028
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2027
    invoke-virtual {p0, v0, p1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/ViewGroup;Lcom/anddoes/launcher/kj;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/Workspace;
    .registers 2
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    return-object v0
.end method

.method public static a()V
    .registers 0

    .prologue
    .line 358
    return-void
.end method

.method static a(I)V
    .registers 3
    .parameter

    .prologue
    .line 1566
    sget-object v1, Lcom/anddoes/launcher/Launcher;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 1567
    :try_start_3
    sput p0, Lcom/anddoes/launcher/Launcher;->v:I

    .line 1566
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(IJI)V
    .registers 28
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Launcher;->D:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    .line 2198
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v4

    .line 2200
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v10

    .line 2206
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/anddoes/launcher/Launcher;->J:[I

    .line 2207
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-object v6, v5, Lcom/anddoes/launcher/ec;->q:[I

    .line 2208
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v5, v5, Lcom/anddoes/launcher/ec;->l:I

    if-ltz v5, :cond_78

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v5, v5, Lcom/anddoes/launcher/ec;->m:I

    if-ltz v5, :cond_78

    .line 2211
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v5, v5, Lcom/anddoes/launcher/ec;->n:I

    const/4 v7, 0x0

    aget v7, v10, v7

    if-lt v5, v7, :cond_78

    .line 2212
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v5, v5, Lcom/anddoes/launcher/ec;->o:I

    const/4 v7, 0x1

    aget v7, v10, v7

    if-lt v5, v7, :cond_78

    .line 2213
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v5, v5, Lcom/anddoes/launcher/ec;->l:I

    aput v5, v9, v4

    .line 2214
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v5, v5, Lcom/anddoes/launcher/ec;->m:I

    aput v5, v9, v4

    .line 2215
    const/4 v4, 0x1

    .line 2229
    :cond_5f
    :goto_5f
    if-nez v4, :cond_a8

    .line 2230
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_74

    .line 2233
    new-instance v4, Lcom/anddoes/launcher/eg;

    const-string v5, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v5, v1}, Lcom/anddoes/launcher/eg;-><init>(Lcom/anddoes/launcher/Launcher;Ljava/lang/String;I)V

    .line 2237
    invoke-virtual {v4}, Lcom/anddoes/launcher/eg;->start()V

    .line 2239
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Launcher;->u()V

    .line 2264
    :cond_77
    :goto_77
    return-void

    .line 2216
    :cond_78
    if-eqz v6, :cond_9d

    .line 2218
    const/4 v5, 0x0

    aget v5, v6, v5

    const/4 v7, 0x1

    aget v6, v6, v7

    .line 2219
    const/4 v7, 0x0

    aget v7, v10, v7

    const/4 v8, 0x1

    aget v8, v10, v8

    .line 2218
    invoke-virtual/range {v4 .. v9}, Lcom/anddoes/launcher/CellLayout;->a(IIII[I)[I

    move-result-object v5

    .line 2220
    if-eqz v5, :cond_9b

    const/4 v4, 0x1

    .line 2221
    :goto_8d
    const/4 v6, 0x0

    aget v6, v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_99

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5f

    .line 2222
    :cond_99
    const/4 v4, 0x0

    goto :goto_5f

    .line 2220
    :cond_9b
    const/4 v4, 0x0

    goto :goto_8d

    .line 2226
    :cond_9d
    const/4 v5, 0x0

    aget v5, v10, v5

    const/4 v6, 0x1

    aget v6, v10, v6

    invoke-virtual {v4, v9, v5, v6}, Lcom/anddoes/launcher/CellLayout;->a([III)Z

    move-result v4

    goto :goto_5f

    .line 2244
    :cond_a8
    new-instance v11, Lcom/anddoes/launcher/gn;

    move/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/anddoes/launcher/gn;-><init>(I)V

    .line 2245
    const/4 v4, 0x0

    aget v4, v10, v4

    iput v4, v11, Lcom/anddoes/launcher/gn;->n:I

    .line 2246
    const/4 v4, 0x1

    aget v4, v10, v4

    iput v4, v11, Lcom/anddoes/launcher/gn;->o:I

    .line 2249
    const/4 v4, 0x0

    aget v15, v9, v4

    const/4 v4, 0x1

    aget v16, v9, v4

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, p4

    .line 2248
    invoke-static/range {v10 .. v17}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIIIZ)V

    .line 2251
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/anddoes/launcher/Launcher;->T:Z

    if-nez v4, :cond_77

    .line 2253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Lcom/anddoes/launcher/gk;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v11, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    .line 2255
    iget-object v4, v11, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2256
    iget-object v4, v11, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v11}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v13, v11, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    .line 2259
    const/4 v4, 0x0

    aget v17, v9, v4

    const/4 v4, 0x1

    aget v18, v9, v4

    iget v0, v11, Lcom/anddoes/launcher/gn;->n:I

    move/from16 v19, v0

    .line 2260
    iget v0, v11, Lcom/anddoes/launcher/gn;->o:I

    move/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/anddoes/launcher/Launcher;->ab()Z

    move-result v21

    move-wide/from16 v14, p2

    move/from16 v16, p4

    .line 2258
    invoke-virtual/range {v12 .. v21}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    .line 2262
    iget-object v4, v11, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_77
.end method

.method private a(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4682
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4683
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4684
    return-void
.end method

.method private a(ILcom/anddoes/launcher/jo;Landroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x0

    .line 2853
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->D:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2855
    if-eqz v0, :cond_7d

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_7d

    .line 2857
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2858
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2859
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2860
    if-eqz p2, :cond_44

    .line 2861
    iget-object v0, p2, Lcom/anddoes/launcher/jo;->f:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p2, Lcom/anddoes/launcher/jo;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 2862
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    iget-object v3, p2, Lcom/anddoes/launcher/jo;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2864
    iget-object v3, p2, Lcom/anddoes/launcher/jo;->f:Ljava/lang/String;

    .line 2865
    iget-object v0, p2, Lcom/anddoes/launcher/jo;->g:Landroid/os/Parcelable;

    check-cast v0, Landroid/content/ClipData;

    .line 2866
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 2867
    :goto_3e
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5

    if-lt v1, v5, :cond_48

    .line 2887
    :cond_44
    :goto_44
    invoke-virtual {p0, v2, v6}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    .line 2899
    :goto_47
    return-void

    .line 2868
    :cond_48
    invoke-virtual {v4, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 2869
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 2870
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2871
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 2872
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2873
    if-eqz v3, :cond_6a

    .line 2875
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_44

    .line 2876
    :cond_6a
    if-eqz v0, :cond_72

    .line 2877
    const-string v1, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_44

    .line 2878
    :cond_72
    if-eqz v1, :cond_44

    .line 2879
    const-string v0, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_44

    .line 2867
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 2889
    :cond_7d
    if-nez p2, :cond_84

    .line 2890
    const/4 v0, -0x1

    invoke-virtual {p0, v6, v0, p3}, Lcom/anddoes/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_47

    .line 2893
    :cond_84
    iget-wide v2, p2, Lcom/anddoes/launcher/jo;->j:J

    iget v0, p2, Lcom/anddoes/launcher/jo;->k:I

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/anddoes/launcher/Launcher;->a(IJI)V

    .line 2896
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(ZZ)V

    goto :goto_47
.end method

.method private a(J)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2328
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2329
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2330
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anddoes/launcher/Launcher;->aj:J

    .line 2332
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/anddoes/launcher/gb;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1506
    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_36
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_c} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_2c

    :try_start_c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/anddoes/launcher/gb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p1, Lcom/anddoes/launcher/gb;->b:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p1, Lcom/anddoes/launcher/gb;->c:I
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_41
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1e} :catch_48
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_46

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_3f

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    move-object v0, v1

    :goto_24
    if-eqz v0, :cond_21

    :try_start_26
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_21

    :catch_2a
    move-exception v0

    goto :goto_21

    :catch_2c
    move-exception v0

    move-object v0, v1

    :goto_2e
    if-eqz v0, :cond_21

    :try_start_30
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_21

    :catch_34
    move-exception v0

    goto :goto_21

    :catchall_36
    move-exception v0

    :goto_37
    if-eqz v1, :cond_3c

    :try_start_39
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    throw v0

    :catch_3d
    move-exception v1

    goto :goto_3c

    :catch_3f
    move-exception v0

    goto :goto_21

    :catchall_41
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_37

    :catch_46
    move-exception v1

    goto :goto_2e

    :catch_48
    move-exception v1

    goto :goto_24
.end method

.method private a(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2376
    if-eqz p2, :cond_7

    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 2385
    :cond_7
    :goto_7
    return-void

    .line 2379
    :cond_8
    iget v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2380
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_7

    .line 2381
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->al:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 2383
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->aa()V

    goto :goto_7
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4687
    instance-of v0, p0, Lcom/anddoes/launcher/HolographicLinearLayout;

    if-eqz v0, :cond_a

    .line 4688
    check-cast p0, Lcom/anddoes/launcher/HolographicLinearLayout;

    .line 4689
    invoke-virtual {p0}, Lcom/anddoes/launcher/HolographicLinearLayout;->a()V

    .line 4694
    :cond_9
    :goto_9
    return-void

    .line 4690
    :cond_a
    instance-of v0, p1, Lcom/anddoes/launcher/HolographicImageView;

    if-eqz v0, :cond_9

    .line 4691
    check-cast p1, Lcom/anddoes/launcher/HolographicImageView;

    .line 4692
    invoke-virtual {p1}, Lcom/anddoes/launcher/HolographicImageView;->a()V

    goto :goto_9
.end method

.method private a(Lcom/anddoes/launcher/FolderIcon;)V
    .registers 13
    .parameter

    .prologue
    const/high16 v6, 0x3fc0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3681
    iget-object v2, p1, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    .line 3682
    iget-object v3, v2, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    .line 3684
    if-eqz p1, :cond_6e

    const-string v0, "alpha"

    new-array v1, v9, [F

    const/4 v4, 0x0

    aput v4, v1, v10

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v0, "scaleX"

    new-array v1, v9, [F

    aput v6, v1, v10

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v0, "scaleY"

    new-array v1, v9, [F

    aput v6, v1, v10

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/anddoes/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/dd;

    iget-wide v0, v0, Lcom/anddoes/launcher/dd;->j:J

    const-wide/16 v7, -0x65

    cmp-long v0, v0, v7

    if-nez v0, :cond_4e

    invoke-virtual {p1}, Lcom/anddoes/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/anddoes/launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    iget v7, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    iget v1, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    invoke-virtual {v0, v7, v1}, Lcom/anddoes/launcher/CellLayout;->b(II)V

    :cond_4e
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v0, v10

    aput-object v5, v0, v9

    const/4 v1, 0x2

    aput-object v6, v0, v1

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b001d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3685
    :cond_6e
    iput-boolean v9, v3, Lcom/anddoes/launcher/dd;->a:Z

    .line 3690
    invoke-virtual {v2}, Lcom/anddoes/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_84

    .line 3691
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 3692
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->C:Lcom/anddoes/launcher/bm;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/bm;->a(Lcom/anddoes/launcher/cb;)V

    .line 3698
    :goto_80
    invoke-virtual {v2}, Lcom/anddoes/launcher/Folder;->f()V

    .line 3699
    return-void

    .line 3694
    :cond_84
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Opening folder ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3695
    const-string v3, ") which already has a parent ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/anddoes/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3696
    const-string v3, ")."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3694
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method static synthetic a(Lcom/anddoes/launcher/Launcher;Landroid/app/Dialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/anddoes/launcher/Launcher;->aF:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/az;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/anddoes/launcher/Launcher;->au:Lcom/anddoes/launcher/az;

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/gk;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/Launcher;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/anddoes/launcher/Launcher;->Z:Z

    return-void
.end method

.method private a(Lcom/anddoes/launcher/az;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 3827
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ac()V

    .line 3829
    if-eqz p1, :cond_3c

    .line 3830
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, p1, Lcom/anddoes/launcher/az;->b:I

    iput v1, v0, Lcom/anddoes/launcher/ec;->l:I

    .line 3831
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, p1, Lcom/anddoes/launcher/az;->c:I

    iput v1, v0, Lcom/anddoes/launcher/ec;->m:I

    .line 3832
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput v4, v1, Lcom/anddoes/launcher/ec;->o:I

    iput v4, v0, Lcom/anddoes/launcher/ec;->n:I

    .line 3833
    iget-wide v0, p1, Lcom/anddoes/launcher/az;->g:J

    iget v2, p1, Lcom/anddoes/launcher/az;->f:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 3834
    if-eqz v0, :cond_3c

    .line 3835
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-object v1, v1, Lcom/anddoes/launcher/ec;->q:[I

    if-nez v1, :cond_3c

    .line 3836
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/anddoes/launcher/ec;->q:[I

    .line 3837
    iget v1, p1, Lcom/anddoes/launcher/az;->b:I

    iget v2, p1, Lcom/anddoes/launcher/az;->c:I

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-object v3, v3, Lcom/anddoes/launcher/ec;->q:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/anddoes/launcher/CellLayout;->a(II[I)V

    .line 3841
    :cond_3c
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    const-wide/16 v1, -0x64

    iput-wide v1, v0, Lcom/anddoes/launcher/ec;->j:J

    .line 3842
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v1

    iput v1, v0, Lcom/anddoes/launcher/ec;->k:I

    .line 3843
    iput-boolean v4, p0, Lcom/anddoes/launcher/Launcher;->U:Z

    .line 3844
    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/Launcher;->showDialog(I)V

    .line 3845
    return-void
.end method

.method static a(Lcom/anddoes/launcher/dd;)V
    .registers 4
    .parameter

    .prologue
    .line 3167
    sget-object v0, Lcom/anddoes/launcher/Launcher;->ae:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/anddoes/launcher/dd;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/gb;)V
    .registers 1
    .parameter

    .prologue
    .line 278
    sput-object p0, Lcom/anddoes/launcher/Launcher;->ad:Lcom/anddoes/launcher/gb;

    return-void
.end method

.method private a(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 2641
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ab()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2708
    :goto_b
    return v0

    .line 2645
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2647
    const v1, 0x7f060276

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2648
    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2649
    const/16 v2, 0x41

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2652
    const v1, 0x7f060278

    .line 2651
    invoke-interface {p1, v3, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2653
    const v2, 0x108003f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2654
    const/16 v2, 0x57

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2662
    const v1, 0x7f0600fe

    .line 2661
    invoke-interface {p1, v4, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2663
    const v2, 0x7f020062

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2664
    const/16 v2, 0x54

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2667
    const v1, 0x7f060277

    .line 2666
    invoke-interface {p1, v5, v5, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2668
    const v2, 0x1080042

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2669
    const/16 v2, 0x4d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2671
    const/16 v1, 0xf

    const/16 v2, 0xf

    .line 2672
    const v3, 0x7f06005a

    .line 2671
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2673
    const v2, 0x1080042

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2675
    const/4 v1, 0x6

    const/4 v2, 0x6

    const v3, 0x7f060279

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2676
    const v2, 0x1080060

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2677
    const/16 v2, 0x53

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2679
    const/4 v1, 0x7

    const/4 v2, 0x7

    .line 2680
    const v3, 0x7f06027a

    .line 2679
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2681
    const v2, 0x7f020047

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2682
    const/16 v2, 0x4e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2684
    const/16 v1, 0x9

    const/16 v2, 0x9

    .line 2685
    const v3, 0x7f060038

    .line 2684
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2686
    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2687
    const/16 v2, 0x43

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2689
    const/16 v1, 0x8

    const/16 v2, 0x8

    .line 2690
    const v3, 0x7f06027b

    .line 2689
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2691
    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2692
    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2694
    const/16 v1, 0xb

    const/16 v2, 0xb

    .line 2695
    const v3, 0x7f060039

    .line 2694
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2696
    const v2, 0x7f020045

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2697
    const/16 v2, 0x4c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2699
    const/16 v1, 0xc

    const/16 v2, 0xc

    .line 2700
    const v3, 0x7f06003a

    .line 2699
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2701
    const v2, 0x7f020049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2702
    const/16 v2, 0x55

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2704
    const/16 v1, 0xa

    const/16 v2, 0xa

    const v3, 0x7f06027c

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2705
    const v1, 0x1080040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2706
    const/16 v1, 0x48

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2708
    const/4 v0, 0x1

    goto/16 :goto_b
.end method

.method static synthetic a(Lcom/anddoes/launcher/Launcher;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2737
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->e(I)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/anddoes/launcher/ge;)Z
    .registers 20
    .parameter

    .prologue
    .line 1577
    const/4 v11, 0x0

    .line 1578
    move-object/from16 v0, p1

    iget v2, v0, Lcom/anddoes/launcher/ge;->a:I

    packed-switch v2, :pswitch_data_1ce

    :pswitch_8
    move v2, v11

    .line 1607
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/anddoes/launcher/Launcher;->ac()V

    .line 1617
    :goto_c
    return v2

    .line 1580
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/anddoes/launcher/ge;->b:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/anddoes/launcher/ge;->c:J

    move-object/from16 v0, p1

    iget v7, v0, Lcom/anddoes/launcher/ge;->d:I

    .line 1581
    move-object/from16 v0, p1

    iget v9, v0, Lcom/anddoes/launcher/ge;->e:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/anddoes/launcher/ge;->f:I

    .line 1580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Launcher;->J:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v4

    if-ltz v9, :cond_79

    if-ltz v10, :cond_79

    const/4 v8, 0x0

    aput v9, v3, v8

    const/4 v8, 0x1

    aput v10, v3, v8

    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v3, v8, v2, v0}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/anddoes/launcher/kj;

    move-result-object v3

    if-eqz v3, :cond_86

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, v3, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    iget-object v8, v3, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v3, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, v3, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    const/high16 v8, 0x1020

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    iput v2, v3, Lcom/anddoes/launcher/kj;->i:I

    const-wide/16 v12, -0x1

    iput-wide v12, v3, Lcom/anddoes/launcher/kj;->j:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-direct/range {p0 .. p0}, Lcom/anddoes/launcher/Launcher;->ab()Z

    move-result v8

    invoke-virtual/range {v2 .. v10}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/kj;Lcom/anddoes/launcher/CellLayout;JIZII)V

    move v2, v11

    goto :goto_9

    :cond_79
    const/4 v8, 0x1

    const/4 v12, 0x1

    invoke-virtual {v4, v3, v8, v12}, Lcom/anddoes/launcher/CellLayout;->a([III)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Launcher;->u()V

    move v2, v11

    goto :goto_9

    :cond_86
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t find ActivityInfo for selected application: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v11

    .line 1582
    goto/16 :goto_9

    .line 1584
    :pswitch_9d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/anddoes/launcher/ge;->b:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/anddoes/launcher/Launcher;->c(Landroid/content/Intent;)V

    .line 1585
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 1588
    :pswitch_a9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/anddoes/launcher/ge;->b:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/anddoes/launcher/ge;->c:J

    move-object/from16 v0, p1

    iget v0, v0, Lcom/anddoes/launcher/ge;->d:I

    move/from16 v16, v0

    .line 1589
    move-object/from16 v0, p1

    iget v8, v0, Lcom/anddoes/launcher/ge;->e:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/anddoes/launcher/ge;->f:I

    .line 1588
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anddoes/launcher/Launcher;->J:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-object v10, v3, Lcom/anddoes/launcher/ec;->q:[I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v2, v11}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/anddoes/launcher/kj;

    move-result-object v17

    if-eqz v17, :cond_112

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/kj;)Landroid/view/View;

    move-result-object v3

    if-ltz v8, :cond_115

    if-ltz v9, :cond_115

    const/4 v2, 0x0

    aput v8, v7, v2

    const/4 v2, 0x1

    aput v9, v7, v2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JLcom/anddoes/launcher/CellLayout;[IZLcom/anddoes/launcher/bx;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_112

    new-instance v2, Lcom/anddoes/launcher/cc;

    invoke-direct {v2}, Lcom/anddoes/launcher/cc;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v7, v2, v9}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/CellLayout;[ILcom/anddoes/launcher/cc;Z)Z

    move-result v2

    if-eqz v2, :cond_1ca

    .line 1590
    :cond_112
    :goto_112
    const/4 v2, 0x1

    .line 1591
    goto/16 :goto_9

    .line 1588
    :cond_115
    if-eqz v10, :cond_13d

    const/4 v2, 0x0

    aget v9, v10, v2

    const/4 v2, 0x1

    aget v10, v10, v2

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/anddoes/launcher/CellLayout;->a(IIII[I)[I

    move-result-object v6

    if-eqz v6, :cond_13b

    const/4 v2, 0x1

    :goto_128
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_134

    const/4 v8, 0x1

    aget v6, v6, v8

    const/4 v8, -0x1

    if-ne v6, v8, :cond_135

    :cond_134
    const/4 v2, 0x0

    :cond_135
    :goto_135
    if-nez v2, :cond_144

    invoke-virtual/range {p0 .. p0}, Lcom/anddoes/launcher/Launcher;->u()V

    goto :goto_112

    :cond_13b
    const/4 v2, 0x0

    goto :goto_128

    :cond_13d
    const/4 v2, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v2, v8}, Lcom/anddoes/launcher/CellLayout;->a([III)Z

    move-result v2

    goto :goto_135

    :cond_144
    const/4 v2, 0x0

    aget v13, v7, v2

    const/4 v2, 0x1

    aget v14, v7, v2

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, v17

    move-wide v10, v4

    move/from16 v12, v16

    invoke-static/range {v8 .. v15}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIIIZ)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/anddoes/launcher/Launcher;->T:Z

    if-nez v2, :cond_112

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v6, 0x0

    aget v12, v7, v6

    const/4 v6, 0x1

    aget v8, v7, v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/anddoes/launcher/Launcher;->ab()Z

    move-result v11

    move/from16 v6, v16

    move v7, v12

    invoke-virtual/range {v2 .. v11}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    goto :goto_112

    .line 1593
    :pswitch_172
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/anddoes/launcher/ge;->b:Landroid/content/Intent;

    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/anddoes/launcher/Launcher;->a(ILcom/anddoes/launcher/jo;Landroid/content/Intent;)V

    .line 1594
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 1596
    :pswitch_186
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/anddoes/launcher/ge;->b:Landroid/content/Intent;

    .line 1597
    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    .line 1596
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1598
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/anddoes/launcher/ge;->b:Landroid/content/Intent;

    const-string v4, "custom_widget"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1599
    const-string v4, "search_widget"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 1600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    invoke-virtual {v3, v2}, Lcom/anddoes/launcher/gk;->deleteAppWidgetId(I)V

    .line 1601
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/anddoes/launcher/ge;->c:J

    move-object/from16 v0, p1

    iget v4, v0, Lcom/anddoes/launcher/ge;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/anddoes/launcher/Launcher;->b(JI)V

    .line 1602
    const/4 v2, 0x1

    .line 1603
    goto/16 :goto_9

    .line 1605
    :cond_1ba
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/anddoes/launcher/ge;->c:J

    move-object/from16 v0, p1

    iget v5, v0, Lcom/anddoes/launcher/ge;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/anddoes/launcher/Launcher;->a(IJI)V

    .line 1606
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_1ca
    move v2, v11

    goto/16 :goto_135

    .line 1578
    nop

    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_186
        :pswitch_d
        :pswitch_9d
        :pswitch_a9
        :pswitch_172
    .end packed-switch
.end method

.method private a(Landroid/content/ComponentName;II)[I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2158
    invoke-static {p0, p1}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2165
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 2166
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    .line 2167
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2168
    const/4 v3, 0x0

    .line 2167
    invoke-static {v2, v1, v0, v3}, Lcom/anddoes/launcher/CellLayout;->a(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method private aa()V
    .registers 12

    .prologue
    const-wide/16 v3, 0x4e20

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2335
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aa:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->Z:Z

    if-eqz v0, :cond_2a

    .line 2336
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->al:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v1

    .line 2337
    :goto_15
    iget-boolean v5, p0, Lcom/anddoes/launcher/Launcher;->O:Z

    if-eq v0, v5, :cond_29

    .line 2338
    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->O:Z

    .line 2339
    if-eqz v0, :cond_2f

    .line 2340
    iget-wide v0, p0, Lcom/anddoes/launcher/Launcher;->ak:J

    const-wide/16 v5, -0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_2c

    move-wide v0, v3

    .line 2341
    :goto_26
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(J)V

    .line 2351
    :cond_29
    :goto_29
    return-void

    :cond_2a
    move v0, v2

    .line 2336
    goto :goto_15

    .line 2340
    :cond_2c
    iget-wide v0, p0, Lcom/anddoes/launcher/Launcher;->ak:J

    goto :goto_26

    .line 2343
    :cond_2f
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->al:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 2344
    const-wide/16 v5, 0x0

    .line 2345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/anddoes/launcher/Launcher;->aj:J

    sub-long/2addr v7, v9

    sub-long/2addr v3, v7

    .line 2344
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anddoes/launcher/Launcher;->ak:J

    .line 2347
    :cond_47
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2348
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_29
.end method

.method private ab()Z
    .registers 2

    .prologue
    .line 2832
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->R:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->U:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private ac()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 2836
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/anddoes/launcher/ec;->j:J

    .line 2837
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput v3, v0, Lcom/anddoes/launcher/ec;->k:I

    .line 2838
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput v3, v1, Lcom/anddoes/launcher/ec;->m:I

    iput v3, v0, Lcom/anddoes/launcher/ec;->l:I

    .line 2839
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput v3, v1, Lcom/anddoes/launcher/ec;->o:I

    iput v3, v0, Lcom/anddoes/launcher/ec;->n:I

    .line 2840
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anddoes/launcher/ec;->q:[I

    .line 2841
    return-void
.end method

.method private ad()V
    .registers 3

    .prologue
    .line 3171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 3172
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->k:Z

    if-nez v0, :cond_b

    .line 3191
    :goto_a
    return-void

    .line 3175
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3176
    const v1, 0x7f06024f

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 3190
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    goto :goto_a
.end method

.method private ae()I
    .registers 2

    .prologue
    .line 4591
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_12

    .line 4595
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 4593
    :pswitch_f
    const/4 v0, 0x1

    goto :goto_e

    .line 4591
    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_f
    .end packed-switch
.end method

.method private af()Z
    .registers 10

    .prologue
    const v8, 0x7f080052

    const/4 v2, 0x0

    const/16 v7, 0x8

    .line 4697
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4698
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4699
    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4700
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4701
    const v1, 0x7f080054

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4703
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 4704
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 4705
    if-eqz v1, :cond_73

    .line 4706
    const-string v1, "ICE_CREAM_SANDWICH"

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v5, v5, Lcom/anddoes/launcher/preference/f;->q:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4707
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ae()I

    move-result v5

    .line 4709
    if-nez v5, :cond_69

    .line 4710
    if-eqz v1, :cond_65

    const v1, 0x7f020031

    .line 4714
    :goto_4b
    sget-object v6, Lcom/anddoes/launcher/Launcher;->an:[Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-direct {p0, v8, v1}, Lcom/anddoes/launcher/Launcher;->a(II)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    aput-object v1, v6, v5

    .line 4716
    if-eqz v4, :cond_58

    .line 4717
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4718
    :cond_58
    if-eqz v3, :cond_5d

    .line 4719
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4720
    :cond_5d
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4721
    invoke-static {v3, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;Landroid/view/View;)V

    .line 4722
    const/4 v0, 0x1

    .line 4734
    :goto_64
    return v0

    .line 4710
    :cond_65
    const v1, 0x7f020032

    goto :goto_4b

    .line 4712
    :cond_69
    if-eqz v1, :cond_6f

    const v1, 0x7f020033

    goto :goto_4b

    :cond_6f
    const v1, 0x7f020034

    goto :goto_4b

    .line 4726
    :cond_73
    if-eqz v4, :cond_78

    .line 4727
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4728
    :cond_78
    if-eqz v3, :cond_7d

    .line 4729
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4730
    :cond_7d
    if-eqz v5, :cond_82

    .line 4731
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4732
    :cond_82
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4733
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    .line 4734
    goto :goto_64
.end method

.method private ag()V
    .registers 3

    .prologue
    .line 4789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4790
    const-string v1, "android.intent.category.APP_MARKET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4795
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 4794
    if-eqz v1, :cond_1a

    .line 4798
    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->af:Landroid/content/Intent;

    .line 4813
    :goto_19
    return-void

    .line 4805
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->af:Landroid/content/Intent;

    goto :goto_19
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1107
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1108
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2d

    .line 1111
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    invoke-virtual {v0, p1, v3}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1112
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    invoke-virtual {v0, p2, v3}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    :goto_18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1118
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1123
    :goto_2c
    return-object v2

    .line 1114
    :cond_2d
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0, p1, v3}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0, p2, v3}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1121
    :cond_3e
    const-class v0, Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2c
.end method

.method static synthetic b(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/DragLayer;
    .registers 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    return-object v0
.end method

.method private b(JI)V
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 2902
    invoke-static {}, Lcom/anddoes/launcher/ki;->a()Lcom/anddoes/launcher/ki;

    move-result-object v7

    .line 2905
    invoke-virtual/range {p0 .. p3}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 2907
    const/4 v1, 0x2

    new-array v4, v1, [I

    const/4 v1, 0x0

    iget v2, v7, Lcom/anddoes/launcher/ki;->n:I

    aput v2, v4, v1

    const/4 v1, 0x1

    iget v2, v7, Lcom/anddoes/launcher/ki;->o:I

    aput v2, v4, v1

    .line 2913
    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->J:[I

    .line 2914
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-object v2, v1, Lcom/anddoes/launcher/ec;->q:[I

    .line 2915
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->l:I

    if-ltz v1, :cond_4e

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->m:I

    if-ltz v1, :cond_4e

    .line 2918
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->n:I

    const/4 v3, 0x0

    aget v3, v4, v3

    if-lt v1, v3, :cond_4e

    .line 2919
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->o:I

    const/4 v3, 0x1

    aget v3, v4, v3

    if-lt v1, v3, :cond_4e

    .line 2920
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->l:I

    aput v1, v5, v0

    .line 2921
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->m:I

    aput v1, v5, v0

    .line 2922
    const/4 v0, 0x1

    .line 2936
    :cond_48
    :goto_48
    if-nez v0, :cond_7e

    .line 2937
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->u()V

    .line 2953
    :cond_4d
    :goto_4d
    return-void

    .line 2923
    :cond_4e
    if-eqz v2, :cond_73

    .line 2925
    const/4 v1, 0x0

    aget v1, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 2926
    const/4 v3, 0x0

    aget v3, v4, v3

    const/4 v6, 0x1

    aget v4, v4, v6

    .line 2925
    invoke-virtual/range {v0 .. v5}, Lcom/anddoes/launcher/CellLayout;->a(IIII[I)[I

    move-result-object v1

    .line 2927
    if-eqz v1, :cond_71

    const/4 v0, 0x1

    .line 2928
    :goto_63
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6f

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_48

    .line 2929
    :cond_6f
    const/4 v0, 0x0

    goto :goto_48

    .line 2927
    :cond_71
    const/4 v0, 0x0

    goto :goto_63

    .line 2933
    :cond_73
    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/anddoes/launcher/CellLayout;->a([III)Z

    move-result v0

    goto :goto_48

    .line 2942
    :cond_7e
    const/4 v0, 0x0

    aget v11, v5, v0

    const/4 v0, 0x1

    aget v12, v5, v0

    const/4 v13, 0x0

    move-object v6, p0

    move-wide v8, p1

    move/from16 v10, p3

    .line 2941
    invoke-static/range {v6 .. v13}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIIIZ)V

    .line 2944
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->T:Z

    if-nez v0, :cond_4d

    .line 2946
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->a:Landroid/view/LayoutInflater;

    iget v1, v7, Lcom/anddoes/launcher/ki;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2947
    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2949
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    .line 2950
    const/4 v2, 0x0

    aget v10, v5, v2

    const/4 v2, 0x1

    aget v6, v5, v2

    iget v11, v7, Lcom/anddoes/launcher/ki;->n:I

    iget v8, v7, Lcom/anddoes/launcher/ki;->o:I

    .line 2951
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ab()Z

    move-result v9

    move-wide v2, p1

    move/from16 v4, p3

    move v5, v10

    move v7, v11

    .line 2949
    invoke-virtual/range {v0 .. v9}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    goto :goto_4d
.end method

.method static synthetic b(Landroid/content/Context;Lcom/anddoes/launcher/gb;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1529
    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    const-string v2, "launcher.preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_40
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_2d

    :try_start_d
    iget-object v1, p1, Lcom/anddoes/launcher/gb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v1, p1, Lcom/anddoes/launcher/gb;->b:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p1, Lcom/anddoes/launcher/gb;->c:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_1f} :catch_52
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1f} :catch_50

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_49

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    move-object v0, v1

    :goto_25
    if-eqz v0, :cond_22

    :try_start_27
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_22

    :catch_2b
    move-exception v0

    goto :goto_22

    :catch_2d
    move-exception v0

    move-object v0, v1

    :goto_2f
    :try_start_2f
    const-string v1, "launcher.preferences"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_4b

    if-eqz v0, :cond_22

    :try_start_3a
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_22

    :catch_3e
    move-exception v0

    goto :goto_22

    :catchall_40
    move-exception v0

    :goto_41
    if-eqz v1, :cond_46

    :try_start_43
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    throw v0

    :catch_47
    move-exception v1

    goto :goto_46

    :catch_49
    move-exception v0

    goto :goto_22

    :catchall_4b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_41

    :catch_50
    move-exception v1

    goto :goto_2f

    :catch_52
    move-exception v1

    goto :goto_25
.end method

.method private b(Landroid/content/Intent;)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1286
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    if-eqz v0, :cond_4d

    .line 1287
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    instance-of v0, v0, Lcom/anddoes/launcher/dd;

    if-eqz v0, :cond_4d

    .line 1288
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    move-object v7, v0

    check-cast v7, Lcom/anddoes/launcher/dd;

    .line 1290
    sget-object v0, Lcom/anddoes/launcher/MultiPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1291
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v2}, Lcom/anddoes/launcher/LauncherApplication;->b()Lcom/anddoes/launcher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anddoes/launcher/LauncherModel;->a()Lcom/anddoes/launcher/h;

    move-result-object v2

    iget-object v2, v2, Lcom/anddoes/launcher/h;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 1293
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1294
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3f
    :goto_3f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1308
    :cond_45
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iput-object v11, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    .line 1309
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iput-object v11, v0, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    .line 1311
    :cond_4d
    return-void

    .line 1294
    :cond_4e
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 1295
    array-length v2, v8

    move v1, v4

    :goto_56
    if-ge v1, v2, :cond_3f

    aget-object v3, v8, v1

    .line 1296
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1297
    invoke-virtual {v0}, Lcom/anddoes/launcher/y;->a()Lcom/anddoes/launcher/kj;

    move-result-object v1

    .line 1298
    iput v10, v1, Lcom/anddoes/launcher/kj;->n:I

    .line 1299
    iput v10, v1, Lcom/anddoes/launcher/kj;->o:I

    .line 1300
    invoke-virtual {v7, v1}, Lcom/anddoes/launcher/dd;->a(Lcom/anddoes/launcher/ec;)V

    .line 1302
    iget-wide v2, v7, Lcom/anddoes/launcher/dd;->h:J

    iget v5, v1, Lcom/anddoes/launcher/kj;->l:I

    iget v6, v1, Lcom/anddoes/launcher/kj;->m:I

    move-object v0, p0

    .line 1301
    invoke-static/range {v0 .. v6}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIII)V

    goto :goto_3f

    .line 1295
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_56
.end method

.method private b(Landroid/view/Menu;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2712
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->az:Z

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v0, :cond_b0

    .line 2713
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v3, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v3, :cond_b0

    .line 2714
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2716
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->f()Lcom/anddoes/launcher/az;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->au:Lcom/anddoes/launcher/az;

    .line 2717
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->au:Lcom/anddoes/launcher/az;

    if-eqz v0, :cond_ad

    move v0, v1

    :goto_25
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2722
    :goto_28
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aA:Z

    if-eqz v0, :cond_b5

    .line 2723
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->k:Z

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v4, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v4, :cond_b5

    move v0, v1

    .line 2722
    :goto_42
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2725
    const/4 v0, 0x4

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->aB:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2726
    const/4 v0, 0x6

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->aC:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2727
    const/4 v0, 0x7

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->aD:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2728
    const/4 v0, 0x5

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->aE:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2729
    const/16 v3, 0xf

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aF:Z

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v4, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v4, :cond_b7

    move v0, v1

    :goto_74
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2730
    const/16 v0, 0x9

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->aG:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2731
    const/16 v0, 0x8

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->aH:Z

    invoke-interface {p1, v0, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2732
    const/16 v0, 0xb

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->aI:Z

    if-eqz v3, :cond_b9

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v3, :cond_b9

    :goto_97
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2733
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->b:Z

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2734
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aJ:Z

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2735
    return-void

    :cond_ad
    move v0, v2

    .line 2717
    goto/16 :goto_25

    .line 2719
    :cond_b0
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_28

    :cond_b5
    move v0, v2

    .line 2723
    goto :goto_42

    :cond_b7
    move v0, v2

    .line 2729
    goto :goto_74

    :cond_b9
    move v1, v2

    .line 2732
    goto :goto_97
.end method

.method private b(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3457
    if-eqz p1, :cond_5a

    .line 3458
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_f

    .line 3459
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    .line 3462
    :cond_f
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    .line 3463
    new-instance v0, Lcom/anddoes/launcher/gc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/gc;-><init>(Lcom/anddoes/launcher/Launcher;Z)V

    .line 3464
    invoke-virtual {v0}, Lcom/anddoes/launcher/gc;->getCount()I

    move-result v1

    if-lez v1, :cond_59

    .line 3465
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3466
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/anddoes/launcher/gd;

    invoke-direct {v2, p0, v0}, Lcom/anddoes/launcher/gd;-><init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/gc;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3467
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    const/high16 v1, 0x4370

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 3468
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 3469
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 3470
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 3471
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 3494
    :cond_59
    :goto_59
    return-void

    .line 3474
    :cond_5a
    new-instance v0, Lcom/anddoes/launcher/gc;

    invoke-direct {v0, p0, v3}, Lcom/anddoes/launcher/gc;-><init>(Lcom/anddoes/launcher/Launcher;Z)V

    .line 3475
    invoke-virtual {v0}, Lcom/anddoes/launcher/gc;->getCount()I

    move-result v1

    if-lez v1, :cond_59

    .line 3476
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3477
    new-instance v2, Lcom/anddoes/launcher/el;

    invoke-direct {v2, p0, v0}, Lcom/anddoes/launcher/el;-><init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/gc;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3485
    new-instance v0, Lcom/anddoes/launcher/em;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/em;-><init>(Lcom/anddoes/launcher/Launcher;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3490
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->aF:Landroid/app/Dialog;

    .line 3491
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aF:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_59
.end method

.method static synthetic b(Lcom/anddoes/launcher/Launcher;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/anddoes/launcher/Launcher;->U:Z

    return-void
.end method

.method private b(ZZ)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x3f80

    const/4 v6, 0x0

    .line 3931
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_11

    .line 3932
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3933
    iput-object v9, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    .line 3935
    :cond_11
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1c

    .line 3936
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3937
    iput-object v9, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    .line 3939
    :cond_1c
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3943
    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3945
    const v2, 0x7f0b000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 3947
    const v2, 0x7f0b000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v5, v2

    .line 3948
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 3950
    const v4, 0x7f0b0012

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 3952
    invoke-static {v2}, Lcom/anddoes/launcher/Launcher;->c(Landroid/view/View;)V

    .line 3955
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    sget-object v4, Lcom/anddoes/launcher/lv;->c:Lcom/anddoes/launcher/lv;

    invoke-virtual {v0, v4, p1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/lv;Z)V

    .line 3957
    if-eqz p1, :cond_16f

    .line 3958
    const-string v0, "FLY"

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v4, v4, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 3959
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1b4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3960
    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 3961
    new-instance v0, Lcom/anddoes/launcher/ly;

    invoke-direct {v0}, Lcom/anddoes/launcher/ly;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3962
    new-instance v0, Lcom/anddoes/launcher/ep;

    invoke-direct {v0, p0, v2, v5}, Lcom/anddoes/launcher/ep;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;F)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3969
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3970
    invoke-virtual {v2, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3971
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1bc

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3972
    int-to-long v8, v3

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3973
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3974
    new-instance v1, Lcom/anddoes/launcher/eq;

    invoke-direct {v1, p0, v2}, Lcom/anddoes/launcher/eq;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3980
    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3981
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3983
    new-instance v0, Lcom/anddoes/launcher/er;

    move-object v1, p0

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/er;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/Launcher;Landroid/animation/ValueAnimator;Z)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4027
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    .line 4028
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    int-to-long v3, v7

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 4031
    instance-of v0, v2, Lcom/anddoes/launcher/hz;

    if-eqz v0, :cond_1b0

    .line 4032
    check-cast v2, Lcom/anddoes/launcher/hz;

    .line 4033
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    invoke-interface {v2, v0, v6}, Lcom/anddoes/launcher/hz;->a(Landroid/animation/Animator;Z)Z

    move-result v0

    .line 4037
    :goto_cc
    if-nez v0, :cond_d3

    .line 4040
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4142
    :cond_d3
    :goto_d3
    return-void

    .line 4043
    :cond_d4
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 4044
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 4045
    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleX(F)V

    .line 4046
    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleY(F)V

    .line 4047
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 4048
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4049
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 4050
    const-string v0, "FADE"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 4051
    invoke-virtual {v2, v10}, Landroid/view/View;->setAlpha(F)V

    .line 4052
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    .line 4053
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4054
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/anddoes/launcher/es;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/es;-><init>(Lcom/anddoes/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 4075
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4105
    :cond_118
    :goto_118
    instance-of v0, v2, Lcom/anddoes/launcher/hz;

    if-eqz v0, :cond_d3

    move-object v0, v2

    .line 4106
    check-cast v0, Lcom/anddoes/launcher/hz;

    invoke-interface {v0, v9, v6}, Lcom/anddoes/launcher/hz;->a(Landroid/animation/Animator;Z)Z

    .line 4108
    check-cast v2, Lcom/anddoes/launcher/hz;

    invoke-interface {v2, v9, v6}, Lcom/anddoes/launcher/hz;->b(Landroid/animation/Animator;Z)V

    .line 4111
    if-nez p2, :cond_d3

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 4113
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v11}, Lcom/anddoes/launcher/Workspace;->d(Z)V

    .line 4114
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->H()V

    goto :goto_d3

    .line 4076
    :cond_138
    const-string v0, "SCALE"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 4077
    invoke-virtual {v2, v10}, Landroid/view/View;->setScaleX(F)V

    .line 4078
    invoke-virtual {v2, v10}, Landroid/view/View;->setScaleY(F)V

    .line 4079
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    .line 4080
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4081
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/anddoes/launcher/et;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/et;-><init>(Lcom/anddoes/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 4102
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_118

    .line 4119
    :cond_16f
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 4120
    invoke-virtual {v2, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 4121
    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleX(F)V

    .line 4122
    invoke-virtual {v2, v8}, Landroid/view/View;->setScaleY(F)V

    .line 4123
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 4124
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4125
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 4126
    instance-of v0, v2, Lcom/anddoes/launcher/hz;

    if-eqz v0, :cond_1a3

    move-object v0, v2

    .line 4127
    check-cast v0, Lcom/anddoes/launcher/hz;

    invoke-interface {v0, v9, v6}, Lcom/anddoes/launcher/hz;->a(Landroid/animation/Animator;Z)Z

    .line 4129
    check-cast v2, Lcom/anddoes/launcher/hz;

    invoke-interface {v2, v9, v6}, Lcom/anddoes/launcher/hz;->b(Landroid/animation/Animator;Z)V

    .line 4132
    if-nez p2, :cond_1a3

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_1a3

    .line 4134
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v11}, Lcom/anddoes/launcher/Workspace;->d(Z)V

    .line 4135
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->H()V

    .line 4138
    :cond_1a3
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->z:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_d3

    .line 4139
    invoke-virtual {p0, v6}, Lcom/anddoes/launcher/Launcher;->a(Z)V

    goto/16 :goto_d3

    :cond_1b0
    move v0, v6

    goto/16 :goto_cc

    .line 3959
    nop

    :array_1b4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 3971
    :array_1bc
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private c(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 3123
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3124
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3125
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3127
    if-eqz v0, :cond_4e

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3129
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3131
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3132
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3133
    const-string v0, "android.intent.extra.TITLE"

    const v2, 0x7f060269

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3134
    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    .line 3142
    :goto_4d
    return-void

    .line 3135
    :cond_4e
    if-eqz v1, :cond_66

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3137
    const-class v1, Lcom/anddoes/launcher/ActPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3138
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    goto :goto_4d

    .line 3140
    :cond_66
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    goto :goto_4d
.end method

.method private static c(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 3870
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 3871
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 3872
    return-void
.end method

.method static synthetic c(Lcom/anddoes/launcher/Launcher;)V
    .registers 1
    .parameter

    .prologue
    .line 2334
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->aa()V

    return-void
.end method

.method private c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 3237
    const-string v0, "SINGLE_SCREEN"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3239
    :try_start_c
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/Workspace;->f(Z)V

    .line 3240
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->n()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17

    .line 3244
    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method static synthetic d(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/ec;
    .registers 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    return-object v0
.end method

.method private static d(I)Lcom/anddoes/launcher/gf;
    .registers 5
    .parameter

    .prologue
    .line 1860
    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    .line 1861
    invoke-static {}, Lcom/anddoes/launcher/gf;->values()[Lcom/anddoes/launcher/gf;

    move-result-object v2

    .line 1862
    const/4 v0, 0x0

    :goto_7
    array-length v3, v2

    if-lt v0, v3, :cond_c

    move-object v0, v1

    .line 1868
    :goto_b
    return-object v0

    .line 1863
    :cond_c
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/anddoes/launcher/gf;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_17

    .line 1864
    aget-object v0, v2, v0

    goto :goto_b

    .line 1862
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private d(Z)V
    .registers 14
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4153
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_10

    .line 4154
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4155
    iput-object v5, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    .line 4157
    :cond_10
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1b

    .line 4158
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4159
    iput-object v5, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    .line 4161
    :cond_1b
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 4165
    const v0, 0x7f0b000c

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4167
    const v1, 0x7f0b000d

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v4, v1

    .line 4168
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 4170
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->r()V

    .line 4172
    invoke-static {v2}, Lcom/anddoes/launcher/Launcher;->c(Landroid/view/View;)V

    .line 4173
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v1, v1, Lcom/anddoes/launcher/preference/f;->z:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_43

    .line 4174
    invoke-virtual {p0, v9}, Lcom/anddoes/launcher/Launcher;->a(Z)V

    .line 4177
    :cond_43
    const-string v1, "NONE"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 4178
    invoke-direct {p0, v10}, Lcom/anddoes/launcher/Launcher;->f(Z)V

    .line 4182
    :goto_52
    if-eqz p1, :cond_169

    .line 4183
    const-string v1, "FLY"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 4184
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 4185
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v5

    .line 4187
    new-array v1, v11, [F

    fill-array-data v1, :array_18a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 4188
    int-to-long v7, v0

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 4189
    new-instance v0, Lcom/anddoes/launcher/lx;

    invoke-direct {v0}, Lcom/anddoes/launcher/lx;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4190
    new-instance v0, Lcom/anddoes/launcher/eu;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/eu;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;FFF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4196
    new-array v0, v11, [F

    fill-array-data v0, :array_192

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 4198
    const v0, 0x7f0b000f

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    .line 4197
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4199
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4200
    new-instance v0, Lcom/anddoes/launcher/ev;

    invoke-direct {v0, p0, v2}, Lcom/anddoes/launcher/ev;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4205
    instance-of v0, v2, Lcom/anddoes/launcher/hz;

    if-eqz v0, :cond_b5

    move-object v0, v2

    .line 4206
    check-cast v0, Lcom/anddoes/launcher/hz;

    invoke-interface {v0, v1, v9}, Lcom/anddoes/launcher/hz;->a(Landroid/animation/Animator;Z)Z

    .line 4209
    :cond_b5
    new-instance v0, Lcom/anddoes/launcher/ew;

    invoke-direct {v0, p0, v2, p0, v1}, Lcom/anddoes/launcher/ew;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/Launcher;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4224
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    .line 4225
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    new-array v2, v11, [Landroid/animation/Animator;

    aput-object v7, v2, v10

    aput-object v1, v2, v9

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4226
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4294
    :goto_d4
    return-void

    .line 4180
    :cond_d5
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->f(Z)V

    goto/16 :goto_52

    .line 4228
    :cond_da
    const-string v0, "FADE"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 4229
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    .line 4230
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4231
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/anddoes/launcher/ex;

    invoke-direct {v1, p0, v2}, Lcom/anddoes/launcher/ex;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 4245
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4274
    :goto_106
    instance-of v0, v2, Lcom/anddoes/launcher/hz;

    if-eqz v0, :cond_127

    move-object v0, v2

    .line 4275
    check-cast v0, Lcom/anddoes/launcher/hz;

    .line 4276
    new-array v1, v11, [F

    fill-array-data v1, :array_19a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 4275
    invoke-interface {v0, v1, v9}, Lcom/anddoes/launcher/hz;->a(Landroid/animation/Animator;Z)Z

    .line 4277
    check-cast v2, Lcom/anddoes/launcher/hz;

    .line 4278
    new-array v0, v11, [F

    fill-array-data v0, :array_1a2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4277
    invoke-interface {v2, v0, v9}, Lcom/anddoes/launcher/hz;->b(Landroid/animation/Animator;Z)V

    .line 4280
    :cond_127
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v10}, Lcom/anddoes/launcher/Workspace;->d(Z)V

    .line 4281
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v10}, Lcom/anddoes/launcher/Workspace;->setVisibility(I)V

    goto :goto_d4

    .line 4246
    :cond_132
    const-string v0, "SCALE"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 4254
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    .line 4255
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4256
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/anddoes/launcher/ey;

    invoke-direct {v1, p0, v2}, Lcom/anddoes/launcher/ey;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 4270
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->t:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_106

    .line 4272
    :cond_163
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_106

    .line 4284
    :cond_169
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4285
    instance-of v0, v2, Lcom/anddoes/launcher/hz;

    if-eqz v0, :cond_17d

    move-object v0, v2

    .line 4286
    check-cast v0, Lcom/anddoes/launcher/hz;

    invoke-interface {v0, v5, v9}, Lcom/anddoes/launcher/hz;->a(Landroid/animation/Animator;Z)Z

    .line 4288
    check-cast v2, Lcom/anddoes/launcher/hz;

    invoke-interface {v2, v5, v9}, Lcom/anddoes/launcher/hz;->b(Landroid/animation/Animator;Z)V

    .line 4291
    :cond_17d
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v10}, Lcom/anddoes/launcher/Workspace;->d(Z)V

    .line 4292
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v10}, Lcom/anddoes/launcher/Workspace;->setVisibility(I)V

    goto/16 :goto_d4

    .line 4187
    nop

    :array_18a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 4196
    :array_192
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 4276
    :array_19a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 4278
    :array_1a2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic e(Lcom/anddoes/launcher/Launcher;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->al:Ljava/util/HashMap;

    return-object v0
.end method

.method private e(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4370
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-eq v0, v1, :cond_8

    .line 4400
    :goto_7
    return-void

    .line 4373
    :cond_8
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->e()V

    .line 4374
    invoke-direct {p0, p1, v2}, Lcom/anddoes/launcher/Launcher;->b(ZZ)V

    .line 4375
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->requestFocus()Z

    .line 4377
    const-string v0, "NONE"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 4378
    invoke-direct {p0, v2}, Lcom/anddoes/launcher/Launcher;->g(Z)V

    .line 4382
    :goto_24
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->setVisibility(I)V

    .line 4383
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->H()V

    .line 4384
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->K()V

    .line 4387
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/SearchDropTargetBar;->b(Z)V

    .line 4390
    sget-object v0, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    .line 4393
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->Z:Z

    .line 4394
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->aa()V

    .line 4395
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 4398
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4399
    const/4 v1, 0x4

    .line 4398
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_7

    .line 4380
    :cond_51
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->g(Z)V

    goto :goto_24
.end method

.method private e(I)Z
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x1080

    const/4 v0, 0x1

    .line 2738
    packed-switch p1, :pswitch_data_88

    .line 2795
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0

    .line 2740
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 2741
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->au:Lcom/anddoes/launcher/az;

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/az;)V

    goto :goto_7

    .line 2744
    :pswitch_11
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ad()V

    goto :goto_7

    .line 2748
    :pswitch_15
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anddoes/launcher/TabConfigActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2749
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 2752
    :pswitch_20
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/anddoes/launcher/ThemeListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2753
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 2756
    :pswitch_2b
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->onSearchRequested()Z

    goto :goto_7

    .line 2759
    :pswitch_2f
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->R()V

    goto :goto_7

    .line 2762
    :pswitch_33
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2763
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2764
    const-string v2, "manage apps"

    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_7

    .line 2767
    :pswitch_43
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->U()V

    goto :goto_7

    .line 2770
    :pswitch_47
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->n()V

    goto :goto_7

    .line 2773
    :pswitch_4b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2774
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2775
    const-string v2, "settings"

    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_7

    .line 2778
    :pswitch_5d
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->V()V

    goto :goto_7

    .line 2781
    :pswitch_61
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->W()V

    goto :goto_7

    .line 2784
    :pswitch_65
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->af:Landroid/content/Intent;

    if-eqz v1, :cond_7

    .line 2785
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->af:Landroid/content/Intent;

    const-string v2, "play store"

    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_7

    .line 2789
    :pswitch_71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://blog.anddoes.com/apex-launcher-faq/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2790
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2792
    const-string v2, "help"

    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_7

    .line 2738
    nop

    :pswitch_data_88
    .packed-switch 0x2
        :pswitch_8
        :pswitch_11
        :pswitch_20
        :pswitch_33
        :pswitch_2b
        :pswitch_2f
        :pswitch_4b
        :pswitch_47
        :pswitch_71
        :pswitch_5d
        :pswitch_61
        :pswitch_65
        :pswitch_15
        :pswitch_43
    .end packed-switch
.end method

.method static synthetic f(Lcom/anddoes/launcher/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 2327
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(J)V

    return-void
.end method

.method private f(Z)V
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 4507
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->m:Z

    if-nez v0, :cond_2d

    .line 4508
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Hotseat;->setVisibility(I)V

    .line 4509
    if-eqz p1, :cond_2e

    .line 4510
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-static {}, Lcom/anddoes/launcher/SearchDropTargetBar;->b()I

    .line 4511
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4512
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4513
    new-instance v1, Lcom/anddoes/launcher/fc;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/fc;-><init>(Lcom/anddoes/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 4532
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4537
    :cond_2d
    :goto_2d
    return-void

    .line 4534
    :cond_2e
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Hotseat;->setAlpha(F)V

    goto :goto_2d
.end method

.method static synthetic g(Lcom/anddoes/launcher/Launcher;)Landroid/app/Dialog;
    .registers 2
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aF:Landroid/app/Dialog;

    return-object v0
.end method

.method private g(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4543
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aa:Z

    if-nez v0, :cond_28

    .line 4544
    if-eqz p1, :cond_29

    .line 4545
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-static {}, Lcom/anddoes/launcher/SearchDropTargetBar;->c()I

    .line 4546
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4547
    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4548
    new-instance v1, Lcom/anddoes/launcher/fd;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/fd;-><init>(Lcom/anddoes/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 4567
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4573
    :cond_28
    :goto_28
    return-void

    .line 4569
    :cond_29
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Hotseat;->setVisibility(I)V

    .line 4570
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Hotseat;->setAlpha(F)V

    goto :goto_28
.end method

.method static synthetic h(Lcom/anddoes/launcher/Launcher;)V
    .registers 6
    .parameter

    .prologue
    .line 1184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f06025f

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f06016a

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f02007d

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f02003b

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TITLE"

    const v3, 0x7f060268

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method private h(Z)Z
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f080054

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 4746
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4747
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4748
    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4752
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4753
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4754
    if-eqz p1, :cond_5c

    if-eqz v0, :cond_5c

    .line 4755
    const-string v0, "ICE_CREAM_SANDWICH"

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v5, v5, Lcom/anddoes/launcher/preference/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4756
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ae()I

    move-result v5

    .line 4757
    sget-object v6, Lcom/anddoes/launcher/Launcher;->ao:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 4759
    if-eqz v0, :cond_58

    const v0, 0x7f020035

    .line 4757
    :goto_40
    invoke-direct {p0, v7, v0}, Lcom/anddoes/launcher/Launcher;->a(II)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    aput-object v0, v6, v5

    .line 4760
    if-eqz v2, :cond_4b

    .line 4761
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4762
    :cond_4b
    if-eqz v3, :cond_50

    .line 4763
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4764
    :cond_50
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4765
    invoke-static {v3, v4}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;Landroid/view/View;)V

    .line 4766
    const/4 v0, 0x1

    .line 4773
    :goto_57
    return v0

    .line 4759
    :cond_58
    const v0, 0x7f020036

    goto :goto_40

    .line 4768
    :cond_5c
    if-eqz v2, :cond_61

    .line 4769
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4770
    :cond_61
    if-eqz v3, :cond_66

    .line 4771
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4772
    :cond_66
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 4773
    goto :goto_57
.end method

.method static synthetic i(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/gk;
    .registers 2
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    return-object v0
.end method

.method static synthetic j(Lcom/anddoes/launcher/Launcher;)V
    .registers 1
    .parameter

    .prologue
    .line 3170
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ad()V

    return-void
.end method

.method static synthetic k(Lcom/anddoes/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    invoke-virtual {v0}, Lcom/anddoes/launcher/gk;->startListening()V

    :cond_9
    return-void
.end method

.method static synthetic l(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/gf;
    .registers 2
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    return-object v0
.end method

.method static synthetic m(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/az;
    .registers 2
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->au:Lcom/anddoes/launcher/az;

    return-object v0
.end method

.method static synthetic n(Lcom/anddoes/launcher/Launcher;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->af:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic o(Lcom/anddoes/launcher/Launcher;)Landroid/widget/ListPopupWindow;
    .registers 2
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic p(Lcom/anddoes/launcher/Launcher;)V
    .registers 1
    .parameter

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->Y()V

    return-void
.end method

.method static synthetic q(Lcom/anddoes/launcher/Launcher;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->ar:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic r(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/SearchDropTargetBar;
    .registers 2
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    return-object v0
.end method

.method static s()I
    .registers 2

    .prologue
    .line 1560
    sget-object v1, Lcom/anddoes/launcher/Launcher;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 1561
    :try_start_3
    sget v0, Lcom/anddoes/launcher/Launcher;->v:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    .line 1560
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic s(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/Hotseat;
    .registers 2
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/anddoes/launcher/Hotseat;
    .registers 2

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    return-object v0
.end method

.method final B()Lcom/anddoes/launcher/SearchDropTargetBar;
    .registers 2

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    return-object v0
.end method

.method public final C()Lcom/anddoes/launcher/Workspace;
    .registers 2

    .prologue
    .line 3809
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    return-object v0
.end method

.method protected final D()Lcom/anddoes/launcher/ds;
    .registers 2

    .prologue
    .line 3813
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Y:Lcom/anddoes/launcher/ds;

    return-object v0
.end method

.method public final E()Z
    .registers 3

    .prologue
    .line 3849
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final F()V
    .registers 3

    .prologue
    .line 4403
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_18

    .line 4404
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    sget-object v1, Lcom/anddoes/launcher/lv;->b:Lcom/anddoes/launcher/lv;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/lv;)V

    .line 4405
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->d(Z)V

    .line 4406
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->H()V

    .line 4407
    sget-object v0, Lcom/anddoes/launcher/gf;->c:Lcom/anddoes/launcher/gf;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    .line 4409
    :cond_18
    return-void
.end method

.method final G()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4436
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->c:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_18

    .line 4437
    invoke-direct {p0, v2}, Lcom/anddoes/launcher/Launcher;->g(Z)V

    .line 4440
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->setVisibility(I)V

    .line 4441
    invoke-direct {p0, v2, v2}, Lcom/anddoes/launcher/Launcher;->b(ZZ)V

    .line 4442
    sget-object v0, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    .line 4445
    :cond_18
    return-void
.end method

.method final H()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 4448
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->z:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 4449
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4451
    :cond_a
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 4452
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4453
    :cond_13
    return-void
.end method

.method public final I()Z
    .registers 3

    .prologue
    .line 4500
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final J()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 4979
    iget-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->S:Z

    if-eqz v1, :cond_f

    .line 4980
    const-string v1, "Launcher"

    const-string v2, "setLoadOnResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4981
    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->V:Z

    .line 4984
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final K()I
    .registers 2

    .prologue
    .line 4992
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    if-eqz v0, :cond_b

    .line 4993
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v0

    .line 4995
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x2

    goto :goto_a
.end method

.method public final L()V
    .registers 5

    .prologue
    .line 5005
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    .line 5007
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->P()V

    .line 5008
    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v3

    .line 5009
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-lt v1, v3, :cond_1e

    .line 5016
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->al:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5017
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_1d

    .line 5018
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->d()V

    .line 5020
    :cond_1d
    return-void

    .line 5013
    :cond_1e
    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5012
    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 5014
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->removeAllViewsInLayout()V

    .line 5009
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d
.end method

.method public final M()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 5127
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->J()Z

    .line 5130
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->P:Landroid/os/Bundle;

    if-eqz v1, :cond_22

    .line 5131
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_20

    .line 5132
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 5134
    :cond_20
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->P:Landroid/os/Bundle;

    .line 5137
    :cond_22
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->W:Landroid/os/Bundle;

    if-eqz v1, :cond_2d

    .line 5139
    :try_start_26
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->W:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_57

    .line 5142
    :goto_2b
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->W:Landroid/os/Bundle;

    .line 5145
    :cond_2d
    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->R:Z

    move v1, v0

    .line 5150
    :goto_30
    sget-object v0, Lcom/anddoes/launcher/Launcher;->as:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_48

    .line 5153
    sget-object v0, Lcom/anddoes/launcher/Launcher;->as:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5158
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ag()V

    .line 5160
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->ar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 5162
    return-void

    .line 5151
    :cond_48
    sget-object v0, Lcom/anddoes/launcher/Launcher;->as:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ge;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/ge;)Z

    .line 5150
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_30

    :catch_57
    move-exception v1

    goto :goto_2b
.end method

.method public final N()V
    .registers 4

    .prologue
    .line 5167
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->af()Z

    move-result v0

    .line 5168
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->h(Z)Z

    move-result v1

    .line 5169
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v2, v0, v1}, Lcom/anddoes/launcher/SearchDropTargetBar;->a(ZZ)V

    .line 5171
    return-void
.end method

.method public final O()V
    .registers 2

    .prologue
    .line 5267
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v0, :cond_9

    .line 5268
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e()V

    .line 5270
    :cond_9
    return-void
.end method

.method public final P()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 5306
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 5307
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5308
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 5307
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_48

    move v0, v2

    :goto_23
    :pswitch_23
    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v1, v5, v3

    const/16 v6, 0x9

    aput v6, v5, v2

    const/4 v6, 0x3

    const/16 v7, 0x8

    aput v7, v5, v6

    if-ne v0, v2, :cond_46

    :goto_33
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v0

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    aget v0, v5, v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->setRequestedOrientation(I)V

    .line 5310
    :cond_3f
    return-void

    .line 5307
    :pswitch_40
    if-ne v0, v2, :cond_44

    move v0, v1

    goto :goto_23

    :cond_44
    move v0, v2

    goto :goto_23

    :cond_46
    move v1, v3

    goto :goto_33

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_23
        :pswitch_40
        :pswitch_23
        :pswitch_40
    .end packed-switch
.end method

.method public final Q()V
    .registers 5

    .prologue
    .line 5313
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5314
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    new-instance v1, Lcom/anddoes/launcher/ff;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/ff;-><init>(Lcom/anddoes/launcher/Launcher;)V

    .line 5318
    const-wide/16 v2, 0x1f4

    .line 5314
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5320
    :cond_12
    return-void
.end method

.method final a(Landroid/view/ViewGroup;Lcom/anddoes/launcher/kj;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->a:Landroid/view/LayoutInflater;

    .line 2047
    const v1, 0x7f030007

    const/4 v2, 0x0

    .line 2046
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/BubbleTextView;

    .line 2048
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->Y:Lcom/anddoes/launcher/ds;

    iget-wide v2, p2, Lcom/anddoes/launcher/kj;->j:J

    invoke-static {p0, v2, v3}, Lcom/anddoes/launcher/ia;->a(Lcom/anddoes/launcher/Launcher;J)Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/anddoes/launcher/BubbleTextView;->a(Lcom/anddoes/launcher/kj;Lcom/anddoes/launcher/ds;Z)V

    .line 2049
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2050
    return-object v0
.end method

.method final a(JI)Lcom/anddoes/launcher/CellLayout;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3797
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_13

    .line 3798
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_11

    .line 3799
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0, p3}, Lcom/anddoes/launcher/Hotseat;->f(I)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 3804
    :goto_10
    return-object v0

    .line 3801
    :cond_11
    const/4 v0, 0x0

    goto :goto_10

    .line 3804
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, p3}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    goto :goto_10
.end method

.method final a(Lcom/anddoes/launcher/CellLayout;JIII)Lcom/anddoes/launcher/FolderIcon;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3150
    new-instance v1, Lcom/anddoes/launcher/dd;

    invoke-direct {v1}, Lcom/anddoes/launcher/dd;-><init>()V

    .line 3151
    const v0, 0x7f06024e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    .line 3155
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 3154
    invoke-static/range {v0 .. v7}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;JIIIZ)V

    .line 3156
    sget-object v0, Lcom/anddoes/launcher/Launcher;->ae:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/anddoes/launcher/dd;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3160
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Y:Lcom/anddoes/launcher/ds;

    .line 3159
    invoke-static {p0, p1, v1}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/Launcher;Landroid/view/ViewGroup;Lcom/anddoes/launcher/dd;)Lcom/anddoes/launcher/FolderIcon;

    move-result-object v1

    .line 3161
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v7, 0x1

    .line 3162
    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ab()Z

    move-result v9

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 3161
    invoke-virtual/range {v0 .. v9}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    .line 3163
    return-object v1
.end method

.method public final a(ILjava/lang/String;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1241
    if-nez p3, :cond_a

    .line 1242
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-object v1, v1, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/anddoes/launcher/LauncherApplication;->i:Ljava/util/ArrayList;

    .line 1244
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1245
    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->a:Ljava/lang/String;

    const v2, 0x7f060044

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1248
    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v2, p2}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v2, p2}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1251
    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    .line 1252
    return-void
.end method

.method public final a(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1210
    if-nez p2, :cond_a

    .line 1211
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-object v1, v1, Lcom/anddoes/launcher/AppsCustomizePagedView;->b:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/anddoes/launcher/LauncherApplication;->i:Ljava/util/ArrayList;

    .line 1213
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1214
    sget-object v2, Lcom/anddoes/launcher/GroupConfigActivity;->a:Ljava/lang/String;

    if-eqz p2, :cond_3c

    const v0, 0x7f060042

    :goto_18
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1218
    const/16 v0, 0x15

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    .line 1219
    return-void

    .line 1214
    :cond_3c
    const v0, 0x7f060043

    goto :goto_18
.end method

.method final a(JI[I)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3101
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ac()V

    .line 3102
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput-wide p1, v0, Lcom/anddoes/launcher/ec;->j:J

    .line 3103
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput p3, v0, Lcom/anddoes/launcher/ec;->k:I

    .line 3104
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anddoes/launcher/ec;->q:[I

    .line 3105
    if-eqz p4, :cond_3c

    .line 3106
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    aget v1, p4, v4

    iput v1, v0, Lcom/anddoes/launcher/ec;->l:I

    .line 3107
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    aget v1, p4, v5

    iput v1, v0, Lcom/anddoes/launcher/ec;->m:I

    .line 3108
    invoke-virtual {p0, p1, p2, p3}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 3109
    if-eqz v0, :cond_3c

    .line 3110
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v2

    aget v3, p4, v4

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/anddoes/launcher/ec;->n:I

    .line 3111
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v0

    aget v2, p4, v5

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/anddoes/launcher/ec;->o:I

    .line 3115
    :cond_3c
    invoke-direct {p0, p1, p2, p3}, Lcom/anddoes/launcher/Launcher;->b(JI)V

    .line 3117
    invoke-virtual {p0, v5, v4}, Lcom/anddoes/launcher/Launcher;->a(ZZ)V

    .line 3118
    return-void
.end method

.method final a(Landroid/content/ComponentName;)V
    .registers 7
    .parameter

    .prologue
    .line 3497
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3498
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 3499
    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3498
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3500
    const/high16 v0, 0x1080

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3502
    const-string v0, "app info"

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 3503
    return-void
.end method

.method final a(Landroid/content/ComponentName;JI[I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2969
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ac()V

    .line 2970
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput-wide p2, v0, Lcom/anddoes/launcher/ec;->j:J

    .line 2971
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput p4, v0, Lcom/anddoes/launcher/ec;->k:I

    .line 2972
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anddoes/launcher/ec;->q:[I

    .line 2974
    if-eqz p5, :cond_3c

    .line 2975
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    aget v1, p5, v3

    iput v1, v0, Lcom/anddoes/launcher/ec;->l:I

    .line 2976
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    aget v1, p5, v4

    iput v1, v0, Lcom/anddoes/launcher/ec;->m:I

    .line 2977
    invoke-virtual {p0, p2, p3, p4}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    .line 2978
    if-eqz v0, :cond_3c

    .line 2979
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v2

    aget v3, p5, v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/anddoes/launcher/ec;->n:I

    .line 2980
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v0

    aget v2, p5, v4

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/anddoes/launcher/ec;->o:I

    .line 2984
    :cond_3c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2985
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2986
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->c(Landroid/content/Intent;)V

    .line 2987
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 3360
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    new-instance v1, Lcom/anddoes/launcher/ek;

    invoke-direct {v1, p0, p1}, Lcom/anddoes/launcher/ek;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/content/Intent;)V

    .line 3364
    const-wide/16 v2, 0x3e8

    .line 3360
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3366
    :cond_12
    return-void
.end method

.method final a(Landroid/content/Intent;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3556
    if-nez p1, :cond_4

    .line 3576
    :goto_3
    return-void

    .line 3560
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/anddoes/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_3a

    goto :goto_3

    .line 3562
    :catch_8
    move-exception v0

    const v0, 0x7f060252

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3563
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 3564
    :catch_14
    move-exception v0

    .line 3565
    const v1, 0x7f06016c

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 3566
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3567
    const-string v1, "Launcher"

    .line 3568
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launcher does not have the permission to launch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3570
    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3567
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3573
    :catch_3a
    move-exception v0

    .line 3574
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to launch. intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method final a(Landroid/view/View;Lcom/anddoes/launcher/ec;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 5440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5441
    const-class v1, Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5442
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iput-object p2, v1, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    .line 5443
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iput-object p1, v1, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    .line 5444
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    .line 5445
    return-void
.end method

.method final a(Lcom/anddoes/launcher/Folder;Z)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3716
    invoke-virtual {p1}, Lcom/anddoes/launcher/Folder;->e()Lcom/anddoes/launcher/dd;

    move-result-object v0

    iput-boolean v10, v0, Lcom/anddoes/launcher/dd;->a:Z

    .line 3718
    invoke-virtual {p1}, Lcom/anddoes/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3719
    if-eqz v0, :cond_81

    .line 3720
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p1, Lcom/anddoes/launcher/Folder;->c:Lcom/anddoes/launcher/dd;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->b(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    .line 3721
    if-eqz v0, :cond_81

    const-string v1, "alpha"

    new-array v2, v11, [F

    aput v5, v2, v10

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v1, "scaleX"

    new-array v2, v11, [F

    aput v5, v2, v10

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v1, "scaleY"

    new-array v2, v11, [F

    aput v5, v2, v10

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/dd;

    const/4 v2, 0x0

    iget-wide v6, v1, Lcom/anddoes/launcher/dd;->j:J

    const-wide/16 v8, -0x65

    cmp-long v1, v6, v8

    if-nez v1, :cond_85

    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CellLayout;

    :goto_59
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v10

    aput-object v4, v2, v11

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/anddoes/launcher/en;

    invoke-direct {v2, p0, v1}, Lcom/anddoes/launcher/en;-><init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/CellLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3723
    :cond_81
    invoke-virtual {p1, p2}, Lcom/anddoes/launcher/Folder;->a(Z)V

    .line 3724
    return-void

    :cond_85
    move-object v1, v2

    goto :goto_59
.end method

.method public final a(Lcom/anddoes/launcher/ec;)V
    .registers 5
    .parameter

    .prologue
    .line 5353
    instance-of v0, p1, Lcom/anddoes/launcher/dd;

    if-eqz v0, :cond_d

    .line 5354
    check-cast p1, Lcom/anddoes/launcher/dd;

    .line 5355
    invoke-static {p1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/dd;)V

    .line 5356
    invoke-static {p0, p1}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/dd;)V

    .line 5376
    :cond_c
    :goto_c
    return-void

    .line 5357
    :cond_d
    instance-of v0, p1, Lcom/anddoes/launcher/gn;

    if-eqz v0, :cond_2b

    move-object v0, p1

    .line 5358
    check-cast v0, Lcom/anddoes/launcher/gn;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/gn;)V

    .line 5359
    invoke-static {p0, p1}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    .line 5361
    check-cast p1, Lcom/anddoes/launcher/gn;

    .line 5362
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    .line 5363
    if-eqz v0, :cond_c

    .line 5366
    new-instance v1, Lcom/anddoes/launcher/fg;

    const-string v2, "deleteAppWidgetId"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/anddoes/launcher/fg;-><init>(Lcom/anddoes/launcher/Launcher;Ljava/lang/String;Lcom/anddoes/launcher/gk;Lcom/anddoes/launcher/gn;)V

    .line 5370
    invoke-virtual {v1}, Lcom/anddoes/launcher/fg;->start()V

    goto :goto_c

    .line 5373
    :cond_2b
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    iget-wide v1, p1, Lcom/anddoes/launcher/ec;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->c(J)V

    .line 5374
    invoke-static {p0, p1}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    goto :goto_c
.end method

.method public final a(Lcom/anddoes/launcher/ec;Landroid/view/View;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const v8, 0x7f06001e

    const v7, 0x108003a

    const-wide/16 v9, -0x65

    .line 5448
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    if-eqz v0, :cond_d

    .line 5633
    :cond_c
    :goto_c
    return-void

    .line 5452
    :cond_d
    new-instance v5, Lcom/anddoes/launcher/ui/f;

    invoke-direct {v5, p2}, Lcom/anddoes/launcher/ui/f;-><init>(Landroid/view/View;)V

    .line 5453
    iput-object v5, p0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    .line 5455
    new-instance v0, Lcom/anddoes/launcher/fh;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/fh;-><init>(Lcom/anddoes/launcher/Launcher;)V

    invoke-virtual {v5, v0}, Lcom/anddoes/launcher/ui/f;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5462
    iget-wide v0, p1, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 5463
    new-instance v0, Lcom/anddoes/launcher/ui/a;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5464
    const v2, 0x1080038

    .line 5463
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5465
    const v2, 0x7f06026e

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5466
    new-instance v3, Lcom/anddoes/launcher/fi;

    invoke-direct {v3, p0, p2, p1, v5}, Lcom/anddoes/launcher/fi;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/ui/f;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/anddoes/launcher/ui/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 5463
    invoke-virtual {v5, v0}, Lcom/anddoes/launcher/ui/f;->a(Lcom/anddoes/launcher/ui/a;)V

    .line 5499
    instance-of v0, p1, Lcom/anddoes/launcher/kj;

    if-nez v0, :cond_4b

    instance-of v0, p1, Lcom/anddoes/launcher/dd;

    if-eqz v0, :cond_11c

    .line 5500
    :cond_4b
    new-instance v0, Lcom/anddoes/launcher/ui/a;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5501
    const v2, 0x108003e

    .line 5500
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5502
    const v2, 0x7f06001d

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/anddoes/launcher/fj;

    invoke-direct {v3, p0, p2, p1, v5}, Lcom/anddoes/launcher/fj;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/ui/f;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/anddoes/launcher/ui/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 5500
    invoke-virtual {v5, v0}, Lcom/anddoes/launcher/ui/f;->a(Lcom/anddoes/launcher/ui/a;)V

    .line 5548
    :cond_6a
    :goto_6a
    instance-of v0, p1, Lcom/anddoes/launcher/kj;

    if-eqz v0, :cond_99

    .line 5549
    iget-wide v0, p1, Lcom/anddoes/launcher/ec;->j:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_99

    .line 5550
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->p()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 5551
    new-instance v0, Lcom/anddoes/launcher/ui/a;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5552
    const v2, 0x1080055

    .line 5551
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5553
    const v2, 0x7f0600f0

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/anddoes/launcher/fn;

    invoke-direct {v3, p0, p1, v5}, Lcom/anddoes/launcher/fn;-><init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/ui/f;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/anddoes/launcher/ui/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 5551
    invoke-virtual {v5, v0}, Lcom/anddoes/launcher/ui/f;->a(Lcom/anddoes/launcher/ui/a;)V

    .line 5565
    :cond_99
    instance-of v0, p1, Lcom/anddoes/launcher/dd;

    if-eqz v0, :cond_c2

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->p()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 5566
    new-instance v0, Lcom/anddoes/launcher/ui/a;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5567
    const v2, 0x1080033

    .line 5566
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5568
    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/anddoes/launcher/fo;

    invoke-direct {v3, p0, v5, p1, p2}, Lcom/anddoes/launcher/fo;-><init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/ui/f;Lcom/anddoes/launcher/ec;Landroid/view/View;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/anddoes/launcher/ui/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 5566
    invoke-virtual {v5, v0}, Lcom/anddoes/launcher/ui/f;->a(Lcom/anddoes/launcher/ui/a;)V

    .line 5581
    :cond_c2
    instance-of v0, p1, Lcom/anddoes/launcher/kj;

    if-nez v0, :cond_ca

    instance-of v0, p1, Lcom/anddoes/launcher/gn;

    if-eqz v0, :cond_117

    .line 5582
    :cond_ca
    const/4 v0, 0x0

    .line 5583
    instance-of v1, p1, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_184

    .line 5584
    check-cast p1, Lcom/anddoes/launcher/kj;

    .line 5585
    iget-object v0, p1, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 5593
    :cond_d7
    :goto_d7
    if-eqz v0, :cond_117

    .line 5595
    new-instance v1, Lcom/anddoes/launcher/ui/a;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5596
    const v3, 0x1080041

    .line 5595
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5597
    const v3, 0x7f060270

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5598
    new-instance v4, Lcom/anddoes/launcher/fp;

    invoke-direct {v4, p0, p2, v0, v5}, Lcom/anddoes/launcher/fp;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Landroid/content/ComponentName;Lcom/anddoes/launcher/ui/f;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/anddoes/launcher/ui/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 5595
    invoke-virtual {v5, v1}, Lcom/anddoes/launcher/ui/f;->a(Lcom/anddoes/launcher/ui/a;)V

    .line 5606
    new-instance v1, Lcom/anddoes/launcher/ui/a;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5607
    const v3, 0x1080052

    .line 5606
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5608
    const v3, 0x7f06001f

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5609
    new-instance v4, Lcom/anddoes/launcher/fq;

    invoke-direct {v4, p0, p2, v0, v5}, Lcom/anddoes/launcher/fq;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Landroid/content/ComponentName;Lcom/anddoes/launcher/ui/f;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/anddoes/launcher/ui/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 5606
    invoke-virtual {v5, v1}, Lcom/anddoes/launcher/ui/f;->a(Lcom/anddoes/launcher/ui/a;)V

    .line 5631
    :cond_117
    invoke-virtual {v5}, Lcom/anddoes/launcher/ui/f;->c()V

    goto/16 :goto_c

    .line 5511
    :cond_11c
    instance-of v0, p1, Lcom/anddoes/launcher/gn;

    if-eqz v0, :cond_159

    move-object v4, p2

    .line 5512
    check-cast v4, Lcom/anddoes/launcher/gl;

    .line 5513
    if-eqz v4, :cond_6a

    iget-wide v0, p1, Lcom/anddoes/launcher/ec;->j:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_6a

    .line 5514
    invoke-virtual {v4}, Lcom/anddoes/launcher/gl;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 5515
    if-eqz v0, :cond_135

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-nez v0, :cond_13b

    .line 5516
    :cond_135
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aQ:Z

    if-eqz v0, :cond_6a

    .line 5517
    :cond_13b
    new-instance v6, Lcom/anddoes/launcher/ui/a;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 5519
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/anddoes/launcher/fk;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/fk;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/gl;Lcom/anddoes/launcher/ui/f;)V

    invoke-direct {v6, v7, v8, v0}, Lcom/anddoes/launcher/ui/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 5517
    invoke-virtual {v5, v6}, Lcom/anddoes/launcher/ui/f;->a(Lcom/anddoes/launcher/ui/a;)V

    goto/16 :goto_6a

    .line 5531
    :cond_159
    instance-of v0, p1, Lcom/anddoes/launcher/ki;

    if-eqz v0, :cond_6a

    .line 5532
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aQ:Z

    if-eqz v0, :cond_6a

    iget-wide v0, p1, Lcom/anddoes/launcher/ec;->j:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_6a

    .line 5533
    new-instance v0, Lcom/anddoes/launcher/ui/a;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5535
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/anddoes/launcher/fm;

    invoke-direct {v3, p0, p2, p1, v5}, Lcom/anddoes/launcher/fm;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/view/View;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/ui/f;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/anddoes/launcher/ui/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 5533
    invoke-virtual {v5, v0}, Lcom/anddoes/launcher/ui/f;->a(Lcom/anddoes/launcher/ui/a;)V

    goto/16 :goto_6a

    .line 5587
    :cond_184
    check-cast p1, Lcom/anddoes/launcher/gn;

    .line 5588
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget v2, p1, Lcom/anddoes/launcher/gn;->a:I

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 5589
    if-eqz v1, :cond_d7

    .line 5590
    iget-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    goto/16 :goto_d7
.end method

.method public final a(Lcom/anddoes/launcher/gn;)V
    .registers 4
    .parameter

    .prologue
    .line 2395
    iget-object v0, p1, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->al:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->al:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->aa()V

    .line 2396
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    .line 2397
    return-void
.end method

.method final a(Lcom/anddoes/launcher/jo;JI[I[I)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3003
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ac()V

    .line 3004
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput-wide p2, p1, Lcom/anddoes/launcher/jo;->j:J

    iput-wide p2, v2, Lcom/anddoes/launcher/ec;->j:J

    .line 3005
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput p4, p1, Lcom/anddoes/launcher/jo;->k:I

    iput p4, v2, Lcom/anddoes/launcher/ec;->k:I

    .line 3006
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput-object p6, v2, Lcom/anddoes/launcher/ec;->q:[I

    .line 3008
    if-eqz p5, :cond_3f

    .line 3009
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    aget v3, p5, v0

    iput v3, v2, Lcom/anddoes/launcher/ec;->l:I

    .line 3010
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    aget v3, p5, v1

    iput v3, v2, Lcom/anddoes/launcher/ec;->m:I

    .line 3011
    invoke-virtual {p0, p2, p3, p4}, Lcom/anddoes/launcher/Launcher;->a(JI)Lcom/anddoes/launcher/CellLayout;

    move-result-object v2

    .line 3012
    if-eqz v2, :cond_3f

    .line 3013
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v4

    aget v5, p5, v0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/anddoes/launcher/ec;->n:I

    .line 3014
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    invoke-virtual {v2}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v2

    aget v4, p5, v1

    sub-int/2addr v2, v4

    iput v2, v3, Lcom/anddoes/launcher/ec;->o:I

    .line 3018
    :cond_3f
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    invoke-virtual {v2}, Lcom/anddoes/launcher/gk;->allocateAppWidgetId()I

    move-result v2

    .line 3021
    :try_start_45
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_c9

    .line 3022
    invoke-static {p0}, Lcom/anddoes/launcher/u;->a(Landroid/content/Context;)Lcom/anddoes/launcher/u;

    .line 3023
    iget-object v3, p1, Lcom/anddoes/launcher/jo;->a:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/anddoes/launcher/u;->a(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 3024
    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/anddoes/launcher/Launcher;->a(ILcom/anddoes/launcher/jo;Landroid/content/Intent;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5a} :catch_c7

    :goto_5a
    move v0, v1

    .line 3055
    :cond_5b
    :goto_5b
    if-nez v0, :cond_a9

    .line 3056
    const/4 v0, -0x1

    if-eq v2, v0, :cond_65

    .line 3057
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/gk;->deleteAppWidgetId(I)V

    .line 3059
    :cond_65
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 3060
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3061
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3062
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3063
    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3064
    const v1, 0x7f060007

    .line 3065
    new-instance v2, Lcom/anddoes/launcher/eh;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/eh;-><init>(Lcom/anddoes/launcher/Launcher;)V

    .line 3064
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3071
    const v1, 0x7f060013

    .line 3072
    new-instance v2, Lcom/anddoes/launcher/ei;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/ei;-><init>(Lcom/anddoes/launcher/Launcher;)V

    .line 3071
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3079
    const v1, 0x7f060158

    .line 3080
    new-instance v2, Lcom/anddoes/launcher/ej;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/ej;-><init>(Lcom/anddoes/launcher/Launcher;)V

    .line 3079
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3095
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3097
    :cond_a9
    return-void

    .line 3026
    :cond_aa
    :try_start_aa
    iput v2, p0, Lcom/anddoes/launcher/Launcher;->G:I

    .line 3027
    iput-object p1, p0, Lcom/anddoes/launcher/Launcher;->H:Lcom/anddoes/launcher/jo;

    .line 3028
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3029
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3030
    const-string v4, "appWidgetProvider"

    iget-object v5, p1, Lcom/anddoes/launcher/jo;->a:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3031
    const/16 v4, 0xb

    invoke-virtual {p0, v3, v4}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    goto :goto_5a

    :catch_c7
    move-exception v3

    goto :goto_5b

    .line 3035
    :cond_c9
    const-string v3, "android.permission.BIND_APPWIDGET"

    invoke-static {p0, v3}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 3036
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget-object v4, p1, Lcom/anddoes/launcher/jo;->a:Landroid/content/ComponentName;

    invoke-virtual {v3, v2, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 3037
    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/anddoes/launcher/Launcher;->a(ILcom/anddoes/launcher/jo;Landroid/content/Intent;)V

    move v0, v1

    .line 3038
    goto/16 :goto_5b

    .line 3039
    :cond_e1
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->aU:Z

    if-eqz v3, :cond_5b

    .line 3040
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->F:Lcom/anddoes/launcher/t;

    invoke-virtual {v3}, Lcom/anddoes/launcher/t;->a()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3041
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->F:Lcom/anddoes/launcher/t;

    iget-object v4, p1, Lcom/anddoes/launcher/jo;->a:Landroid/content/ComponentName;

    invoke-virtual {v3, v2, v4}, Lcom/anddoes/launcher/t;->a(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3042
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->D:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 3043
    if-eqz v3, :cond_5b

    .line 3044
    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/anddoes/launcher/Launcher;->a(ILcom/anddoes/launcher/jo;Landroid/content/Intent;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_105} :catch_c7

    move v0, v1

    .line 3045
    goto/16 :goto_5b
.end method

.method final a(Lcom/anddoes/launcher/y;)V
    .registers 4
    .parameter

    .prologue
    .line 3506
    iget v0, p1, Lcom/anddoes/launcher/y;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_12

    .line 3510
    const v0, 0x7f06028d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3515
    :goto_11
    return-void

    .line 3513
    :cond_12
    iget-object v0, p1, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->b(Landroid/content/ComponentName;)V

    goto :goto_11
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 881
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 882
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x400

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 886
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    if-eqz v0, :cond_11

    .line 887
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ui/f;->b()V

    .line 888
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    .line 891
    :cond_11
    const-string v0, "HOME_KEY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 892
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-eq v0, v1, :cond_23

    .line 893
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 1104
    :cond_22
    :goto_22
    return-void

    .line 896
    :cond_23
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aj:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->Q()Z

    move-result v0

    if-nez v0, :cond_40

    .line 897
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->y()V

    .line 898
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_22

    .line 899
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->y()V

    goto :goto_22

    .line 905
    :cond_40
    const-string v0, "APP_DRAWER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 906
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_52

    .line 907
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto :goto_22

    .line 909
    :cond_52
    invoke-direct {p0, v8}, Lcom/anddoes/launcher/Launcher;->e(Z)V

    goto :goto_22

    .line 911
    :cond_56
    const-string v0, "SHOW_PREVIEWS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 912
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_97

    .line 913
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->d:Lcom/anddoes/launcher/gf;

    if-eq v0, v1, :cond_22

    sget-object v0, Lcom/anddoes/launcher/gf;->d:Lcom/anddoes/launcher/gf;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    const-string v0, "NONE"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-direct {p0, v7}, Lcom/anddoes/launcher/Launcher;->g(Z)V

    :goto_80
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v0, v8}, Lcom/anddoes/launcher/SearchDropTargetBar;->b(Z)V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->H()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->K()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v8}, Lcom/anddoes/launcher/Workspace;->e(Z)V

    goto :goto_22

    :cond_93
    invoke-direct {p0, v8}, Lcom/anddoes/launcher/Launcher;->g(Z)V

    goto :goto_80

    .line 915
    :cond_97
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto :goto_22

    .line 917
    :cond_9b
    const-string v0, "MANAGE_SCREENS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 918
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->U()V

    goto/16 :goto_22

    .line 919
    :cond_a8
    const-string v0, "GOTO_DEFAULT_SCREEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 920
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_c7

    .line 921
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 922
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->y()V

    .line 923
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_c7

    .line 924
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->y()V

    .line 927
    :cond_c7
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 928
    :cond_cc
    const-string v0, "SHOW_NOTIFICATIONS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 929
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->R()V

    goto/16 :goto_22

    .line 930
    :cond_d9
    const-string v0, "TOGGLE_STATUS_BAR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 931
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eq v2, v0, :cond_fa

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    iput-boolean v8, p0, Lcom/anddoes/launcher/Launcher;->aB:Z

    goto/16 :goto_22

    :cond_fa
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iput-boolean v7, p0, Lcom/anddoes/launcher/Launcher;->aB:Z

    goto/16 :goto_22

    .line 932
    :cond_105
    const-string v0, "TOGGLE_DOCK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 933
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->m:Z

    if-nez v0, :cond_155

    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->S()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->ab:Z

    if-nez v0, :cond_125

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_125
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    if-eqz v0, :cond_149

    const-string v0, "AUTO"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_149
    :goto_149
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->requestLayout()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->invalidate()V

    goto/16 :goto_22

    :cond_155
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_182

    iput-boolean v7, p0, Lcom/anddoes/launcher/Launcher;->m:Z

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0, v7}, Lcom/anddoes/launcher/Hotseat;->setVisibility(I)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Hotseat;->setAlpha(F)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->V:Z

    if-nez v0, :cond_182

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/Launcher;->aE:I

    iget v4, p0, Lcom/anddoes/launcher/Launcher;->aD:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/Workspace;->setPadding(IIII)V

    :cond_182
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    if-eqz v0, :cond_191

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->ab:Z

    if-nez v0, :cond_191

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_191
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    if-eqz v0, :cond_149

    const-string v0, "AUTO"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->aw:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_149

    .line 934
    :cond_1a9
    const-string v0, "RECENT_APPS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 935
    :try_start_1b1
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "com.android.internal.statusbar.IStatusBarService$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "toggleRecentApps"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1e5} :catch_1e7

    goto/16 :goto_22

    :catch_1e7
    move-exception v0

    goto/16 :goto_22

    .line 936
    :cond_1ea
    const-string v0, "APEX_MENU"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 937
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/Launcher;->b(Landroid/view/View;)V

    goto/16 :goto_22

    .line 938
    :cond_1f7
    const-string v0, "APEX_SETTINGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 939
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->n()V

    goto/16 :goto_22

    .line 940
    :cond_204
    const-string v0, "LOCK_DESKTOP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_224

    .line 941
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v0, :cond_217

    .line 942
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->V()V

    goto/16 :goto_22

    .line 943
    :cond_217
    const-string v0, "SHORTCUT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 944
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->W()V

    goto/16 :goto_22

    .line 946
    :cond_224
    const-string v0, "GOTO_SCREEN1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_247

    .line 947
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_242

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_242

    .line 948
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 949
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v7}, Lcom/anddoes/launcher/Workspace;->n(I)V

    .line 951
    :cond_242
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 952
    :cond_247
    const-string v0, "GOTO_SCREEN2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 953
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_265

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    if-lt v0, v6, :cond_265

    .line 954
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 955
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v8}, Lcom/anddoes/launcher/Workspace;->n(I)V

    .line 957
    :cond_265
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 958
    :cond_26a
    const-string v0, "GOTO_SCREEN3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28e

    .line 959
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_289

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_289

    .line 960
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 961
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v6}, Lcom/anddoes/launcher/Workspace;->n(I)V

    .line 963
    :cond_289
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 964
    :cond_28e
    const-string v0, "GOTO_SCREEN4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b3

    .line 965
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_2ae

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2ae

    .line 966
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 967
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->n(I)V

    .line 969
    :cond_2ae
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 970
    :cond_2b3
    const-string v0, "GOTO_SCREEN5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    .line 971
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_2d3

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2d3

    .line 972
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 973
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->n(I)V

    .line 975
    :cond_2d3
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 976
    :cond_2d8
    const-string v0, "GOTO_SCREEN6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fd

    .line 977
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_2f8

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2f8

    .line 978
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 979
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->n(I)V

    .line 981
    :cond_2f8
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 982
    :cond_2fd
    const-string v0, "GOTO_SCREEN7"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_322

    .line 983
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_31d

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_31d

    .line 984
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 985
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->n(I)V

    .line 987
    :cond_31d
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 988
    :cond_322
    const-string v0, "GOTO_SCREEN8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_348

    .line 989
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_343

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_343

    .line 990
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 991
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->n(I)V

    .line 993
    :cond_343
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 994
    :cond_348
    const-string v0, "GOTO_SCREEN9"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36f

    .line 995
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_36a

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_36a

    .line 996
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 997
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->n(I)V

    .line 999
    :cond_36a
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22

    .line 1000
    :cond_36f
    const-string v0, "LAUNCH_APP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a5

    .line 1001
    const-string v2, "home_key_action_pkg"

    .line 1002
    const-string v1, "home_key_action_act"

    .line 1003
    const-string v0, "home_key_action_intent"

    .line 1004
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-eqz v4, :cond_439

    .line 1005
    const-string v4, "SWIPE_UP"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_403

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_up_pkg_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_up_act_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "swipe_up_intent_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    :cond_3b8
    :goto_3b8
    new-array v4, v6, [I

    .line 1042
    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v5, v4}, Lcom/anddoes/launcher/Workspace;->getLocationOnScreen([I)V

    .line 1043
    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_499

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v5, v5, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v5, v0, v3}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    :goto_3cd
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a2

    .line 1048
    const/4 v5, 0x0

    :try_start_3d4
    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3d7
    .catch Ljava/net/URISyntaxException; {:try_start_3d4 .. :try_end_3d7} :catch_4a1

    move-result-object v0

    .line 1053
    :goto_3d8
    if-nez v0, :cond_3de

    .line 1054
    invoke-direct {p0, v2, v1, p3, p4}, Lcom/anddoes/launcher/Launcher;->b(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 1056
    :cond_3de
    if-eqz v0, :cond_22

    .line 1057
    new-instance v1, Landroid/graphics/Rect;

    aget v3, v4, v7

    aget v5, v4, v8

    aget v6, v4, v7

    .line 1058
    iget-object v7, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v7}, Lcom/anddoes/launcher/Workspace;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v4, v4, v8

    iget-object v7, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v7}, Lcom/anddoes/launcher/Workspace;->getHeight()I

    move-result v7

    add-int/2addr v4, v7

    invoke-direct {v1, v3, v5, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1057
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1059
    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1009
    :cond_403
    const-string v4, "SWIPE_DOWN"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b8

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_down_pkg_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_down_act_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "swipe_down_intent_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b8

    .line 1015
    :cond_439
    const-string v4, "PINCH_IN"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_449

    .line 1016
    const-string v2, "pinch_in_action_pkg"

    .line 1017
    const-string v1, "pinch_in_action_act"

    .line 1018
    const-string v0, "pinch_in_action_intent"

    goto/16 :goto_3b8

    .line 1019
    :cond_449
    const-string v4, "SWIPE_UP"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_459

    .line 1020
    const-string v2, "swipe_up_action_pkg"

    .line 1021
    const-string v1, "swipe_up_action_act"

    .line 1022
    const-string v0, "swipe_up_action_intent"

    goto/16 :goto_3b8

    .line 1023
    :cond_459
    const-string v4, "SWIPE_DOWN"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_469

    .line 1024
    const-string v2, "swipe_down_action_pkg"

    .line 1025
    const-string v1, "swipe_down_action_act"

    .line 1026
    const-string v0, "swipe_down_action_intent"

    goto/16 :goto_3b8

    .line 1027
    :cond_469
    const-string v4, "TWO_FINGER_SWIPE_UP"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_479

    .line 1028
    const-string v2, "two_finger_swipe_up_action_pkg"

    .line 1029
    const-string v1, "two_finger_swipe_up_action_act"

    .line 1030
    const-string v0, "two_finger_swipe_up_action_intent"

    goto/16 :goto_3b8

    .line 1031
    :cond_479
    const-string v4, "TWO_FINGER_SWIPE_DOWN"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_489

    .line 1032
    const-string v2, "two_finger_swipe_down_action_pkg"

    .line 1033
    const-string v1, "two_finger_swipe_down_action_act"

    .line 1034
    const-string v0, "two_finger_swipe_down_action_intent"

    goto/16 :goto_3b8

    .line 1035
    :cond_489
    const-string v4, "DOUBLE_TAP"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b8

    .line 1036
    const-string v2, "desktop_double_tap_action_pkg"

    .line 1037
    const-string v1, "desktop_double_tap_action_act"

    .line 1038
    const-string v0, "desktop_double_tap_action_intent"

    goto/16 :goto_3b8

    .line 1044
    :cond_499
    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    invoke-virtual {v5, v0, v3}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3cd

    :catch_4a1
    move-exception v0

    :cond_4a2
    move-object v0, v3

    goto/16 :goto_3d8

    .line 1061
    :cond_4a5
    const-string v0, "LAUNCH_SHORTCUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57f

    .line 1062
    const-string v0, "home_key_action_shortcut_intent"

    .line 1063
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-eqz v1, :cond_531

    .line 1064
    const-string v1, "SWIPE_UP"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_519

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_up_shortcut_intent_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    :cond_4cc
    :goto_4cc
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_577

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v1, v0, v3}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    :goto_4da
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1088
    const/4 v1, 0x2

    :try_start_4e1
    new-array v1, v1, [I

    .line 1089
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/Workspace;->getLocationOnScreen([I)V

    .line 1090
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1091
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x0

    aget v5, v1, v5

    .line 1092
    iget-object v6, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v6}, Lcom/anddoes/launcher/Workspace;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v1, v1, v6

    .line 1093
    iget-object v6, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v6}, Lcom/anddoes/launcher/Workspace;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1091
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1094
    const-string v1, "launcher shortcut"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_514
    .catch Ljava/net/URISyntaxException; {:try_start_4e1 .. :try_end_514} :catch_516

    goto/16 :goto_22

    .line 1095
    :catch_516
    move-exception v0

    goto/16 :goto_22

    .line 1066
    :cond_519
    const-string v1, "SWIPE_DOWN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4cc

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_down_shortcut_intent_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4cc

    .line 1070
    :cond_531
    const-string v1, "PINCH_IN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53c

    .line 1071
    const-string v0, "pinch_in_action_shortcut_intent"

    goto :goto_4cc

    .line 1072
    :cond_53c
    const-string v1, "SWIPE_UP"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_547

    .line 1073
    const-string v0, "swipe_up_action_shortcut_intent"

    goto :goto_4cc

    .line 1074
    :cond_547
    const-string v1, "SWIPE_DOWN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_553

    .line 1075
    const-string v0, "swipe_down_action_shortcut_intent"

    goto/16 :goto_4cc

    .line 1076
    :cond_553
    const-string v1, "TWO_FINGER_SWIPE_UP"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55f

    .line 1077
    const-string v0, "two_finger_swipe_up_action_shortcut_intent"

    goto/16 :goto_4cc

    .line 1078
    :cond_55f
    const-string v1, "TWO_FINGER_SWIPE_DOWN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56b

    .line 1079
    const-string v0, "two_finger_swipe_down_action_shortcut_intent"

    goto/16 :goto_4cc

    .line 1080
    :cond_56b
    const-string v1, "DOUBLE_TAP"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4cc

    .line 1081
    const-string v0, "desktop_double_tap_action_shortcut_intent"

    goto/16 :goto_4cc

    .line 1085
    :cond_577
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    invoke-virtual {v1, v0, v3}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4da

    .line 1100
    :cond_57f
    const-string v0, "HOME_KEY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1101
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_22
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 4
    .parameter

    .prologue
    .line 5181
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    .line 5182
    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5183
    if-eqz v1, :cond_14

    .line 5184
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5189
    :cond_14
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    new-instance v1, Lcom/anddoes/launcher/fe;

    invoke-direct {v1, p0, p1}, Lcom/anddoes/launcher/fe;-><init>(Lcom/anddoes/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 5197
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ig;->a()V

    .line 5198
    return-void
.end method

.method public final a(Ljava/util/ArrayList;II)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5028
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->J()Z

    .line 5031
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    .line 5032
    :goto_5
    if-lt p2, p3, :cond_b

    .line 5067
    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->requestLayout()V

    .line 5068
    return-void

    .line 5033
    :cond_b
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/anddoes/launcher/ec;

    .line 5037
    iget-wide v1, v8, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_1e

    .line 5038
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v1, :cond_23

    .line 5039
    :cond_1e
    iget v1, v8, Lcom/anddoes/launcher/ec;->i:I

    sparse-switch v1, :sswitch_data_82

    .line 5032
    :cond_23
    :goto_23
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :sswitch_26
    move-object v1, v8

    .line 5045
    check-cast v1, Lcom/anddoes/launcher/kj;

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/kj;)Landroid/view/View;

    move-result-object v1

    .line 5046
    iget-wide v2, v8, Lcom/anddoes/launcher/ec;->j:J

    iget v4, v8, Lcom/anddoes/launcher/ec;->k:I

    .line 5047
    iget v5, v8, Lcom/anddoes/launcher/ec;->l:I

    iget v6, v8, Lcom/anddoes/launcher/ec;->m:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5046
    invoke-virtual/range {v0 .. v9}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    goto :goto_23

    .line 5052
    :sswitch_3c
    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v1

    .line 5051
    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v8

    .line 5052
    check-cast v2, Lcom/anddoes/launcher/dd;

    .line 5053
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->Y:Lcom/anddoes/launcher/ds;

    .line 5050
    invoke-static {p0, v1, v2}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/Launcher;Landroid/view/ViewGroup;Lcom/anddoes/launcher/dd;)Lcom/anddoes/launcher/FolderIcon;

    move-result-object v1

    .line 5054
    iget-wide v2, v8, Lcom/anddoes/launcher/ec;->j:J

    iget v4, v8, Lcom/anddoes/launcher/ec;->k:I

    .line 5055
    iget v5, v8, Lcom/anddoes/launcher/ec;->l:I

    iget v6, v8, Lcom/anddoes/launcher/ec;->m:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5054
    invoke-virtual/range {v0 .. v9}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    goto :goto_23

    :sswitch_5e
    move-object v2, v8

    .line 5058
    check-cast v2, Lcom/anddoes/launcher/ki;

    .line 5059
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->a:Landroid/view/LayoutInflater;

    iget v3, v2, Lcom/anddoes/launcher/ki;->b:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5060
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5061
    iget-wide v2, v8, Lcom/anddoes/launcher/ec;->j:J

    iget v4, v8, Lcom/anddoes/launcher/ec;->k:I

    .line 5062
    iget v5, v8, Lcom/anddoes/launcher/ec;->l:I

    iget v6, v8, Lcom/anddoes/launcher/ec;->m:I

    iget v7, v8, Lcom/anddoes/launcher/ec;->n:I

    iget v8, v8, Lcom/anddoes/launcher/ec;->o:I

    .line 5063
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ab()Z

    move-result v9

    .line 5061
    invoke-virtual/range {v0 .. v9}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    goto :goto_23

    .line 5039
    nop

    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_26
        0x1 -> :sswitch_26
        0x2 -> :sswitch_3c
        0x3e9 -> :sswitch_5e
    .end sparse-switch
.end method

.method public final a(Ljava/util/ArrayList;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 5250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->removeDialog(I)V

    .line 5251
    if-eqz p2, :cond_b

    .line 5252
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/Workspace;->a(Ljava/util/ArrayList;)V

    .line 5255
    :cond_b
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v0, :cond_14

    .line 5256
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->c(Ljava/util/ArrayList;)V

    .line 5260
    :cond_14
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->C:Lcom/anddoes/launcher/bm;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/bm;->a(Ljava/util/ArrayList;)V

    .line 5261
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 3
    .parameter

    .prologue
    .line 5075
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->J()Z

    .line 5076
    sget-object v0, Lcom/anddoes/launcher/Launcher;->ae:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5077
    sget-object v0, Lcom/anddoes/launcher/Launcher;->ae:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5078
    return-void
.end method

.method final a(Z)V
    .registers 5
    .parameter

    .prologue
    const/high16 v1, 0x10

    .line 3875
    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->k:Z

    if-eqz v0, :cond_20

    move v0, v1

    .line 3877
    :goto_b
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v1

    .line 3879
    if-eq v0, v2, :cond_1f

    .line 3880
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3883
    :cond_1f
    return-void

    .line 3876
    :cond_20
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final a(ZZ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 4413
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->c:Lcom/anddoes/launcher/gf;

    if-eq v0, v1, :cond_7

    .line 4433
    :goto_6
    return-void

    .line 4416
    :cond_7
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    new-instance v2, Lcom/anddoes/launcher/fb;

    invoke-direct {v2, p0, p1}, Lcom/anddoes/launcher/fb;-><init>(Lcom/anddoes/launcher/Launcher;Z)V

    .line 4431
    if-eqz p2, :cond_17

    const/16 v0, 0x258

    :goto_12
    int-to-long v3, v0

    .line 4416
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 4432
    :cond_17
    const/16 v0, 0x12c

    goto :goto_12
.end method

.method final a(Landroid/content/Intent;Ljava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3529
    if-nez p1, :cond_4

    .line 3552
    :goto_3
    return v0

    .line 3532
    :cond_4
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3534
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_c} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_c} :catch_38
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_6c

    .line 3535
    const/4 v0, 0x1

    goto :goto_3

    .line 3536
    :catch_e
    move-exception v1

    .line 3537
    const v2, 0x7f060252

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 3538
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3539
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3540
    :catch_38
    move-exception v1

    .line 3541
    const v2, 0x7f06016c

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 3542
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3543
    const-string v2, "Launcher"

    .line 3544
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launcher does not have the permission to launch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3545
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3546
    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity. tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3547
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3543
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3549
    :catch_6c
    move-exception v1

    .line 3550
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch. tag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method final a(Landroid/view/View;)Z
    .registers 3
    .parameter

    .prologue
    .line 3779
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 3780
    instance-of v0, p1, Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_14

    .line 3781
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/Hotseat;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    .line 3779
    goto :goto_13
.end method

.method final a(Landroid/appwidget/AppWidgetProviderInfo;)[I
    .registers 5
    .parameter

    .prologue
    .line 2172
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 2173
    invoke-direct {p0, v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/anddoes/launcher/jo;)[I
    .registers 5
    .parameter

    .prologue
    .line 2182
    iget-object v0, p1, Lcom/anddoes/launcher/jo;->a:Landroid/content/ComponentName;

    iget v1, p1, Lcom/anddoes/launcher/jo;->b:I

    .line 2183
    iget v2, p1, Lcom/anddoes/launcher/jo;->c:I

    .line 2182
    invoke-direct {p0, v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 379
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->m:Z

    iput-boolean v1, v0, Lcom/anddoes/launcher/Workspace;->f:Z

    .line 380
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->o:Z

    iput-boolean v1, v0, Lcom/anddoes/launcher/Workspace;->g:Z

    .line 381
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->m:Z

    if-eqz v0, :cond_8c

    .line 382
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    if-eqz v0, :cond_5e

    .line 383
    const-string v0, "AUTO"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 384
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aa:Z

    if-eqz v0, :cond_34

    .line 385
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    const-string v1, "BOTTOM"

    iput-object v1, v0, Lcom/anddoes/launcher/preference/f;->n:Ljava/lang/String;

    .line 387
    :cond_34
    const-string v0, "TOP"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 388
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 391
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 392
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 393
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 394
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    :goto_52
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->o:Z

    if-nez v0, :cond_86

    .line 408
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->c(Z)V

    .line 416
    :cond_5e
    :goto_5e
    return-void

    .line 395
    :cond_5f
    const-string v0, "BOTTOM"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 396
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 399
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 400
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 401
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 402
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_52

    .line 404
    :cond_7e
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->aw:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_52

    .line 410
    :cond_86
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->K()V

    goto :goto_5e

    .line 414
    :cond_8c
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->K()V

    goto :goto_5e
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 2321
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aa:Z

    .line 2323
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->aa()V

    .line 2324
    return-void

    .line 2321
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method final b(Landroid/content/ComponentName;)V
    .registers 7
    .parameter

    .prologue
    .line 3518
    if-nez p1, :cond_3

    .line 3526
    :goto_2
    return-void

    .line 3521
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3522
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3523
    const/high16 v0, 0x1080

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3525
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public final b(Lcom/anddoes/launcher/gn;)V
    .registers 13
    .parameter

    .prologue
    .line 5086
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->J()Z

    .line 5088
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    .line 5094
    iget v1, p1, Lcom/anddoes/launcher/gn;->a:I

    .line 5095
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->D:Landroid/appwidget/AppWidgetManager;

    .line 5096
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 5102
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    invoke-virtual {v2, p0, v1, v10}, Lcom/anddoes/launcher/gk;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, p1, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    .line 5105
    iget-object v2, p1, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v1, v10}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5106
    iget-object v1, p1, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5108
    iget-object v1, p1, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/anddoes/launcher/gn;->j:J

    iget v4, p1, Lcom/anddoes/launcher/gn;->k:I

    .line 5109
    iget v5, p1, Lcom/anddoes/launcher/gn;->l:I

    iget v6, p1, Lcom/anddoes/launcher/gn;->m:I

    iget v7, p1, Lcom/anddoes/launcher/gn;->n:I

    iget v8, p1, Lcom/anddoes/launcher/gn;->o:I

    const/4 v9, 0x0

    .line 5108
    invoke-virtual/range {v0 .. v9}, Lcom/anddoes/launcher/Workspace;->a(Landroid/view/View;JIIIIIZ)V

    .line 5111
    iget-object v1, p1, Lcom/anddoes/launcher/gn;->d:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0, v1, v10}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 5113
    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->requestLayout()V

    .line 5119
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .registers 5
    .parameter

    .prologue
    .line 5206
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->J()Z

    .line 5207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->removeDialog(I)V

    .line 5209
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v0, :cond_10

    .line 5210
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->b(Ljava/util/ArrayList;)V

    .line 5214
    :cond_10
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aG:Z

    if-nez v0, :cond_1e

    .line 5215
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5224
    :cond_1e
    :goto_1e
    return-void

    .line 5215
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/y;

    .line 5216
    iget-object v2, v0, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    if-eqz v2, :cond_18

    .line 5217
    const-string v2, "com.anddoes.launcher.pro"

    iget-object v0, v0, Lcom/anddoes/launcher/y;->f:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anddoes/launcher/ApexService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1e
.end method

.method final b(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "showWorkspace start:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4308
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1e

    .line 4309
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 4310
    iput-object v6, p0, Lcom/anddoes/launcher/Launcher;->az:Landroid/widget/ListPopupWindow;

    .line 4313
    :cond_1e
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4314
    const v3, 0x7f0b0011

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 4317
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v4, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    if-ne v0, v4, :cond_156

    .line 4318
    const-string v0, "NONE"

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v4, v4, Lcom/anddoes/launcher/preference/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    move v0, v1

    .line 4321
    :goto_3c
    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    sget-object v5, Lcom/anddoes/launcher/lv;->a:Lcom/anddoes/launcher/lv;

    invoke-virtual {v4, v5, v0, v3}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/lv;ZI)V

    .line 4322
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v3, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-eq v0, v3, :cond_118

    .line 4323
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->setVisibility(I)V

    .line 4324
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v3, Lcom/anddoes/launcher/gf;->d:Lcom/anddoes/launcher/gf;

    if-eq v0, v3, :cond_5a

    .line 4325
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v3, Lcom/anddoes/launcher/gf;->e:Lcom/anddoes/launcher/gf;

    if-ne v0, v3, :cond_13f

    .line 4326
    :cond_5a
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v3, Lcom/anddoes/launcher/gf;->e:Lcom/anddoes/launcher/gf;

    if-ne v0, v3, :cond_133

    .line 4327
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->at:Lcom/anddoes/launcher/PreviewPane;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PreviewPane;->b()V

    .line 4331
    :goto_65
    const-string v0, "NONE"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 4332
    invoke-direct {p0, v1}, Lcom/anddoes/launcher/Launcher;->f(Z)V

    .line 4343
    :goto_74
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/SearchDropTargetBar;->a(Z)V

    .line 4346
    if-eqz p1, :cond_14d

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v3, Lcom/anddoes/launcher/gf;->c:Lcom/anddoes/launcher/gf;

    if-ne v0, v3, :cond_14d

    move v0, v2

    :goto_82
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->z:Landroid/view/View;

    if-eqz v3, :cond_150

    iget-boolean v3, p0, Lcom/anddoes/launcher/Launcher;->i:Z

    if-nez v3, :cond_150

    move v3, v2

    :goto_8b
    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    if-eqz v4, :cond_153

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v4, v4, Lcom/anddoes/launcher/preference/f;->ab:Z

    if-nez v4, :cond_153

    move v4, v2

    :goto_96
    if-nez v3, :cond_9a

    if-eqz v4, :cond_10f

    :cond_9a
    if-eqz v3, :cond_a1

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->z:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a1
    if-eqz v4, :cond_ac

    iget-boolean v5, p0, Lcom/anddoes/launcher/Launcher;->m:Z

    if-nez v5, :cond_ac

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_ac
    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->s:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_c5

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    if-eqz v3, :cond_bc

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->z:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_bc
    if-eqz v4, :cond_c3

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_c3
    iput-object v6, p0, Lcom/anddoes/launcher/Launcher;->s:Landroid/animation/AnimatorSet;

    :cond_c5
    if-eqz v0, :cond_10f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_dd

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->z:Landroid/view/View;

    const-string v5, "alpha"

    new-array v6, v2, [F

    aput v7, v6, v1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_dd
    if-eqz v4, :cond_f2

    iget-boolean v3, p0, Lcom/anddoes/launcher/Launcher;->m:Z

    if-nez v3, :cond_f2

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v2, [F

    aput v7, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/anddoes/launcher/Launcher;->s:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->s:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-static {}, Lcom/anddoes/launcher/SearchDropTargetBar;->b()I

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4349
    :cond_10f
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->M:Landroid/view/View;

    if-eqz v0, :cond_118

    .line 4350
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4354
    :cond_118
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/Workspace;->b(Z)V

    .line 4357
    sget-object v0, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    .line 4360
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->Z:Z

    .line 4361
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->aa()V

    .line 4364
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4365
    const/4 v1, 0x4

    .line 4364
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4366
    return-void

    .line 4329
    :cond_133
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->e(Z)V

    goto/16 :goto_65

    .line 4334
    :cond_13a
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->f(Z)V

    goto/16 :goto_74

    .line 4337
    :cond_13f
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    if-eqz v0, :cond_148

    .line 4338
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->j()V

    .line 4340
    :cond_148
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->d(Z)V

    goto/16 :goto_74

    :cond_14d
    move v0, v1

    .line 4346
    goto/16 :goto_82

    :cond_150
    move v3, v1

    goto/16 :goto_8b

    :cond_153
    move v4, v1

    goto/16 :goto_96

    :cond_156
    move v0, p1

    goto/16 :goto_3c
.end method

.method final b(Landroid/appwidget/AppWidgetProviderInfo;)[I
    .registers 5
    .parameter

    .prologue
    .line 2177
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 2178
    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 2177
    invoke-direct {p0, v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 420
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->M:Z

    iput-boolean v1, v0, Lcom/anddoes/launcher/AppsCustomizePagedView;->f:Z

    .line 421
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->O:Z

    iput-boolean v1, v0, Lcom/anddoes/launcher/AppsCustomizePagedView;->g:Z

    .line 422
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->M:Z

    if-eqz v0, :cond_74

    .line 423
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->ax:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 424
    const-string v0, "TOP"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 425
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 428
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 429
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 430
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 431
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->ax:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    :goto_3a
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->O:Z

    if-nez v0, :cond_6e

    .line 446
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->c(Z)V

    .line 454
    :cond_46
    :goto_46
    return-void

    .line 432
    :cond_47
    const-string v0, "BOTTOM"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 433
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 436
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 437
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 438
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 439
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->ax:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3a

    .line 441
    :cond_66
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->ax:Landroid/view/View;

    .line 442
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->ay:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3a

    .line 448
    :cond_6e
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->K()V

    goto :goto_46

    .line 452
    :cond_74
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->K()V

    goto :goto_46
.end method

.method public final c(I)V
    .registers 5
    .parameter

    .prologue
    .line 3379
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aA:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3380
    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .registers 3
    .parameter

    .prologue
    .line 5232
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->J()Z

    .line 5233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->removeDialog(I)V

    .line 5234
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    if-eqz v0, :cond_10

    .line 5235
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/Workspace;->b(Ljava/util/ArrayList;)V

    .line 5238
    :cond_10
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v0, :cond_19

    .line 5239
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->d(Ljava/util/ArrayList;)V

    .line 5241
    :cond_19
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 458
    const/4 v0, -0x1

    .line 459
    const-string v1, "LANDSCAPE"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ah:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 460
    const/4 v0, 0x0

    .line 468
    :cond_e
    :goto_e
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->setRequestedOrientation(I)V

    .line 469
    return-void

    .line 461
    :cond_12
    const-string v1, "PORTRAIT"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ah:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 462
    const/4 v0, 0x1

    goto :goto_e

    .line 463
    :cond_20
    const-string v1, "ROTATE"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ah:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 464
    const/4 v0, 0x2

    goto :goto_e

    .line 465
    :cond_2e
    const-string v1, "DEFAULT"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->ah:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 466
    const/4 v0, 0x5

    goto :goto_e
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3206
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_cf

    .line 3207
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_de

    .line 3224
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_12
    :pswitch_12
    :sswitch_12
    return v0

    .line 3211
    :sswitch_13
    const-string v1, "debug.launcher2.dumpstate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    .line 3212
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BEGIN launcher2 dump state for launcher "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSavedState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->P:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mWorkspaceLoading="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/anddoes/launcher/Launcher;->R:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mRestoring="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/anddoes/launcher/Launcher;->T:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mWaitingForResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/anddoes/launcher/Launcher;->U:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSavedInstanceState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->W:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sFolders.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/anddoes/launcher/Launcher;->ae:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/anddoes/launcher/LauncherModel;->i()V

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/anddoes/launcher/AppsCustomizePagedView;->m()V

    :cond_c6
    const-string v1, "Launcher"

    const-string v2, "END launcher2 dump state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 3217
    :cond_cf
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_e

    .line 3218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_e8

    goto/16 :goto_e

    .line 3207
    :sswitch_data_de
    .sparse-switch
        0x3 -> :sswitch_12
        0x19 -> :sswitch_13
    .end sparse-switch

    .line 3218
    :pswitch_data_e8
    .packed-switch 0x3
        :pswitch_12
    .end packed-switch
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5345
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5346
    const-string v0, "Debug logs: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5347
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    sget-object v0, Lcom/anddoes/launcher/Launcher;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_18

    .line 5350
    return-void

    .line 5348
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/anddoes/launcher/Launcher;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5347
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method public final e()V
    .registers 3

    .prologue
    const/16 v1, 0x400

    .line 473
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->r:Z

    if-eqz v0, :cond_13

    .line 474
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aB:Z

    .line 480
    :goto_12
    return-void

    .line 477
    :cond_13
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aB:Z

    goto :goto_12
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 545
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->ab:Z

    if-eqz v0, :cond_12

    .line 546
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 554
    :cond_11
    :goto_11
    return-void

    .line 548
    :cond_12
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_11

    .line 549
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->k:Z

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->a(Z)V

    .line 559
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    if-eqz v0, :cond_1c

    .line 560
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->k:Z

    if-eqz v0, :cond_1d

    .line 561
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/DragLayer;->setBackgroundColor(I)V

    .line 565
    :goto_17
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/anddoes/launcher/DragLayer;->postInvalidate()V

    .line 567
    :cond_1c
    return-void

    .line 563
    :cond_1d
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/DragLayer;->setBackgroundColor(I)V

    goto :goto_17
.end method

.method public final h()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 571
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    if-eqz v0, :cond_29

    .line 572
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const v1, 0x7f090007

    const-string v2, "drawer_background_color"

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/c/l;->a(ILjava/lang/String;)I

    move-result v0

    .line 573
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v1, v1, Lcom/anddoes/launcher/preference/f;->z:I

    if-nez v1, :cond_2a

    .line 574
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->setBackgroundColor(I)V

    .line 575
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 584
    :goto_24
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->postInvalidate()V

    .line 586
    :cond_29
    return-void

    .line 576
    :cond_2a
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v1, v1, Lcom/anddoes/launcher/preference/f;->z:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_41

    .line 577
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->setBackgroundColor(I)V

    .line 578
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_24

    .line 580
    :cond_41
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v3, v3, Lcom/anddoes/launcher/preference/f;->z:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    .line 581
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 580
    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->setBackgroundColor(I)V

    .line 582
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_24
.end method

.method public final i()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_25

    .line 684
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_26

    .line 685
    const-string v0, "dock_background_land"

    .line 684
    :goto_13
    invoke-virtual {v2, v1, v0}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 686
    if-nez v0, :cond_2d

    .line 687
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->s:Z

    if-eqz v0, :cond_29

    move v0, v1

    :goto_22
    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/Hotseat;->setBackgroundResource(I)V

    .line 692
    :cond_25
    :goto_25
    return-void

    .line 685
    :cond_26
    const-string v0, "dock_background_port"

    goto :goto_13

    .line 687
    :cond_29
    const v0, 0x7f020023

    goto :goto_22

    .line 689
    :cond_2d
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Hotseat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_25
.end method

.method public final j()Z
    .registers 3

    .prologue
    .line 809
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->d:Lcom/anddoes/launcher/gf;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->e:Lcom/anddoes/launcher/gf;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public final k()V
    .registers 2

    .prologue
    .line 813
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 821
    return-void
.end method

.method public final l()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const v4, 0x7f0c001d

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 825
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 826
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    const-string v2, "tab_widget_indicator"

    invoke-virtual {v1, v0, v3, v2}, Lcom/anddoes/launcher/c/l;->b(Landroid/view/View;ILjava/lang/String;)V

    .line 827
    const-string v1, "NONE"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 828
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 872
    :goto_28
    return-void

    .line 830
    :cond_29
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 831
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 833
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 834
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    .line 835
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 836
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 832
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 837
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    .line 838
    const v2, 0x7f020046

    .line 839
    const-string v3, "menu_more_overflow"

    .line 837
    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 840
    const-string v1, "SHOP"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->F:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 841
    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 842
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_28

    .line 843
    :cond_67
    const-string v1, "MENU"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->F:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 844
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 845
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_28

    .line 847
    :cond_7d
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 848
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    const-string v3, "drawer_tab_icon_pkg"

    invoke-virtual {v1, v3, v6}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    const-string v4, "drawer_tab_icon_intent"

    invoke-virtual {v3, v4, v6}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 850
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b5

    .line 852
    const/4 v4, 0x0

    :try_start_a9
    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 853
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_b4
    .catch Ljava/net/URISyntaxException; {:try_start_a9 .. :try_end_b4} :catch_dd

    move-result-object v1

    .line 858
    :cond_b5
    :goto_b5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d8

    .line 860
    :try_start_bb
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 861
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 862
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bb .. :try_end_cd} :catch_cf

    goto/16 :goto_28

    .line 865
    :catch_cf
    move-exception v1

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_28

    .line 868
    :cond_d8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_28

    :catch_dd
    move-exception v3

    goto :goto_b5
.end method

.method public final m()Z
    .registers 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    const-string v1, "HORIZONTAL_PAGINATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 877
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->y:Ljava/lang/String;

    const-string v1, "VERTICAL_PAGINATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    .line 876
    goto :goto_19
.end method

.method public final n()V
    .registers 3

    .prologue
    .line 1127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1128
    const-class v1, Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1129
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1130
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_16

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->ac:Z

    .line 1133
    :cond_16
    return-void
.end method

.method public final o()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1136
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->ac:Z

    if-eqz v0, :cond_a

    .line 1137
    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->ac:Z

    .line 1138
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 1140
    :cond_a
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xb

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1623
    .line 1625
    iput-boolean v4, p0, Lcom/anddoes/launcher/Launcher;->U:Z

    .line 1633
    if-ne p2, v1, :cond_d5

    const/16 v0, 0xc

    if-ne p1, v0, :cond_d5

    .line 1634
    iget-object v6, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v6, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    if-eqz v0, :cond_60

    iget-object v0, v6, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    if-eqz v0, :cond_60

    iget-object v0, v6, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    instance-of v0, v0, Lcom/anddoes/launcher/kj;

    if-eqz v0, :cond_9a

    iget-object v0, v6, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    check-cast v0, Lcom/anddoes/launcher/kj;

    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_61

    iput-boolean v3, v0, Lcom/anddoes/launcher/kj;->c:Z

    iput-object v5, v0, Lcom/anddoes/launcher/kj;->e:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/kj;->a(Landroid/graphics/Bitmap;)V

    :cond_33
    :goto_33
    iput v3, v0, Lcom/anddoes/launcher/kj;->i:I

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    iget-object v1, v6, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    check-cast v1, Lcom/anddoes/launcher/BubbleTextView;

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->Y:Lcom/anddoes/launcher/ds;

    iget-wide v3, v0, Lcom/anddoes/launcher/kj;->j:J

    invoke-static {p0, v3, v4}, Lcom/anddoes/launcher/ia;->a(Lcom/anddoes/launcher/Launcher;J)Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/anddoes/launcher/BubbleTextView;->a(Lcom/anddoes/launcher/kj;Lcom/anddoes/launcher/ds;Z)V

    invoke-virtual {v1}, Lcom/anddoes/launcher/BubbleTextView;->invalidate()V

    :cond_5c
    :goto_5c
    iput-object v5, v6, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    iput-object v5, v6, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    .line 1694
    :cond_60
    :goto_60
    return-void

    .line 1634
    :cond_61
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v1, :cond_33

    :try_start_6b
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v7, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_74} :catch_8d

    move-result-object v2

    :goto_75
    if-eqz v2, :cond_88

    iget-object v7, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v2, v7, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_88

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_90

    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/kj;->a(Landroid/graphics/Bitmap;)V

    :cond_88
    :goto_88
    iput-boolean v4, v0, Lcom/anddoes/launcher/kj;->c:Z

    iput-object v1, v0, Lcom/anddoes/launcher/kj;->e:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_33

    :catch_8d
    move-exception v2

    move-object v2, v5

    goto :goto_75

    :cond_90
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/kj;->a(Landroid/graphics/Bitmap;)V

    goto :goto_88

    :cond_9a
    iget-object v0, v6, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    instance-of v0, v0, Lcom/anddoes/launcher/dd;

    if-eqz v0, :cond_5c

    iget-object v0, v6, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    check-cast v0, Lcom/anddoes/launcher/dd;

    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/dd;->a(Landroid/graphics/Bitmap;)V

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/dd;->a(Ljava/lang/CharSequence;)V

    invoke-static {p0, v0}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    iget-object v1, v6, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    check-cast v1, Lcom/anddoes/launcher/FolderIcon;

    iget-object v2, v1, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    if-eqz v2, :cond_ce

    iget-object v2, v1, Lcom/anddoes/launcher/FolderIcon;->a:Lcom/anddoes/launcher/Folder;

    iget-object v0, v0, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/Folder;->a(Ljava/lang/String;)V

    :cond_ce
    invoke-virtual {v1}, Lcom/anddoes/launcher/FolderIcon;->a()V

    invoke-virtual {v1}, Lcom/anddoes/launcher/FolderIcon;->invalidate()V

    goto :goto_5c

    .line 1636
    :cond_d5
    if-ne p2, v1, :cond_14b

    const/16 v0, 0x15

    if-ne p1, v0, :cond_14b

    .line 1637
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->d:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->h:Ljava/lang/String;

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_13c

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/c;->c()Ljava/lang/String;

    move-result-object v0

    :goto_109
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_143

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    const-string v6, "app_groups"

    invoke-virtual {v3, v6, v0}, Lcom/anddoes/launcher/preference/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_127
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v0, v5, v1}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v0, v5, v2}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0, v4, v5}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(ILjava/lang/String;)V

    goto/16 :goto_60

    :cond_13c
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/c;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_109

    :cond_143
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    const-string v6, "widget_groups"

    invoke-virtual {v3, v6, v0}, Lcom/anddoes/launcher/preference/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_127

    .line 1639
    :cond_14b
    if-ne p2, v1, :cond_18a

    const/16 v0, 0x16

    if-ne p1, v0, :cond_18a

    .line 1640
    sget-object v0, Lcom/anddoes/launcher/GroupConfigActivity;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/anddoes/launcher/GroupConfigActivity;->c:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/anddoes/launcher/MultiPickerActivity;->d:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_60

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v3, v2, v0}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    invoke-virtual {v0, v2, v1}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0, v4, v2}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(ILjava/lang/String;)V

    goto/16 :goto_60

    .line 1642
    :cond_18a
    if-ne p2, v1, :cond_1ac

    if-ne p1, v2, :cond_1ac

    .line 1643
    if-eqz p3, :cond_1a9

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1645
    :goto_196
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->D:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 1646
    if-eqz v1, :cond_231

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->H:Lcom/anddoes/launcher/jo;

    if-eqz v1, :cond_231

    .line 1647
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->H:Lcom/anddoes/launcher/jo;

    invoke-direct {p0, v0, v1, v5}, Lcom/anddoes/launcher/Launcher;->a(ILcom/anddoes/launcher/jo;Landroid/content/Intent;)V

    goto/16 :goto_60

    .line 1644
    :cond_1a9
    iget v0, p0, Lcom/anddoes/launcher/Launcher;->G:I

    goto :goto_196

    .line 1650
    :cond_1ac
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1c1

    .line 1651
    if-ne p2, v1, :cond_1b7

    .line 1652
    invoke-direct {p0, p3}, Lcom/anddoes/launcher/Launcher;->b(Landroid/content/Intent;)V

    goto/16 :goto_60

    .line 1654
    :cond_1b7
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iput-object v5, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    .line 1655
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iput-object v5, v0, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    goto/16 :goto_60

    .line 1658
    :cond_1c1
    if-ne p2, v1, :cond_208

    .line 1659
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-wide v0, v0, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_208

    .line 1660
    new-instance v0, Lcom/anddoes/launcher/ge;

    invoke-direct {v0, v4}, Lcom/anddoes/launcher/ge;-><init>(B)V

    .line 1661
    iput p1, v0, Lcom/anddoes/launcher/ge;->a:I

    .line 1662
    iput-object p3, v0, Lcom/anddoes/launcher/ge;->b:Landroid/content/Intent;

    .line 1663
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-wide v1, v1, Lcom/anddoes/launcher/ec;->j:J

    iput-wide v1, v0, Lcom/anddoes/launcher/ge;->c:J

    .line 1664
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->k:I

    iput v1, v0, Lcom/anddoes/launcher/ge;->d:I

    .line 1665
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->l:I

    iput v1, v0, Lcom/anddoes/launcher/ge;->e:I

    .line 1666
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->m:I

    iput v1, v0, Lcom/anddoes/launcher/ge;->f:I

    .line 1669
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ab()Z

    move-result v1

    if-eqz v1, :cond_202

    .line 1670
    sget-object v1, Lcom/anddoes/launcher/Launcher;->as:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    .line 1692
    :goto_1fa
    if-eqz p2, :cond_233

    move v0, v3

    :goto_1fd
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(ZZ)V

    goto/16 :goto_60

    .line 1672
    :cond_202
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/ge;)Z

    move-result v0

    move v1, v0

    goto :goto_1fa

    .line 1674
    :cond_208
    const/16 v0, 0x9

    if-eq p1, v0, :cond_211

    const/4 v0, 0x5

    if-eq p1, v0, :cond_211

    .line 1675
    if-ne p1, v2, :cond_231

    :cond_211
    if-nez p2, :cond_231

    .line 1676
    if-eqz p3, :cond_222

    .line 1678
    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1679
    if-eqz v0, :cond_222

    .line 1680
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/gk;->deleteAppWidgetId(I)V

    .line 1683
    :cond_222
    iget v0, p0, Lcom/anddoes/launcher/Launcher;->G:I

    if-eqz v0, :cond_231

    .line 1684
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    iget v1, p0, Lcom/anddoes/launcher/Launcher;->G:I

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/gk;->deleteAppWidgetId(I)V

    .line 1685
    iput v4, p0, Lcom/anddoes/launcher/Launcher;->G:I

    .line 1686
    iput-object v5, p0, Lcom/anddoes/launcher/Launcher;->H:Lcom/anddoes/launcher/jo;

    :cond_231
    move v1, v4

    goto :goto_1fa

    :cond_233
    move v0, v4

    .line 1692
    goto :goto_1fd
.end method

.method public final onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2292
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2293
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2296
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2297
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2298
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->aI:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2300
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->ab:Z

    .line 2301
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->aa:Z

    .line 2302
    return-void
.end method

.method public final onBackPressed()V
    .registers 3

    .prologue
    .line 3248
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-eq v0, v1, :cond_17

    .line 3250
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-boolean v0, v0, Lcom/anddoes/launcher/AppsCustomizePagedView;->e:Z

    if-eqz v0, :cond_12

    .line 3251
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->r()V

    .line 3269
    :goto_11
    return-void

    .line 3253
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto :goto_11

    .line 3255
    :cond_17
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 3256
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v0

    .line 3257
    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->a()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3258
    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->b()V

    goto :goto_11

    .line 3260
    :cond_2f
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    goto :goto_11

    .line 3263
    :cond_33
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->M()V

    .line 3267
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->r()V

    goto :goto_11
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 3298
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->d:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_9

    .line 3356
    :cond_8
    :goto_8
    return-void

    .line 3305
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3309
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->l()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3313
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3314
    instance-of v0, v1, Lcom/anddoes/launcher/kj;

    if-eqz v0, :cond_81

    .line 3315
    instance-of v0, p1, Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v0, :cond_2a

    move-object v0, p1

    .line 3316
    check-cast v0, Lcom/anddoes/launcher/BubbleTextView;

    .line 3317
    iget-boolean v0, v0, Lcom/anddoes/launcher/BubbleTextView;->a:Z

    if-nez v0, :cond_8

    :cond_2a
    move-object v0, v1

    .line 3322
    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 3323
    iget-object v2, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    .line 3324
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v3, v3, Lcom/anddoes/launcher/preference/f;->as:Z

    if-eqz v3, :cond_48

    .line 3325
    iget-wide v3, v0, Lcom/anddoes/launcher/kj;->j:J

    const-wide/16 v5, -0x65

    cmp-long v0, v3, v5

    if-nez v0, :cond_48

    .line 3326
    invoke-static {v2}, Lcom/anddoes/launcher/gg;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3327
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->c(I)V

    .line 3330
    :cond_48
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3331
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3332
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v0, v7

    aget v5, v0, v8

    aget v6, v0, v7

    .line 3333
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v0, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3332
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3334
    invoke-virtual {p0, v2, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    .line 3336
    if-eqz v0, :cond_71

    .line 3337
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;)V

    .line 3340
    :cond_71
    if-eqz v0, :cond_8

    instance-of v0, p1, Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v0, :cond_8

    .line 3341
    check-cast p1, Lcom/anddoes/launcher/BubbleTextView;

    iput-object p1, p0, Lcom/anddoes/launcher/Launcher;->aq:Lcom/anddoes/launcher/BubbleTextView;

    .line 3342
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aq:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v0, v8}, Lcom/anddoes/launcher/BubbleTextView;->a(Z)V

    goto :goto_8

    .line 3344
    :cond_81
    instance-of v0, v1, Lcom/anddoes/launcher/dd;

    if-eqz v0, :cond_f6

    .line 3345
    instance-of v0, p1, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v0, :cond_8

    .line 3346
    check-cast p1, Lcom/anddoes/launcher/FolderIcon;

    .line 3347
    iget-object v0, p1, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Workspace;->a(Ljava/lang/Object;)Lcom/anddoes/launcher/Folder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/anddoes/launcher/dd;->a:Z

    if-eqz v2, :cond_cf

    if-nez v1, :cond_cf

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/anddoes/launcher/dd;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/anddoes/launcher/dd;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/anddoes/launcher/dd;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, v0, Lcom/anddoes/launcher/dd;->a:Z

    :cond_cf
    iget-boolean v0, v0, Lcom/anddoes/launcher/dd;->a:Z

    if-nez v0, :cond_db

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/FolderIcon;)V

    goto/16 :goto_8

    :cond_db
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->d(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v1, v8}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Folder;Z)V

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v1

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/FolderIcon;)V

    goto/16 :goto_8

    .line 3349
    :cond_f6
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->M:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 3350
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    if-ne v0, v1, :cond_105

    .line 3351
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto/16 :goto_8

    .line 3353
    :cond_105
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto/16 :goto_8
.end method

.method public final onClickAllAppsButton(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 3417
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->e(Z)V

    .line 3418
    return-void
.end method

.method public final onClickMenuButton(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3429
    const-string v0, "SHOP"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3430
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->af:Landroid/content/Intent;

    if-eqz v0, :cond_18

    .line 3431
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->af:Landroid/content/Intent;

    const-string v1, "play store"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 3454
    :cond_18
    :goto_18
    return-void

    .line 3433
    :cond_19
    const-string v0, "MENU"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3434
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->b(Landroid/view/View;)V

    goto :goto_18

    .line 3436
    :cond_29
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    const-string v1, "drawer_tab_icon_intent"

    invoke-virtual {v0, v1, v3}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 3439
    const/4 v1, 0x0

    :try_start_3a
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 3440
    const-string v1, "drawer tab icon"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/net/URISyntaxException; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_18

    .line 3441
    :catch_44
    move-exception v0

    goto :goto_18

    .line 3445
    :cond_46
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    const-string v1, "drawer_tab_icon_pkg"

    invoke-virtual {v0, v1, v3}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3446
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    const-string v2, "drawer_tab_icon_act"

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3447
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 3448
    const-string v1, "drawer_tab_icon_pkg"

    const-string v2, "drawer_tab_icon_act"

    const-wide/16 v3, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/anddoes/launcher/Launcher;->b(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_18

    .line 3450
    :cond_74
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->b(Landroid/view/View;)V

    goto :goto_18
.end method

.method public final onClickSearchButton(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 3389
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3391
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->onSearchRequested()Z

    .line 3392
    return-void
.end method

.method public final onClickVoiceButton(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 3401
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3404
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3406
    const-string v1, "voice search"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 3407
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 3229
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->c(Z)V

    .line 3232
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 2630
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->e(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2631
    const/4 v0, 0x1

    .line 2632
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_b
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter

    .prologue
    const v10, 0x7f080052

    const v9, 0x7f080011

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1330
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1331
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/anddoes/launcher/ApexService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1333
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aH:Z

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3f0

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->n:Z

    new-instance v0, Lcom/anddoes/launcher/preference/f;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/f;-><init>(Lcom/anddoes/launcher/Launcher;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/f;->a()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->aT:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/anddoes/launcher/ia;->b(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/anddoes/launcher/c/l;

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    invoke-direct {v0, p0, v3}, Lcom/anddoes/launcher/c/l;-><init>(Landroid/content/Context;Lcom/anddoes/launcher/preference/f;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    new-instance v0, Lcom/anddoes/launcher/preference/a;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->j:Lcom/anddoes/launcher/preference/a;

    new-instance v0, Lcom/anddoes/launcher/preference/az;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/az;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v0, Lcom/anddoes/launcher/preference/c;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->l:Lcom/anddoes/launcher/preference/c;

    const-string v0, "NEVER"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "LANDSCAPE_ONLY"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-static {p0}, Lcom/anddoes/launcher/LauncherApplication;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7d

    :cond_7b
    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->i:Z

    .line 1334
    :cond_7d
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->p()Z

    .line 1336
    invoke-static {}, Lcom/anddoes/launcher/gg;->a()Lcom/anddoes/launcher/gg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/gg;->a(Lcom/anddoes/launcher/Launcher;)V

    .line 1337
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    .line 1338
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/LauncherApplication;->a(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/LauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    .line 1339
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iput-object v3, v0, Lcom/anddoes/launcher/LauncherModel;->a:Lcom/anddoes/launcher/c/l;

    .line 1340
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->a()Lcom/anddoes/launcher/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->Y:Lcom/anddoes/launcher/ds;

    .line 1341
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Y:Lcom/anddoes/launcher/ds;

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iput-object v3, v0, Lcom/anddoes/launcher/ds;->a:Lcom/anddoes/launcher/c/l;

    .line 1342
    new-instance v0, Lcom/anddoes/launcher/bm;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/bm;-><init>(Lcom/anddoes/launcher/Launcher;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->C:Lcom/anddoes/launcher/bm;

    .line 1343
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->a:Landroid/view/LayoutInflater;

    .line 1345
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->D:Landroid/appwidget/AppWidgetManager;

    .line 1346
    new-instance v0, Lcom/anddoes/launcher/gk;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/gk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    .line 1347
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    new-instance v3, Lcom/anddoes/launcher/ft;

    invoke-direct {v3, p0}, Lcom/anddoes/launcher/ft;-><init>(Lcom/anddoes/launcher/Launcher;)V

    .line 1356
    const-wide/16 v4, 0xbb8

    .line 1347
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1357
    invoke-static {p0}, Lcom/anddoes/launcher/t;->a(Landroid/content/Context;)Lcom/anddoes/launcher/t;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->F:Lcom/anddoes/launcher/t;

    .line 1358
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->aA:Landroid/os/Vibrator;

    .line 1365
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->Y()V

    .line 1366
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->setContentView(I)V

    .line 1367
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->Z()V

    .line 1369
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/anddoes/launcher/LauncherProvider;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->x:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1371
    iput-object p1, p0, Lcom/anddoes/launcher/Launcher;->P:Landroid/os/Bundle;

    .line 1374
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->P:Landroid/os/Bundle;

    if-eqz v0, :cond_1a2

    const-string v3, "launcher.state"

    sget-object v4, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    invoke-virtual {v4}, Lcom/anddoes/launcher/gf;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/anddoes/launcher/Launcher;->d(I)Lcom/anddoes/launcher/gf;

    move-result-object v3

    sget-object v4, Lcom/anddoes/launcher/gf;->b:Lcom/anddoes/launcher/gf;

    if-ne v3, v4, :cond_115

    invoke-direct {p0, v2}, Lcom/anddoes/launcher/Launcher;->e(Z)V

    :cond_115
    const-string v3, "launcher.current_screen"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_122

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v4, v3}, Lcom/anddoes/launcher/Workspace;->m(I)V

    :cond_122
    const-string v3, "launcher.add_container"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "launcher.add_screen"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_156

    if-ltz v5, :cond_156

    iget-object v6, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput-wide v3, v6, Lcom/anddoes/launcher/ec;->j:J

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iput v5, v3, Lcom/anddoes/launcher/ec;->k:I

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    const-string v4, "launcher.add_cell_x"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/anddoes/launcher/ec;->l:I

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    const-string v4, "launcher.add_cell_y"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/anddoes/launcher/ec;->m:I

    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->T:Z

    :cond_156
    const-string v3, "launcher.rename_folder"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_170

    const-string v3, "launcher.rename_folder_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    sget-object v5, Lcom/anddoes/launcher/Launcher;->ae:Ljava/util/HashMap;

    invoke-static {p0, v5, v3, v4}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/anddoes/launcher/dd;

    move-result-object v3

    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->K:Lcom/anddoes/launcher/dd;

    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->T:Z

    :cond_170
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    if-eqz v3, :cond_1a2

    const-string v3, "apps_customize_currentTab"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_197

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-object v5, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-static {v3}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->a(Ljava/lang/String;)Lcom/anddoes/launcher/af;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(Lcom/anddoes/launcher/af;)V

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v4, v3}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->w()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/anddoes/launcher/AppsCustomizePagedView;->t(I)V

    :cond_197
    const-string v3, "apps_customize_currentIndex"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->a(I)V

    .line 1377
    :cond_1a2
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v0, :cond_1ab

    .line 1378
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->e()V

    .line 1385
    :cond_1ab
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->T:Z

    if-nez v0, :cond_1b4

    .line 1386
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {v0, p0, v1}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Z)V

    .line 1389
    :cond_1b4
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherModel;->h()Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 1390
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    .line 1391
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1390
    check-cast v0, Landroid/view/ViewGroup;

    .line 1392
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->a:Landroid/view/LayoutInflater;

    const v4, 0x7f03000b

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1397
    :cond_1cc
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    .line 1398
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1400
    new-instance v0, Landroid/content/IntentFilter;

    .line 1401
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1400
    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1402
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/anddoes/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1408
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ae()I

    move-result v4

    .line 1409
    sget-object v0, Lcom/anddoes/launcher/Launcher;->an:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v0, v0, v4

    if-eqz v0, :cond_1fa

    sget-object v0, Lcom/anddoes/launcher/Launcher;->ao:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v0, v0, v4

    if-eqz v0, :cond_1fa

    .line 1410
    sget-object v0, Lcom/anddoes/launcher/Launcher;->ap:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v0, v0, v4

    if-nez v0, :cond_443

    .line 1411
    :cond_1fa
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ag()V

    .line 1412
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->af()Z

    move-result v3

    .line 1413
    invoke-direct {p0, v3}, Lcom/anddoes/launcher/Launcher;->h(Z)Z

    move-result v0

    move v11, v0

    move v0, v3

    move v3, v11

    .line 1415
    :goto_208
    sget-object v5, Lcom/anddoes/launcher/Launcher;->an:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v5, v5, v4

    if-eqz v5, :cond_226

    .line 1416
    sget-object v0, Lcom/anddoes/launcher/Launcher;->an:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v5, v0, v4

    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v10}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v10, v5}, Lcom/anddoes/launcher/Launcher;->a(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    invoke-static {v6, v0}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;Landroid/view/View;)V

    move v0, v1

    .line 1419
    :cond_226
    sget-object v5, Lcom/anddoes/launcher/Launcher;->ao:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v5, v5, v4

    if-eqz v5, :cond_440

    .line 1420
    sget-object v3, Lcom/anddoes/launcher/Launcher;->ao:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v3, v3, v4

    const v4, 0x7f080057

    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080054

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f080054

    invoke-direct {p0, v6, v3}, Lcom/anddoes/launcher/Launcher;->a(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    invoke-static {v4, v5}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;Landroid/view/View;)V

    .line 1426
    :goto_247
    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v3, v0, v1}, Lcom/anddoes/launcher/SearchDropTargetBar;->a(ZZ)V

    .line 1431
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_25c

    .line 1432
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25f

    .line 1433
    :cond_25c
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Launcher;->setRequestedOrientation(I)V

    .line 1435
    :cond_25f
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Launcher;->p:I

    new-instance v0, Lcom/anddoes/launcher/ig;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/ig;-><init>(Lcom/anddoes/launcher/Launcher;)V

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aK:Z

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ig;->a(Z)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aM:Z

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ig;->b(Z)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aO:Z

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ig;->c(Z)V

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->i:Z

    if-eqz v0, :cond_2b5

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getPaddingLeft()I

    move-result v0

    const v1, 0x7f080039

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2a4

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    :cond_2a4
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Workspace;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v4}, Lcom/anddoes/launcher/Workspace;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/anddoes/launcher/Workspace;->setPadding(IIII)V

    :cond_2b5
    invoke-virtual {p0, v9}, Lcom/anddoes/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    if-eqz v0, :cond_2d0

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->aw:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    const-string v3, "scroll_indicator_holo"

    invoke-virtual {v0, v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(Landroid/view/View;ILjava/lang/String;)V

    :cond_2d0
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0, v9}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->ax:Landroid/view/View;

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->ax:Landroid/view/View;

    if-eqz v0, :cond_2ed

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->ax:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->ay:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->ax:Landroid/view/View;

    const-string v3, "scroll_indicator_holo"

    invoke-virtual {v0, v1, v2, v3}, Lcom/anddoes/launcher/c/l;->a(Landroid/view/View;ILjava/lang/String;)V

    :cond_2ed
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    if-eqz v0, :cond_304

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->g:Lcom/anddoes/launcher/c/l;

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v0, :cond_3f3

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_3f3

    const-string v0, "dock_divider_land"

    :goto_301
    invoke-virtual {v1, v3, v2, v0}, Lcom/anddoes/launcher/c/l;->a(Landroid/view/View;ILjava/lang/String;)V

    :cond_304
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v1, v1, Lcom/anddoes/launcher/preference/f;->i:I

    iput v1, v0, Lcom/anddoes/launcher/Workspace;->aj:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->b()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->c()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->g()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->i()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    if-eqz v0, :cond_3be

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aa:Z

    if-nez v0, :cond_3be

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v1, 0x7f0c0050

    const v0, 0x7f0c0053

    const-string v2, "NONE"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->U:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f7

    const v1, 0x7f0c0048

    const v0, 0x7f0c004b

    move v11, v0

    move v0, v1

    move v1, v11

    :goto_341
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->getPaddingRight()I

    move-result v4

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v6

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v0, :cond_425

    if-nez v6, :cond_425

    move v0, v2

    move v2, v3

    :goto_35d
    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v7, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v7}, Lcom/anddoes/launcher/Workspace;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v8}, Lcom/anddoes/launcher/Workspace;->getPaddingTop()I

    move-result v8

    invoke-virtual {v4, v7, v8, v2, v0}, Lcom/anddoes/launcher/Workspace;->setPadding(IIII)V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    if-eqz v0, :cond_382

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v2, :cond_429

    if-nez v6, :cond_429

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_382
    :goto_382
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    if-eqz v0, :cond_3a2

    const-string v0, "AUTO"

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v2, v2, Lcom/anddoes/launcher/preference/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a2

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v0, :cond_398

    if-eqz v6, :cond_3a2

    :cond_398
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->av:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_3a2
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->n:Z

    if-eqz v0, :cond_42d

    if-nez v6, :cond_42d

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_3b4
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->requestLayout()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/anddoes/launcher/DragLayer;->requestLayout()V

    :cond_3be
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->aa:Z

    if-eqz v0, :cond_3c7

    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->S()V

    :cond_3c7
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->f()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->h()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->l()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->e()V

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->d()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->V:Z

    if-eqz v0, :cond_3df

    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->T()V

    :cond_3df
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Launcher;->aD:I

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Launcher;->aE:I

    .line 1436
    return-void

    :cond_3f0
    move v0, v2

    .line 1333
    goto/16 :goto_2a

    .line 1435
    :cond_3f3
    const-string v0, "dock_divider_port"

    goto/16 :goto_301

    :cond_3f7
    const-string v2, "SMALL"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->U:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40e

    const v1, 0x7f0c004c

    const v0, 0x7f0c004f

    move v11, v0

    move v0, v1

    move v1, v11

    goto/16 :goto_341

    :cond_40e
    const-string v2, "LARGE"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->U:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43b

    const v1, 0x7f0c0054

    const v0, 0x7f0c0057

    move v11, v0

    move v0, v1

    move v1, v11

    goto/16 :goto_341

    :cond_425
    move v0, v3

    move v2, v4

    goto/16 :goto_35d

    :cond_429
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_382

    :cond_42d
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->L:Lcom/anddoes/launcher/Hotseat;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_3b4

    :cond_43b
    move v11, v0

    move v0, v1

    move v1, v11

    goto/16 :goto_341

    :cond_440
    move v1, v3

    goto/16 :goto_247

    :cond_443
    move v3, v2

    move v0, v2

    goto/16 :goto_208
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2626
    :cond_8
    :goto_8
    return-void

    .line 2621
    :cond_9
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v1, Lcom/anddoes/launcher/gf;->d:Lcom/anddoes/launcher/gf;

    if-eq v0, v1, :cond_8

    .line 2624
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/Menu;)Z

    .line 2625
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->b(Landroid/view/Menu;)V

    goto :goto_8
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 3818
    packed-switch p1, :pswitch_data_14

    .line 3823
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 3820
    :pswitch_8
    new-instance v0, Lcom/anddoes/launcher/fy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/fy;-><init>(Lcom/anddoes/launcher/Launcher;B)V

    invoke-virtual {v0}, Lcom/anddoes/launcher/fy;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 3818
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 2637
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onDestroy()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2538
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2539
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/f;->b()V

    .line 2541
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->o:Lcom/anddoes/launcher/ig;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ig;->b()V

    .line 2543
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2544
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aJ:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2545
    invoke-direct {p0, v2}, Lcom/anddoes/launcher/Launcher;->c(Z)V

    .line 2546
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->ar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2549
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    .line 2550
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/anddoes/launcher/LauncherModel;->g()V

    .line 2551
    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/LauncherApplication;->a(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/LauncherModel;

    .line 2554
    :try_start_32
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    invoke-virtual {v0}, Lcom/anddoes/launcher/gk;->stopListening()V
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_37} :catch_74

    .line 2558
    :goto_37
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    .line 2560
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->al:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2562
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 2564
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherModel;->b()V

    .line 2566
    :cond_4e
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->x:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2567
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2569
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2570
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->removeAllViews()V

    .line 2571
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    .line 2572
    iput-object v3, p0, Lcom/anddoes/launcher/Launcher;->C:Lcom/anddoes/launcher/bm;

    .line 2574
    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    .line 2575
    return-void

    .line 2555
    :catch_74
    move-exception v0

    .line 2556
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2307
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 2308
    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->aa:Z

    .line 2310
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/anddoes/launcher/DragLayer;->a()V

    .line 2312
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->ab:Z

    if-eqz v0, :cond_16

    .line 2313
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aI:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2314
    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->ab:Z

    .line 2316
    :cond_16
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->aa()V

    .line 2317
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1818
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 1819
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1820
    if-lez v0, :cond_47

    .line 1821
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_47

    move v4, v3

    .line 1822
    :goto_13
    if-nez v1, :cond_4b

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v2

    :goto_24
    if-eqz v0, :cond_4b

    if-eqz v4, :cond_4b

    .line 1823
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    .line 1824
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    .line 1823
    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1825
    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4b

    .line 1833
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->onSearchRequested()Z

    move-result v0

    .line 1842
    :goto_46
    return v0

    :cond_47
    move v4, v2

    .line 1821
    goto :goto_13

    :cond_49
    move v0, v3

    .line 1822
    goto :goto_24

    .line 1838
    :cond_4b
    const/16 v0, 0x52

    if-ne p1, v0, :cond_5a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1839
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->onSearchRequested()Z

    move-result v0

    goto :goto_46

    :cond_5a
    move v0, v1

    .line 1842
    goto :goto_46
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3727
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v3, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-eq v0, v3, :cond_a

    move v0, v1

    .line 3775
    :goto_9
    return v0

    .line 3731
    :cond_a
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ab()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 3732
    goto :goto_9

    .line 3735
    :cond_12
    instance-of v0, p1, Lcom/anddoes/launcher/CellLayout;

    if-nez v0, :cond_21

    .line 3736
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 3739
    :cond_21
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ac()V

    .line 3740
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/az;

    .line 3742
    if-nez v0, :cond_2e

    move v0, v2

    .line 3743
    goto :goto_9

    .line 3749
    :cond_2e
    iget-object v3, v0, Lcom/anddoes/launcher/az;->a:Landroid/view/View;

    .line 3750
    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v4, v4, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v4, :cond_45

    .line 3751
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Launcher;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_44

    iget-object v4, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v4}, Lcom/anddoes/launcher/Workspace;->F()Z

    move-result v4

    if-eqz v4, :cond_45

    :cond_44
    move v1, v2

    .line 3750
    :cond_45
    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->C:Lcom/anddoes/launcher/bm;

    invoke-virtual {v1}, Lcom/anddoes/launcher/bm;->d()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 3753
    if-nez v3, :cond_94

    .line 3754
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->au:Z

    if-eqz v1, :cond_5c

    .line 3758
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->c(I)V

    .line 3760
    :cond_5c
    const-string v1, "ADD_DIALOG"

    iget-object v3, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v3, v3, Lcom/anddoes/launcher/preference/f;->ar:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 3761
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/az;)V

    :cond_6b
    :goto_6b
    move v0, v2

    .line 3775
    goto :goto_9

    .line 3762
    :cond_6d
    const-string v0, "WALLPAPER"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 3763
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->k:Z

    if-eqz v0, :cond_83

    .line 3764
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ad()V

    goto :goto_6b

    .line 3765
    :cond_83
    const-string v0, "APEX_MENU"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 3766
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->b(Landroid/view/View;)V

    goto :goto_6b

    .line 3769
    :cond_94
    instance-of v1, v3, Lcom/anddoes/launcher/Folder;

    if-nez v1, :cond_6b

    .line 3771
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/az;)V

    goto :goto_6b
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const/high16 v4, 0x40

    const/4 v2, 0x0

    .line 2436
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2437
    if-nez p1, :cond_9

    .line 2481
    :cond_8
    :goto_8
    return-void

    .line 2443
    :cond_9
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2445
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->x()V

    .line 2446
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v3

    .line 2447
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 2448
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->G()V

    .line 2449
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_74

    const/4 v0, 0x1

    move v1, v0

    .line 2452
    :goto_2d
    :try_start_2d
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v4

    .line 2453
    if-eqz v4, :cond_4d

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 2454
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2455
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2457
    :cond_4d
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aF:Landroid/app/Dialog;

    if-eqz v0, :cond_59

    .line 2458
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aF:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/Launcher;->aF:Landroid/app/Dialog;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_59} :catch_8f

    .line 2465
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->M()V

    .line 2466
    if-eqz v1, :cond_76

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_76

    if-nez v3, :cond_76

    .line 2467
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->ai:Ljava/lang/String;

    const-string v1, "HOME_KEY"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    :goto_71
    iput-boolean v2, p0, Lcom/anddoes/launcher/Launcher;->U:Z

    goto :goto_8

    :cond_74
    move v1, v2

    .line 2449
    goto :goto_2d

    .line 2469
    :cond_76
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    goto :goto_71

    .line 2478
    :cond_7a
    const-string v0, "com.anddoes.launcher.ACTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2479
    invoke-static {}, Lcom/anddoes/launcher/gg;->a()Lcom/anddoes/launcher/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/gg;->a(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2461
    :catch_8f
    move-exception v0

    goto :goto_59
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 2817
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/Launcher;->e(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2818
    const/4 v0, 0x1

    .line 2820
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_b
.end method

.method protected final onPause()V
    .registers 2

    .prologue
    .line 1764
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->S:Z

    .line 1767
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->C:Lcom/anddoes/launcher/bm;

    invoke-virtual {v0}, Lcom/anddoes/launcher/bm;->e()V

    .line 1768
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->r()V

    .line 1769
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2800
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2802
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v1}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2812
    :cond_c
    :goto_c
    return v0

    .line 2805
    :cond_d
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v2, Lcom/anddoes/launcher/gf;->d:Lcom/anddoes/launcher/gf;

    if-eq v1, v2, :cond_c

    .line 2806
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    sget-object v2, Lcom/anddoes/launcher/gf;->e:Lcom/anddoes/launcher/gf;

    if-eq v1, v2, :cond_c

    .line 2810
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/Launcher;->b(Landroid/view/Menu;)V

    .line 2812
    const/4 v0, 0x1

    goto :goto_c
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 2486
    iput-object p1, p0, Lcom/anddoes/launcher/Launcher;->W:Landroid/os/Bundle;

    .line 2489
    return-void
.end method

.method protected final onResume()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1698
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1699
    iput-boolean v6, p0, Lcom/anddoes/launcher/Launcher;->S:Z

    .line 1701
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->T:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->V:Z

    if-eqz v0, :cond_1a

    .line 1702
    :cond_f
    iput-boolean v1, p0, Lcom/anddoes/launcher/Launcher;->R:Z

    .line 1703
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {v0, p0, v1}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Z)V

    .line 1704
    iput-boolean v6, p0, Lcom/anddoes/launcher/Launcher;->T:Z

    .line 1705
    iput-boolean v6, p0, Lcom/anddoes/launcher/Launcher;->V:Z

    .line 1707
    :cond_1a
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aq:Lcom/anddoes/launcher/BubbleTextView;

    if-eqz v0, :cond_23

    .line 1708
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->aq:Lcom/anddoes/launcher/BubbleTextView;

    invoke-virtual {v0, v6}, Lcom/anddoes/launcher/BubbleTextView;->a(Z)V

    .line 1712
    :cond_23
    invoke-direct {p0}, Lcom/anddoes/launcher/Launcher;->ag()V

    .line 1713
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->g()V

    .line 1714
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->R:Z

    if-nez v0, :cond_3f

    .line 1715
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1716
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    .line 1721
    new-instance v2, Lcom/anddoes/launcher/ee;

    invoke-direct {v2, p0, v1, v0}, Lcom/anddoes/launcher/ee;-><init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/Workspace;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1741
    :cond_3f
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1743
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v4, v0, Lcom/anddoes/launcher/preference/f;->aW:Ljava/lang/String;

    .line 1744
    const-string v0, "NEVER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 1746
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-wide v0, v0, Lcom/anddoes/launcher/preference/f;->aX:J

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_9d

    .line 1748
    :try_start_6a
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1749
    new-instance v0, Lcom/anddoes/launcher/bb;

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/bb;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/bb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1750
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anddoes/launcher/preference/f;->aX:J

    .line 1751
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v0, v0, Lcom/anddoes/launcher/preference/f;->a:Lcom/anddoes/launcher/preference/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_check_update"

    invoke-virtual {v0, v3, v1, v2}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;J)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_9d} :catch_a1

    .line 1757
    :cond_9d
    :goto_9d
    invoke-direct {p0, v6}, Lcom/anddoes/launcher/Launcher;->c(Z)V

    .line 1758
    return-void

    :catch_a1
    move-exception v0

    goto :goto_9d
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherModel;->g()V

    .line 1777
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v0, :cond_e

    .line 1778
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->n()V

    .line 1780
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 2494
    const-string v0, "launcher.current_screen"

    .line 2496
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v1

    .line 2495
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2497
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2499
    const-string v0, "launcher.state"

    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->q:Lcom/anddoes/launcher/gf;

    invoke-virtual {v1}, Lcom/anddoes/launcher/gf;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2503
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->z()V

    .line 2505
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-wide v0, v0, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_54

    .line 2506
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v0, v0, Lcom/anddoes/launcher/ec;->k:I

    if-ltz v0, :cond_54

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->U:Z

    if-eqz v0, :cond_54

    .line 2507
    const-string v0, "launcher.add_container"

    .line 2508
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget-wide v1, v1, Lcom/anddoes/launcher/ec;->j:J

    .line 2507
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2509
    const-string v0, "launcher.add_screen"

    .line 2510
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->k:I

    .line 2509
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2511
    const-string v0, "launcher.add_cell_x"

    .line 2512
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->l:I

    .line 2511
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2513
    const-string v0, "launcher.add_cell_y"

    .line 2514
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->I:Lcom/anddoes/launcher/ec;

    iget v1, v1, Lcom/anddoes/launcher/ec;->m:I

    .line 2513
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2517
    :cond_54
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->K:Lcom/anddoes/launcher/dd;

    if-eqz v0, :cond_6b

    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->U:Z

    if-eqz v0, :cond_6b

    .line 2518
    const-string v0, "launcher.rename_folder"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2519
    const-string v0, "launcher.rename_folder_id"

    .line 2520
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->K:Lcom/anddoes/launcher/dd;

    iget-wide v1, v1, Lcom/anddoes/launcher/dd;->h:J

    .line 2519
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2524
    :cond_6b
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    if-eqz v0, :cond_87

    .line 2525
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 2526
    if-eqz v0, :cond_7c

    .line 2527
    const-string v1, "apps_customize_currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    :cond_7c
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->c:Lcom/anddoes/launcher/AppsCustomizePagedView;

    .line 2530
    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizePagedView;->d()I

    move-result v0

    .line 2531
    const-string v1, "apps_customize_currentIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2533
    :cond_87
    return-void
.end method

.method public final onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2825
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2827
    const v0, 0x7f040001

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->overridePendingTransition(II)V

    .line 2828
    return v2
.end method

.method protected final onStart()V
    .registers 3

    .prologue
    .line 1315
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1316
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-boolean v0, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    if-eqz v0, :cond_16

    .line 1318
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    .line 1319
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1324
    :goto_15
    return-void

    .line 1323
    :cond_16
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/Launcher"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 3374
    const/4 v0, 0x0

    return v0
.end method

.method public final onTouchDownAllAppsButton(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->as:Z

    if-eqz v0, :cond_b

    .line 3423
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->c(I)V

    .line 3426
    :cond_b
    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 3
    .parameter

    .prologue
    .line 4298
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 4299
    const/16 v0, 0x14

    if-ne p1, v0, :cond_c

    .line 4301
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->b:Lcom/anddoes/launcher/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->h()V

    .line 4303
    :cond_c
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1786
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1787
    if-eqz p1, :cond_1c

    .line 1789
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aC:Z

    if-eqz v0, :cond_1c

    .line 1790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aC:Z

    .line 1791
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aB:Z

    if-nez v0, :cond_1c

    .line 1792
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aB:Z

    .line 1797
    :cond_1c
    return-void
.end method

.method public final p()Z
    .registers 2

    .prologue
    .line 1441
    invoke-static {p0}, Lcom/anddoes/launcher/a/e;->a(Landroid/content/Context;)Lcom/anddoes/launcher/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/e;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aG:Z

    .line 1442
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aG:Z

    return v0
.end method

.method public final q()Z
    .registers 2

    .prologue
    .line 1446
    iget-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->aG:Z

    return v0
.end method

.method public final r()Lcom/anddoes/launcher/DragLayer;
    .registers 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->B:Lcom/anddoes/launcher/DragLayer;

    return-object v0
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2584
    if-ltz p2, :cond_5

    .line 2585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/Launcher;->U:Z

    .line 2587
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2588
    return-void
.end method

.method public final startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2598
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->b(Z)V

    .line 2600
    if-nez p1, :cond_87

    .line 2602
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->Q:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2604
    :goto_c
    if-nez p3, :cond_85

    .line 2605
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2606
    const-string v0, "source"

    const-string v2, "launcher-search"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    :goto_1a
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2611
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 2612
    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->N:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v2}, Lcom/anddoes/launcher/SearchDropTargetBar;->e()Landroid/graphics/Rect;

    move-result-object v5

    .line 2610
    const/4 v2, 0x0

    :try_start_2d
    const-class v6, Landroid/app/SearchManager;

    const-string v7, "startSearch"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Boolean;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Landroid/content/ComponentName;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Landroid/os/Bundle;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-class v10, Ljava/lang/Boolean;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-class v10, Landroid/graphics/Rect;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v8, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v5, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_76} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_76} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_76} :catch_7f

    const/4 v2, 0x1

    :goto_77
    if-nez v2, :cond_7e

    move v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 2613
    :cond_7e
    return-void

    :catch_7f
    move-exception v5

    goto :goto_77

    .line 2610
    :catch_81
    move-exception v5

    goto :goto_77

    :catch_83
    move-exception v5

    goto :goto_77

    :cond_85
    move-object v4, p3

    goto :goto_1a

    :cond_87
    move-object v1, p1

    goto :goto_c
.end method

.method public final t()V
    .registers 5

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030036

    iget-object v2, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 1934
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->a(Z)V

    .line 1935
    iget-object v1, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Workspace;->addView(Landroid/view/View;)V

    .line 1936
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anddoes/launcher/Workspace;->aB:[F

    .line 1937
    return-void
.end method

.method final u()V
    .registers 3

    .prologue
    .line 2400
    const v0, 0x7f060263

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2401
    const/4 v1, 0x0

    .line 2400
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2401
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2402
    return-void
.end method

.method public final v()Lcom/anddoes/launcher/gk;
    .registers 2

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->E:Lcom/anddoes/launcher/gk;

    return-object v0
.end method

.method public final w()Lcom/anddoes/launcher/LauncherModel;
    .registers 2

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->X:Lcom/anddoes/launcher/LauncherModel;

    return-object v0
.end method

.method final x()V
    .registers 2

    .prologue
    .line 2414
    :try_start_0
    invoke-virtual {p0}, Lcom/anddoes/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 2415
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/Launcher;->dismissDialog(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 2432
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public final y()Lcom/anddoes/launcher/bm;
    .registers 2

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->C:Lcom/anddoes/launcher/bm;

    return-object v0
.end method

.method public final z()V
    .registers 3

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/anddoes/launcher/Launcher;->y:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v0

    .line 3703
    if-eqz v0, :cond_15

    .line 3704
    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3705
    invoke-virtual {v0}, Lcom/anddoes/launcher/Folder;->b()V

    .line 3707
    :cond_11
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Folder;Z)V

    .line 3709
    :cond_15
    return-void
.end method
