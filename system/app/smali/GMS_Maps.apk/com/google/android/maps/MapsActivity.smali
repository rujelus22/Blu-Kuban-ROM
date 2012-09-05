.class public Lcom/google/android/maps/MapsActivity;
.super Lcom/google/googlenav/android/BaseMapsActivity;

# interfaces
.implements LaY/ac;
.implements Lcom/google/googlenav/android/T;
.implements Lcom/google/googlenav/android/aa;
.implements Lcom/google/googlenav/android/ai;


# static fields
.field private static A:Lar/u;

.field private static D:I

.field private static final g:Landroid/content/IntentFilter;

.field private static final h:Landroid/content/IntentFilter;

.field private static final k:Laf/a;

.field private static final m:Lar/u;

.field private static final n:Lar/u;

.field private static final o:Lar/u;

.field private static final p:Lar/u;

.field private static final q:Lar/u;

.field private static final r:Lar/u;

.field private static final s:Lar/u;

.field private static final t:Lar/u;

.field private static final u:Lar/u;

.field private static final v:Lar/u;

.field private static final w:Lar/u;

.field private static final x:Lar/u;

.field private static y:Lar/u;

.field private static z:Lar/u;


# instance fields
.field private B:Lcom/google/android/maps/u;

.field private C:LaP/h;

.field private E:Lcom/google/android/maps/t;

.field private F:Z

.field private G:Lcom/google/googlenav/ui/view/android/cb;

.field private H:Z

.field private I:Lap/d;

.field private a:Lcom/google/googlenav/ui/android/BaseAndroidView;

.field private b:Lcom/google/googlenav/ui/android/ButtonContainer;

.field private c:Lcom/google/googlenav/android/Q;

.field private d:Lcom/google/googlenav/android/af;

.field private e:Ljava/util/List;

.field private final f:Landroid/content/BroadcastReceiver;

.field private final i:Landroid/content/BroadcastReceiver;

