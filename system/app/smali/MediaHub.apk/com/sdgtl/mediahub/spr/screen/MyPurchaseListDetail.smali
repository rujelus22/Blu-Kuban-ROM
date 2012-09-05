.class public Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;
.super Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;


# static fields
.field private static A:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

.field public static a:Ljava/lang/Long;

.field public static b:Ljava/lang/String;

.field private static z:Z


# instance fields
.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:I

.field private H:J

.field private I:J

.field private J:Landroid/content/BroadcastReceiver;

.field public c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field private h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private i:Lcom/sdgtl/mediahub/spr/common/es;

.field private j:Lcom/sdgtl/mediahub/spr/common/er;

.field private k:Z

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->A:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;-><init>()V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/es;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/es;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/er;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/er;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->j:Lcom/sdgtl/mediahub/spr/common/er;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->G:I

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mg;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mg;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mh;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mh;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mi;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mi;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mj;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mj;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mk;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mk;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ml;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ml;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->J:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->A:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz p1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method private a(Lcom/sdgtl/mediahub/spr/common/es;Lcom/sdgtl/mediahub/spr/common/er;)V
    .registers 11

    const v7, 0x7f0a0077

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->n:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/er;->p:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_1f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->p:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/er;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    const-string v0, ""

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/es;->g:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/es;->g:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c9

    :cond_45
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->q:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a00bd

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/sdgtl/mediahub/spr/common/er;->u:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/es;->g:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/es;->g:Ljava/lang/String;

    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f3

    :cond_90
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->r:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a00f4

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-wide v0, p1, Lcom/sdgtl/mediahub/spr/common/es;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/es;->p:Ljava/lang/String;

    if-eqz v1, :cond_d4

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/es;->p:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_d4

    :try_start_ce
    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/es;->p:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_d3} :catch_33e

    move-result v0

    :cond_d4
    :goto_d4
    packed-switch v0, :pswitch_data_342

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->u:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->t:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->v:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/es;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->w:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/sdgtl/mediahub/spr/common/es;->j:D

    invoke-static {p0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->x:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/sdgtl/mediahub/spr/common/es;->k:D

    invoke-static {p0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_1c8

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->h:Ljava/lang/String;

    if-eqz v0, :cond_28b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->B:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/er;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_117
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->c:Ljava/lang/String;

    if-eqz v0, :cond_292

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_292

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->C:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sdgtl/mediahub/spr/common/er;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12a
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->l:Ljava/lang/String;

    if-eqz v0, :cond_299

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_299

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->D:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0076

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/sdgtl/mediahub/spr/common/er;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_164
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->w:Ljava/util/ArrayList;

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->H:J

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->w:Ljava/util/ArrayList;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->I:J

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->w:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->G:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->G:I

    packed-switch v0, :pswitch_data_34e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_18f
    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->q:Ljava/lang/String;

    if-eqz v0, :cond_337

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->q:Ljava/lang/String;

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_337

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/er;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_337

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->F:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0078

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/sdgtl/mediahub/spr/common/er;->q:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c8
    :goto_1c8
    return-void

    :cond_1c9
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/es;->g:Ljava/lang/String;

    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e1

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/es;->g:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    :cond_1e1
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_55

    :cond_1f3
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->r:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a00f5

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b3

    :pswitch_218
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->t:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e5

    :pswitch_231
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "************"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/es;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e5

    :pswitch_259
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->t:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e5

    :pswitch_272
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->t:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e5

    :cond_28b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_117

    :cond_292
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_12a

    :cond_299
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_164

    :pswitch_2a0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->E:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->H:J

    invoke-static {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/HD, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->I:J

    invoke-static {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/SD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18f

    :pswitch_2dd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->E:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->H:J

    invoke-static {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/HD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18f

    :pswitch_30a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->E:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->I:J

    invoke-static {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/SD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18f

    :cond_337
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1c8

    :catch_33e
    move-exception v1

    goto/16 :goto_d4

    nop

    :pswitch_data_342
    .packed-switch 0x0
        :pswitch_218
        :pswitch_231
        :pswitch_259
        :pswitch_272
    .end packed-switch

    :pswitch_data_34e
    .packed-switch 0x1
        :pswitch_2a0
        :pswitch_2dd
        :pswitch_30a
    .end packed-switch
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->z:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/16 v0, 0xa

    if-ne p1, v0, :cond_f

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->y:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;Lcom/sdgtl/mediahub/spr/common/er;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->j:Lcom/sdgtl/mediahub/spr/common/er;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;Lcom/sdgtl/mediahub/spr/common/es;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;Lcom/sdgtl/mediahub/spr/common/es;Lcom/sdgtl/mediahub/spr/common/er;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/common/es;Lcom/sdgtl/mediahub/spr/common/er;)V

    return-void
.end method

.method private static b(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz p1, :cond_d

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->z:Z

    return v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->y:J

    return-wide v0
.end method

.method static synthetic c()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->z:Z

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/common/es;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    return-object v0
.end method

.method private d()V
    .registers 3

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->setContentView(I)V

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->n:Landroid/widget/ImageView;

    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->p:Landroid/widget/TextView;

    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->q:Landroid/widget/TextView;

    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->r:Landroid/widget/TextView;

    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->o:Landroid/widget/ImageView;

    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->s:Landroid/widget/TextView;

    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->t:Landroid/widget/TextView;

    const v0, 0x7f0d00a4

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->u:Landroid/widget/TextView;

    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->v:Landroid/widget/TextView;

    const v0, 0x7f0d00a9

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->w:Landroid/widget/TextView;

    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->x:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e4

    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->B:Landroid/widget/ImageView;

    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->C:Landroid/widget/TextView;

    const v0, 0x7f0d0039

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->D:Landroid/widget/TextView;

    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->E:Landroid/widget/TextView;

    const v0, 0x7f0d003b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->F:Landroid/widget/TextView;

    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/mm;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/mm;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e4
    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/common/er;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->j:Lcom/sdgtl/mediahub/spr/common/er;

    return-object v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->n:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_23

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    :goto_17
    return v0

    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_23

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_23
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->overridePendingTransition(II)V

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_3c

    :cond_6
    :goto_6
    return-void

    :sswitch_7
    packed-switch p2, :pswitch_data_46

    goto :goto_6

    :pswitch_b
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->z:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->m:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "order_id"

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x22

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->y:J

    goto :goto_6

    :pswitch_31
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->finish()V

    goto :goto_6

    :sswitch_35
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->finish()V

    goto :goto_6

    nop

    :sswitch_data_3c
    .sparse-switch
        0x3 -> :sswitch_7
        0x7 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_b
        :pswitch_31
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->d()V

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->z:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->i:Lcom/sdgtl/mediahub/spr/common/es;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->j:Lcom/sdgtl/mediahub/spr/common/er;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/common/es;Lcom/sdgtl/mediahub/spr/common/er;)V

    :cond_17
    :goto_17
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->setTitle(I)V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->m:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->b(Landroid/view/View;Landroid/view/View;)V

    goto :goto_17
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->A:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->z:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->b:Ljava/lang/String;

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a:Ljava/lang/Long;

    :cond_22
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->d()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->A:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->k:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPause()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->k:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_22

    :cond_3b
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->z:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->m:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "order_id"

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x22

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->y:J

    goto :goto_22
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onStop()V

    return-void
.end method