.field private final j:Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x16

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->g:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->h:Landroid/content/IntentFilter;

    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup remote strings"

    const-string v3, "guid"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->m:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup remote strings vm"

    const-string v3, "guid_vm"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->n:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup cold"

    const-string v3, "guif"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->o:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup cold vm"

    const-string v3, "guif_vm"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->p:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup after back"

    const-string v3, "guir"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->q:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup after back vm"

    const-string v3, "guir_vm"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->r:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup hot"

    const-string v3, "guis"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->s:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup hot vm"

    const-string v3, "guis_vm"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->t:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup screen on"

    const-string v3, "guip"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->u:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup screen on vm"

    const-string v3, "guip_vm"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->v:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup after brief pause"

    const-string v3, "guib"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->w:Lar/u;

    new-instance v0, Lar/u;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    const-string v2, "startup after brief pause vm"

    const-string v3, "guib_vm"

    invoke-direct {v0, v1, v2, v3, v4}, Lar/u;-><init>(Laf/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->x:Lar/u;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/maps/MapsActivity;->D:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/android/BaseMapsActivity;-><init>()V

    new-instance v0, Lcom/google/android/maps/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/a;-><init>(Lcom/google/android/maps/MapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/android/maps/l;

    invoke-direct {v0, p0}, Lcom/google/android/maps/l;-><init>(Lcom/google/android/maps/MapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->i:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

    invoke-direct {v0}, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->j:Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->l:J

    sget-object v0, Lcom/google/android/maps/u;->a:Lcom/google/android/maps/u;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->B:Lcom/google/android/maps/u;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->H:Z

    return-void
.end method

.method private A()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ce;->a()Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->c()V

    return-void
.end method

.method private B()V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/cb;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/cb;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cb;->show()V

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/D;)V

    return-void
.end method

.method private C()Lcom/google/googlenav/android/AndroidGmmApplication;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    return-object v0
.end method

.method private D()V
    .registers 6

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aA()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aB()Z

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/k;->a()Lcom/google/googlenav/login/k;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/s;

    invoke-direct {v2, p0, v0}, Lcom/google/android/maps/s;-><init>(Lcom/google/android/maps/MapsActivity;Z)V

    invoke-virtual {v1, p0, v2}, Lcom/google/googlenav/login/k;->a(Landroid/app/Activity;Lcom/google/googlenav/login/p;)V

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->n()Lcom/google/googlenav/ui/android/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/z;->a(Landroid/view/View;)V

    :cond_34
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/maps/MapsActivity;->H:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->g(Z)V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->requestFocus()Z

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->c()V

    :cond_4b
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->A()V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->E()V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->u()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    :cond_78
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->I()V

    :cond_7b
    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->H:Z

    if-nez v0, :cond_8f

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/android/maps/b;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/y;->a:Lcom/google/googlenav/y;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/google/android/maps/b;-><init>(Lcom/google/android/maps/MapsActivity;ZZLcom/google/googlenav/y;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    iput-boolean v4, p0, Lcom/google/android/maps/MapsActivity;->H:Z

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    invoke-virtual {v0}, Lap/d;->c()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    goto :goto_8e
.end method

.method private E()V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    sget-object v3, Lcom/google/android/maps/t;->b:Lcom/google/android/maps/t;

    if-ne v0, v3, :cond_38

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/android/l;->m()Lcom/google/android/maps/t;

    move-result-object v3

    if-ne v0, v3, :cond_38

    move v0, v1

    :goto_15
    iget-boolean v3, p0, Lcom/google/android/maps/MapsActivity;->F:Z

    if-eqz v3, :cond_37

    if-eqz v0, :cond_3a

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->P()J

    move-result-wide v5

    const-wide/32 v7, 0xdbba0

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_3a

    :cond_37
    :goto_37
    return-void

    :cond_38
    move v0, v2

    goto :goto_15

    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    const/high16 v3, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_37

    :cond_53
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->v()V

    iget-object v3, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    sget-object v4, Lcom/google/android/maps/t;->a:Lcom/google/android/maps/t;

    if-ne v3, v4, :cond_72

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hS;->Z()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->l()I

    goto :goto_37

    :cond_72
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->aA()V

    sget-object v3, Lcom/google/android/maps/k;->a:[I

    iget-object v4, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    invoke-virtual {v4}, Lcom/google/android/maps/t;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_f4

    goto :goto_37

    :pswitch_87
    const/16 v0, 0x57

    const-string v3, "o"

    invoke-static {v0, v3}, Laf/m;->a(ILjava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/at;->a(Z)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_b5

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    :cond_b5
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(I)V

    goto/16 :goto_37

    :pswitch_be
    const/16 v0, 0x3d

    const-string v1, "li"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->c(LaY/Y;)V

    goto/16 :goto_37

    :pswitch_d2
    const-string v1, "latitude_settings_launch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_e0

    sget-object v0, Lcom/google/android/maps/t;->a:Lcom/google/android/maps/t;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    goto/16 :goto_37

    :cond_e0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "latitude_settings_launch"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_87
        :pswitch_be
        :pswitch_d2
    .end packed-switch
.end method

.method private F()Lcom/google/googlenav/ui/D;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    return-object v0
.end method

.method private G()LaJ/u;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->j()LaJ/u;

    move-result-object v0

    return-object v0
.end method

.method private H()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aH()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lcom/google/googlenav/android/l;->a(Lcom/google/android/maps/MapsActivity;Z)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/D;->n(Z)V

    :cond_15
    return-void
.end method

.method private I()V
    .registers 5

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/android/maps/j;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/maps/j;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;Lap/d;)Lap/d;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;Lcom/google/android/maps/u;)Lcom/google/android/maps/u;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/MapsActivity;->B:Lcom/google/android/maps/u;

    return-object p1
.end method

.method public static a(I)V
    .registers 1

    return-void
.end method

.method private a(J)V
    .registers 9

    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getRuntime"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "setMinimumHeapSize"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    const-string v1, "setMinimumHeapSize reflection failed"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/googlenav/android/N;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->e()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setDefaultKeyMode(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->w()V

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    new-instance v1, Lcom/google/googlenav/android/G;

    invoke-direct {v1}, Lcom/google/googlenav/android/G;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/D;->a(Lcom/google/googlenav/android/F;)V

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->c()V

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/D;->a(Lcom/google/googlenav/android/E;)V

    new-instance v0, Lcom/google/googlenav/android/af;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/af;-><init>(Lcom/google/googlenav/android/ai;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->d:Lcom/google/googlenav/android/af;

    new-instance v0, Lcom/google/googlenav/android/Q;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->G()LaJ/u;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/android/Q;-><init>(Lcom/google/googlenav/android/T;Lcom/google/googlenav/ui/D;LaJ/u;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/Q;

    if-nez p1, :cond_5c

    new-instance v0, Lcom/google/android/maps/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/android/maps/o;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->B()Z

    move-result v1

    if-eqz v1, :cond_6a

    sget-object v1, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v1, v0, v3}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    :cond_5c
    :goto_5c
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/android/maps/p;

    invoke-direct {v1, p0}, Lcom/google/android/maps/p;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->x()V

    return-void

    :cond_6a
    sget-object v1, Lcom/google/googlenav/z;->b:Lcom/google/googlenav/z;

    invoke-static {v1, v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    goto :goto_5c
.end method

.method private a(Landroid/view/Menu;)V
    .registers 5

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->b()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/D;)V

    :cond_23
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/av;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :goto_32
    return-void

    :cond_33
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/av;->g()[Laq/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aI()Z

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/google/googlenav/ui/aC;->a(Landroid/view/Menu;Ljava/util/List;Z)V

    goto :goto_32
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/MapsActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/MapsActivity;->H:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/maps/MapsActivity;)Lap/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    return-object v0
.end method

.method private b(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/MapsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->D()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/D;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/MapsActivity;)LaP/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->C:LaP/h;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/MapsActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->H:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/android/Q;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/Q;

    return-object v0
.end method

.method private v()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v1, Lcom/google/googlenav/android/Q;->h:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Lcom/google/android/maps/t;->b:Lcom/google/android/maps/t;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    :goto_16
    return-void

    :cond_17
    if-eqz v0, :cond_2a

    sget-object v1, Lcom/google/googlenav/android/Q;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v0, Lcom/google/android/maps/t;->c:Lcom/google/android/maps/t;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    goto :goto_16

    :cond_2a
    if-eqz v0, :cond_3d

    sget-object v1, Lcom/google/googlenav/android/Q;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/google/android/maps/t;->d:Lcom/google/android/maps/t;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    goto :goto_16

    :cond_3d
    sget-object v0, Lcom/google/android/maps/t;->a:Lcom/google/android/maps/t;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    goto :goto_16
.end method

.method private w()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ab()V

    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->C:LaP/h;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->C:LaP/h;

    invoke-virtual {v0}, LaP/h;->g()V

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->e()V

    :cond_1f
    return-void
.end method

.method private x()V
    .registers 5

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/android/maps/q;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/maps/q;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    return-void
.end method

.method private y()V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/rideabout/view/a;

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iget-object v3, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/rideabout/view/a;-><init>(Lcom/google/googlenav/ui/android/BaseAndroidView;Lcom/google/googlenav/ui/android/ButtonContainer;)V

    invoke-static {v1}, Lbb/B;->a(Lbb/B;)V

    new-instance v1, Lcom/google/android/maps/rideabout/app/s;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/rideabout/app/s;-><init>(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/wizard/hM;)V

    invoke-static {v1}, LaN/b;->a(LaN/b;)V

    return-void
.end method

.method private z()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ce;->a()Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->d()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/friend/android/e;->a()Lcom/google/googlenav/friend/android/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/googlenav/friend/android/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v0, "contacts_accessor_formatted_address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_22
    return-object v0
.end method

.method public a()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_c3

    const v0, 0x7f0300d2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setContentView(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->an()Z

    move-result v0

    if-eqz v0, :cond_a1

    const v0, 0x7f0f026b

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3e
    :goto_3e
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/ButtonContainer;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_cb

    const v0, 0x7f0f026d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    :goto_65
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/BaseAndroidView;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/BaseAndroidView;->a(Lcom/google/googlenav/android/l;Lcom/google/googlenav/ui/android/ButtonContainer;)V

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/aA;->a(Lcom/google/googlenav/android/BaseMapsActivity;)V

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/ap;->a(Lcom/google/googlenav/android/BaseMapsActivity;)V

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->C:LaP/h;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/googlenav/ui/D;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->y()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->B()V

    :cond_9b
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->b()V

    return-void

    :cond_a1
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/D;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->a(LaY/ac;)V

    goto/16 :goto_3e

    :cond_c3
    const v0, 0x7f0300d3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setContentView(I)V

    goto/16 :goto_3e

    :cond_cb
    const v0, 0x7f0f026c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_65
.end method

.method public a(JJ)V
    .registers 9

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v1, 0x158

    const/4 v2, -0x1

    new-instance v3, Lax/aU;

    invoke-direct {v3, p1, p2, p3, p4}, Lax/aU;-><init>(JJ)V

    invoke-virtual {v0, v1, v2, v3}, LaY/K;->a(IILjava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method public a(LaJ/u;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/Q;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/Q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/android/Q;->a(LaJ/u;)V

    :cond_9
    return-void
.end method

.method public a(LaY/Y;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Z)V

    return-void
.end method

.method public a(LaY/Y;Ljava/lang/Class;)V
    .registers 11

    const/16 v7, 0xbf

    const/4 v6, 0x1

    invoke-static {}, Lax/aA;->m()Lam/b;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/wizard/cA;->f()I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    new-instance v2, Lcom/google/android/maps/f;

    invoke-direct {v2, p0}, Lcom/google/android/maps/f;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/wizard/cZ;

    invoke-direct {v4}, Lcom/google/googlenav/ui/wizard/cZ;-><init>()V

    invoke-static {v7}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/wizard/cZ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/wizard/cZ;->a(I)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/wizard/cZ;->b(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v1

    invoke-static {v7}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/wizard/cZ;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v1

    const/16 v4, 0x423

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/wizard/cZ;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v1

    const/16 v4, 0x517

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/wizard/cZ;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/wizard/cZ;->a(B)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/wizard/cZ;->c(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lam/b;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/g;

    invoke-direct {v1, p0, v2, p2}, Lcom/google/android/maps/g;-><init>(Lcom/google/android/maps/MapsActivity;Lax/aZ;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lcom/google/googlenav/ui/wizard/cR;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/cZ;)V

    return-void
.end method

.method public a(LaY/Y;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x14b

    invoke-virtual {p1, v0, p2}, LaY/Y;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Z)V

    return-void
.end method

.method public a(LaY/i;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, LaY/i;->aG()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->invalidateOptionsMenu()V

    :cond_b
    return-void
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ah;I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/aA;->a()Lcom/google/googlenav/aA;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/aA;->a(Lcom/google/googlenav/ah;Z)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ah;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Ljava/lang/String;Z)V
    .registers 12

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/O;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 6

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_1c
    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bubble not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const v0, 0x7f0f026f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1c

    :cond_3d
    new-instance v1, Lcom/google/googlenav/ui/view/android/h;

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iget-object v3, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/googlenav/ui/view/android/h;-><init>(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;Lcom/google/googlenav/ui/android/ButtonContainer;)V

    invoke-static {v1}, Lbb/e;->a(Lbb/e;)V

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-static {v0, v1}, LaY/h;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->aD()Lcom/google/googlenav/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/f;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/D;->h(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;LaJ/B;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LaJ/B;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;ZI)V

    return-void
.end method

.method public b()Lcom/google/googlenav/ui/android/ButtonContainer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    return-object v0
.end method

.method public b(LaY/Y;)V
    .registers 6

    invoke-virtual {p1}, LaY/Y;->B()LaY/K;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x133

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaY/K;->a(IILjava/lang/Object;)Z

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x1

    invoke-static {v0}, Lax/x;->a(Z)V

    goto :goto_d
.end method

.method public b(LaY/Y;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x14a

    invoke-virtual {p1, v0, p2}, LaY/Y;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Z)V

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "start_activity_on_complete"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    const/16 v2, 0x157

    new-instance v3, Lcom/google/android/maps/h;

    invoke-direct {v3, p0, v0}, Lcom/google/android/maps/h;-><init>(Lcom/google/android/maps/MapsActivity;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hM;->a(ILcom/google/googlenav/ui/wizard/cv;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/D;->i(Ljava/lang/String;)V

    return-void
.end method

.method public c()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/Q;

    invoke-virtual {v1}, Lcom/google/googlenav/android/Q;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    const/4 v2, -0x2

    if-eq v1, v2, :cond_e

    move v0, v1

    :cond_e
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/M;->a(I)V

    return v1
.end method

.method public c(LaY/Y;)V
    .registers 4

    const/16 v0, 0x13c

    invoke-virtual {p1, v0}, LaY/Y;->e(I)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/D;->e(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->d()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->al()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->r()Lcom/google/googlenav/ui/view/android/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cb;->invalidateOptionsMenu()V

    :cond_1a
    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    invoke-virtual {v0}, Law/g;->d()V

    :cond_27
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->i()V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->b()V

    :cond_37
    return-void
.end method

.method public d(LaY/Y;)V
    .registers 4

    const/16 v0, 0x15a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LaY/Y;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Z)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lab/d;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {p1}, Lab/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x2c4

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-static {p1}, Lab/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x2c5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->invalidateOptionsMenu()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cb;->invalidateOptionsMenu()V

    goto :goto_10
.end method

.method public e(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    return-void
.end method

.method public f()Lcom/google/googlenav/android/l;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->C()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, LaY/K;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public g()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    return-object v0
.end method

.method public h()Lcom/google/googlenav/ui/android/BaseAndroidView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    return-object v0
.end method

.method public i()Lcom/google/googlenav/android/ac;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->o()Lcom/google/googlenav/android/ac;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/maps/MapsActivity;
    .registers 1

    return-object p0
.end method

.method public k()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->J()V

    return-void
.end method

.method public l()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->N()V

    return-void
.end method

.method public m()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/16 v1, 0x155

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->c(I)V

    return-void
.end method

.method public n()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/df;)V

    return-void
.end method

.method public o()V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/i;

    invoke-direct {v2, p0}, Lcom/google/android/maps/i;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;Lcom/google/googlenav/android/V;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/android/U;->a(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/android/BaseMapsActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, LaY/Y;->a(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->d()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/16 v4, 0x16

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->l:J

    const-wide/32 v0, 0x600000

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->a(J)V

    invoke-static {}, Lcom/google/googlenav/android/c;->b()Z

    move-result v0

    if-eqz v0, :cond_b8

    sget-object v0, Lcom/google/android/maps/u;->d:Lcom/google/android/maps/u;

    :goto_19
    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->B:Lcom/google/android/maps/u;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->v()V

    iput-boolean v3, p0, Lcom/google/android/maps/MapsActivity;->F:Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    :cond_31
    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/google/googlenav/android/l;->a(Lcom/google/android/maps/MapsActivity;Z)V

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, LaA/i;->a(Landroid/content/pm/PackageManager;)V

    new-instance v0, Lcom/google/android/maps/m;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/m;-><init>(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/google/googlenav/android/l;->a(Ljava/util/Locale;Lcom/google/googlenav/android/C;ZZ)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ai()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->p()V

    :cond_74
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/U;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbe/a;->a(Landroid/content/Context;)V

    new-instance v0, Lar/u;

    const-string v1, "menu open"

    const-string v2, "mo"

    invoke-direct {v0, v1, v2, v4}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->y:Lar/u;

    new-instance v0, Lar/u;

    const-string v1, "maps onPause"

    const-string v2, "ap"

    invoke-direct {v0, v1, v2, v4}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->z:Lar/u;

    new-instance v0, Lar/u;

    const-string v1, "maps onPause vm"

    const-string v2, "ap_vm"

    invoke-direct {v0, v1, v2, v4}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->A:Lar/u;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->q()Z

    move-result v0

    if-nez v0, :cond_b7

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->r()Z

    move-result v0

    if-nez v0, :cond_bc

    :cond_b7
    :goto_b7
    return-void

    :cond_b8
    sget-object v0, Lcom/google/android/maps/u;->c:Lcom/google/android/maps/u;

    goto/16 :goto_19

    :cond_bc
    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/os/Bundle;)V

    goto :goto_b7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->O()V

    :cond_1c
    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, LaN/b;->y()V

    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cb;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    :cond_31
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->a()V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->f()V

    :cond_3f
    invoke-static {p0}, Lcom/google/googlenav/android/N;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/android/BaseMapsActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->g()V

    invoke-static {}, Laf/l;->a()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/android/BaseMapsActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    sget-object v1, Lcom/google/android/maps/MapsActivity;->y:Lar/u;

    invoke-virtual {v1}, Lar/u;->b()V

    invoke-direct {p0, p2}, Lcom/google/android/maps/MapsActivity;->b(Landroid/view/Menu;)V

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->c:Lcom/google/googlenav/android/Q;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/google/googlenav/android/l;->a(Lcom/google/android/maps/MapsActivity;Z)V

    invoke-virtual {p0, p1}, Lcom/google/android/maps/MapsActivity;->setIntent(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/google/android/maps/MapsActivity;->F:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const/high16 v0, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_34

    :cond_28
    const-string v0, "featureSwitcher"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->H()V

    goto :goto_6

    :cond_34
    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/android/maps/e;

    invoke-direct {v1, p0, v4, v3}, Lcom/google/android/maps/e;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    goto :goto_6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/av;->a(Landroid/view/MenuItem;)V

    move v0, v1

    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    if-nez v0, :cond_1f

    move v0, v2

    goto :goto_18

    :cond_1f
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/M;->ao()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x102002c

    if-ne v5, v6, :cond_4b

    sget-object v0, Lcom/google/googlenav/ui/n;->I:Laq/a;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    move v0, v1

    goto :goto_18

    :cond_4b
    if-ltz v0, :cond_4f

    if-lt v0, v4, :cond_81

    :cond_4f
    const-string v2, "onOptionsItemSelected"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") command count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v1

    goto :goto_18

    :cond_81
    iget-object v4, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq/a;

    if-nez v0, :cond_8d

    move v0, v2

    goto :goto_18

    :cond_8d
    sget-object v2, Lcom/google/googlenav/ui/n;->Y:Laq/a;

    if-ne v0, v2, :cond_b2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f017a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_af
    move v0, v1

    goto/16 :goto_18

    :cond_b2
    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    move v0, v1

    goto/16 :goto_18
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/MapsActivity;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/android/BaseMapsActivity;->onPanelClosed(ILandroid/view/Menu;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->o(Z)V

    return-void
.end method

.method public onPause()V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/u;->c()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->i()Lcom/google/googlenav/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/ac;->b()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v1, Lcom/google/android/maps/MapsActivity;->A:Lar/u;

    invoke-virtual {v1}, Lar/u;->a()V

    :goto_19
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/maps/MapsActivity;->l:J

    sget-object v1, Lcom/google/android/maps/u;->g:Lcom/google/android/maps/u;

    iput-object v1, p0, Lcom/google/android/maps/MapsActivity;->B:Lcom/google/android/maps/u;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/MapsActivity;->F:Z

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onPause()V

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    :cond_34
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {p0}, Lcom/google/googlenav/android/Z;->a(Landroid/app/Activity;)V

    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->q()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->r()Z

    move-result v1

    if-nez v1, :cond_65

    :cond_51
    if-eqz v0, :cond_5f

    sget-object v0, Lcom/google/android/maps/MapsActivity;->A:Lar/u;

    invoke-virtual {v0}, Lar/u;->c()V

    :goto_58
    return-void

    :cond_59
    sget-object v1, Lcom/google/android/maps/MapsActivity;->z:Lar/u;

    invoke-virtual {v1}, Lar/u;->a()V

    goto :goto_19

    :cond_5f
    sget-object v0, Lcom/google/android/maps/MapsActivity;->z:Lar/u;

    invoke-virtual {v0}, Lar/u;->c()V

    goto :goto_58

    :cond_65
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v1

    if-eqz v1, :cond_90

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->k(Z)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/android/OnPauseService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "is_finishing"

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->V()V

    :cond_90
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->b()V

    :cond_99
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->z()V

    new-instance v1, Lcom/google/android/maps/c;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/c;-><init>(Lcom/google/android/maps/MapsActivity;Lap/c;)V

    iput-object v1, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lap/d;->a(J)V

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    invoke-virtual {v1}, Lap/d;->g()V

    if-eqz v0, :cond_bc

    sget-object v0, Lcom/google/android/maps/MapsActivity;->A:Lar/u;

    invoke-virtual {v0}, Lar/u;->b()V

    goto :goto_58

    :cond_bc
    sget-object v0, Lcom/google/android/maps/MapsActivity;->z:Lar/u;

    invoke-virtual {v0}, Lar/u;->b()V

    goto :goto_58
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    const/4 v5, 0x1

    sget-object v0, Lcom/google/android/maps/MapsActivity;->y:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/av;->a(Landroid/view/Menu;)V

    :cond_1b
    :goto_1b
    return v5

    :cond_1c
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/D;->o(Z)V

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->g()[Laq/a;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_44

    array-length v0, v2

    iget-object v3, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_44

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_48

    :cond_44
    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/view/Menu;)V

    goto :goto_1b

    :cond_48
    const/4 v0, 0x0

    :goto_49
    array-length v3, v2

    if-ge v0, v3, :cond_1b

    aget-object v3, v2, v0

    iget-object v4, p0, Lcom/google/android/maps/MapsActivity;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/view/Menu;)V

    goto :goto_1b

    :cond_5e
    sget-object v4, Lcom/google/googlenav/ui/n;->Q:Laq/a;

    invoke-virtual {v4, v3}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_70

    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->a(Landroid/view/Menu;)V

    goto :goto_1b

    :cond_70
    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aI()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_49
.end method

.method protected onRestart()V
    .registers 3

    sget-object v0, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->l:J

    sget-object v0, Lcom/google/android/maps/u;->e:Lcom/google/android/maps/u;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->B:Lcom/google/android/maps/u;

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/google/android/maps/MapsActivity;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->l:J

    :cond_11
    invoke-static {}, Lcom/google/googlenav/u;->b()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->i()Lcom/google/googlenav/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/ac;->a()V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    if-nez v0, :cond_23

    sget-object v0, Lcom/google/android/maps/t;->a:Lcom/google/android/maps/t;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->E:Lcom/google/android/maps/t;

    :cond_23
    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    invoke-virtual {v0}, Law/g;->d()V

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onResume()V

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setReferrer(Ljava/lang/String;)Z

    :cond_50
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {p0, p0}, Lcom/google/googlenav/android/Z;->a(Landroid/app/Activity;Lcom/google/googlenav/android/aa;)V

    :cond_59
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->s()Z

    move-result v0

    if-eqz v0, :cond_79

    new-instance v0, Lcom/google/android/maps/r;

    invoke-direct {v0, p0}, Lcom/google/android/maps/r;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0, v4, v4}, Lcom/google/googlenav/android/l;->a(Ljava/util/Locale;Lcom/google/googlenav/android/C;ZZ)V

    :cond_79
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->d()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->q()Z

    move-result v0

    if-nez v0, :cond_94

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->r()Z

    move-result v0

    if-nez v0, :cond_95

    :cond_94
    :goto_94
    return-void

    :cond_95
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->D()V

    goto :goto_94
.end method

.method public onSearchRequested()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->c()Z

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onSearchRequested()Z

    move-result v0

    goto :goto_12
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onStart()V

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    const-string v1, "UA-25817243-1"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->startNewSession(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setAnonymizeIp(Z)V

    :cond_1a
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->j:Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->a(Lcom/google/android/maps/MapsActivity;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->f:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->h:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_3d
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->b()Lcom/google/googlenav/prefetch/android/o;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v1

    invoke-virtual {v1, v0}, LaE/h;->a(LaE/m;)V

    :cond_52
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    new-instance v1, Lcom/google/android/maps/n;

    invoke-direct {v1, p0}, Lcom/google/android/maps/n;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    return-void

    :cond_63
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->f:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->g:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_3d
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onStop()V

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stopSession()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->j:Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->b(Lcom/google/android/maps/MapsActivity;)V

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->b()Lcom/google/googlenav/prefetch/android/o;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v1

    invoke-virtual {v1, v0}, LaE/h;->c(LaE/m;)V

    :cond_34
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->w()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->H:Z

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    invoke-virtual {v0}, Lap/d;->c()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->I:Lap/d;

    :cond_46
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->F()Lcom/google/googlenav/ui/D;

    move-result-object v2

    if-nez p1, :cond_14

    move v0, v1

    :goto_b
    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/D;->o(Z)V

    if-eqz p1, :cond_13

    invoke-static {v1}, Lcom/google/android/maps/MapsActivity;->a(I)V

    :cond_13
    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public p()Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->G()LaJ/u;

    move-result-object v1

    invoke-virtual {v1}, LaJ/u;->c()LaJ/B;

    move-result-object v2

    const-string v3, "centerLatitude"

    invoke-virtual {v2}, LaJ/B;->c()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "centerLongitude"

    invoke-virtual {v2}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "latitudeSpan"

    invoke-virtual {v1}, LaJ/u;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "longitudeSpan"

    invoke-virtual {v1}, LaJ/u;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "zoomLevel"

    invoke-virtual {v1}, LaJ/u;->d()LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public q()V
    .registers 7

    const-wide/16 v4, -0x1

    iget-wide v0, p0, Lcom/google/android/maps/MapsActivity;->l:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_29

    sget-object v0, Lcom/google/android/maps/MapsActivity;->k:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/MapsActivity;->l:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->y()Z

    move-result v1

    if-eqz v1, :cond_54

    sget-object v1, Lcom/google/android/maps/k;->b:[I

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->B:Lcom/google/android/maps/u;

    invoke-virtual {v2}, Lcom/google/android/maps/u;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_86

    :cond_29
    :goto_29
    sget-object v0, Lcom/google/android/maps/u;->a:Lcom/google/android/maps/u;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->B:Lcom/google/android/maps/u;

    iput-wide v4, p0, Lcom/google/android/maps/MapsActivity;->l:J

    return-void

    :pswitch_30
    sget-object v1, Lcom/google/android/maps/MapsActivity;->n:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_36
    sget-object v1, Lcom/google/android/maps/MapsActivity;->p:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_3c
    sget-object v1, Lcom/google/android/maps/MapsActivity;->r:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_42
    sget-object v1, Lcom/google/android/maps/MapsActivity;->t:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_48
    sget-object v1, Lcom/google/android/maps/MapsActivity;->v:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_4e
    sget-object v1, Lcom/google/android/maps/MapsActivity;->x:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :cond_54
    sget-object v1, Lcom/google/android/maps/k;->b:[I

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->B:Lcom/google/android/maps/u;

    invoke-virtual {v2}, Lcom/google/android/maps/u;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_96

    goto :goto_29

    :pswitch_62
    sget-object v1, Lcom/google/android/maps/MapsActivity;->m:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_68
    sget-object v1, Lcom/google/android/maps/MapsActivity;->o:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_6e
    sget-object v1, Lcom/google/android/maps/MapsActivity;->q:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_74
    sget-object v1, Lcom/google/android/maps/MapsActivity;->s:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_7a
    sget-object v1, Lcom/google/android/maps/MapsActivity;->u:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_80
    sget-object v1, Lcom/google/android/maps/MapsActivity;->w:Lar/u;

    invoke-virtual {v1, v0}, Lar/u;->a(I)V

    goto :goto_29

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_30
        :pswitch_36
        :pswitch_3c
        :pswitch_42
        :pswitch_48
        :pswitch_4e
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_62
        :pswitch_68
        :pswitch_6e
        :pswitch_74
        :pswitch_7a
        :pswitch_80
    .end packed-switch
.end method

.method public r()Lcom/google/googlenav/ui/view/android/cb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->G:Lcom/google/googlenav/ui/view/android/cb;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->am()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->A()Ljava/lang/String;

    move-result-object v0

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->f()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    invoke-virtual {v1}, LaY/Y;->I()LaY/i;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, LaY/i;->bf()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .registers 9

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    if-nez v1, :cond_36

    :goto_34
    move-object v1, v0

    goto :goto_18

    :cond_36
    iget v5, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v5, v0, :cond_50

    :goto_3c
    if-eqz v2, :cond_4e

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_4d
    return v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4d

    :cond_50
    move-object v0, v1

    goto :goto_34

    :cond_52
    move-object v2, v1

    goto :goto_3c
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 8

    invoke-static {}, Lcom/google/googlenav/suggest/android/SuggestProvider;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->p()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p3, :cond_c

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_c
    const-string v1, "searchIncludeInHistory"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ao()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    :goto_27
    return-void

    :cond_28
    invoke-super {p0, p1, p2, v0, p4}, Lcom/google/googlenav/android/BaseMapsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_27
.end method

.method public t()V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    invoke-static {}, Lcom/google/googlenav/android/a;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x6

    :goto_15
    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setRequestedOrientation(I)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_15

    :cond_1b
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_18

    invoke-static {}, Lcom/google/googlenav/android/a;->d()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x7

    :cond_26
    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setRequestedOrientation(I)V

    goto :goto_18
.end method

.method public u()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setRequestedOrientation(I)V

    return-void
.end method
