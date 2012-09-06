.class public Lcom/twitter/android/ProfileFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/cj;
.implements Lcom/twitter/android/widget/ai;
.implements Lcom/twitter/android/widget/an;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Lcom/twitter/android/widget/ShadowTextView;

.field private C:Landroid/widget/ImageButton;

.field private D:Landroid/view/View;

.field private E:Lcom/twitter/android/widget/t;

.field private F:Lcom/twitter/android/ex;

.field private G:Lcom/twitter/android/ds;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/net/Uri;

.field private O:Z

.field private P:I

.field private Q:Landroid/view/animation/TranslateAnimation;

.field l:Landroid/content/SharedPreferences;

.field m:J

.field n:I

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Lcom/twitter/android/api/ac;

.field r:Lcom/twitter/android/dr;

.field private final s:Ljava/util/HashSet;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/HashSet;

.field private v:Lcom/twitter/android/util/FriendshipCache;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/twitter/android/widget/CardRowView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->n:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->s:Ljava/util/HashSet;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->A:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_7
    return-void

    :cond_8
    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;I)V
    .registers 8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070024

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/twitter/android/util/x;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b
.end method

.method static synthetic a(Lcom/twitter/android/ProfileFragment;Lcom/twitter/android/service/ScribeEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twitter/android/ProfileFragment;->a(Lcom/twitter/android/service/ScribeEvent;)V

    return-void
.end method

.method private a(Lcom/twitter/android/service/ScribeEvent;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/android/service/ScribeLog;->profileId:Ljava/lang/String;

    :cond_1c
    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method private b(Z)V
    .registers 14

    const/16 v9, 0x8

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    iget-object v0, v3, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    iget-wide v4, v3, Lcom/twitter/android/api/ac;->a:J

    iput-wide v4, p0, Lcom/twitter/android/ProfileFragment;->m:J

    iget-wide v4, p0, Lcom/twitter/android/ProfileFragment;->m:J

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1eb

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->O:Z

    const v0, 0x7f0b0008

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v4}, Lcom/twitter/android/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->N:Landroid/net/Uri;

    iget-object v4, p0, Lcom/twitter/android/ProfileFragment;->z:Lcom/twitter/android/widget/CardRowView;

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->L:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/twitter/android/ProfileFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->M:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/twitter/android/ProfileFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    const v0, 0x7f0700c0

    invoke-virtual {v4, v0}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a0

    const v7, 0x7f0b002a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Lcom/twitter/android/api/ac;->n:I

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/twitter/android/ProfileFragment;->a(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    const v6, 0x7f0700a1

    const v7, 0x7f0b0031

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Lcom/twitter/android/api/ac;->l:I

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/twitter/android/ProfileFragment;->a(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    const v6, 0x7f0700a2

    const v7, 0x7f0b0032

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v7, v3, Lcom/twitter/android/api/ac;->k:I

    invoke-direct {p0, v0, v6, v5, v7}, Lcom/twitter/android/ProfileFragment;->a(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->J:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9f
    const v0, 0x7f07005c

    invoke-virtual {v4, v0}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v4, v3, Lcom/twitter/android/api/ac;->i:Z

    if-eqz v4, :cond_1fc

    const v4, 0x7f02012d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b5
    iget-object v0, v3, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v5, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-virtual {v4, v5, v6, v0}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, v3, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->O:Z

    if-eqz v0, :cond_210

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileFragment;->g(I)V

    :cond_ce
    :goto_ce
    invoke-direct {p0, p1}, Lcom/twitter/android/ProfileFragment;->c(Z)V

    iget-wide v4, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->F:Lcom/twitter/android/ex;

    if-nez v0, :cond_e0

    invoke-direct {p0}, Lcom/twitter/android/ProfileFragment;->n()V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->F:Lcom/twitter/android/ex;

    :cond_e0
    invoke-virtual {v0, v2}, Lcom/twitter/android/ex;->setNotifyOnChange(Z)V

    invoke-virtual {v0}, Lcom/twitter/android/ex;->clear()V

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/UsersActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/ew;

    const v9, 0x7f0b0031

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v7}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v8}, Lcom/twitter/android/ex;->add(Ljava/lang/Object;)V

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/UsersActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/ew;

    const v9, 0x7f0b0032

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v7}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v8}, Lcom/twitter/android/ex;->add(Ljava/lang/Object;)V

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "title"

    const v9, 0x7f0b002f

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/ew;

    const v9, 0x7f0b002f

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v7}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v8}, Lcom/twitter/android/ex;->add(Ljava/lang/Object;)V

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/ListsActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "profile"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/ew;

    const v9, 0x7f0b002b

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v7}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v8}, Lcom/twitter/android/ex;->add(Ljava/lang/Object;)V

    iget-boolean v7, p0, Lcom/twitter/android/ProfileFragment;->O:Z

    if-eqz v7, :cond_1af

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/twitter/android/UsersActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "owner_id"

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Lcom/twitter/android/ew;

    const v7, 0x7f0b002e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2, v4}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v5}, Lcom/twitter/android/ex;->add(Ljava/lang/Object;)V

    :cond_1af
    invoke-virtual {v0}, Lcom/twitter/android/ex;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0, v3}, Lcom/twitter/android/dr;->a(Lcom/twitter/android/api/ac;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->G:Lcom/twitter/android/ds;

    invoke-virtual {v0, v3}, Lcom/twitter/android/ds;->a(Lcom/twitter/android/api/ac;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->E:Lcom/twitter/android/widget/t;

    if-nez v0, :cond_1dc

    new-instance v0, Lcom/twitter/android/widget/t;

    new-array v3, v11, [Landroid/widget/BaseAdapter;

    iget-object v4, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/twitter/android/ProfileFragment;->F:Lcom/twitter/android/ex;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->G:Lcom/twitter/android/ds;

    aput-object v1, v3, v10

    invoke-direct {v0, v3}, Lcom/twitter/android/widget/t;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->E:Lcom/twitter/android/widget/t;

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->E:Lcom/twitter/android/widget/t;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1dc
    invoke-virtual {p0, v11}, Lcom/twitter/android/ProfileFragment;->c(I)V

    iget-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->x:Z

    if-eqz v0, :cond_1ea

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->U:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Lcom/twitter/android/service/ScribeEvent;)V

    iput-boolean v2, p0, Lcom/twitter/android/ProfileFragment;->x:Z

    :cond_1ea
    return-void

    :cond_1eb
    move v0, v2

    goto/16 :goto_1d

    :cond_1ee
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->K:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9f

    :cond_1fc
    iget-boolean v4, v3, Lcom/twitter/android/api/ac;->h:Z

    if-eqz v4, :cond_20b

    const v4, 0x7f0200d4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b5

    :cond_20b
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b5

    :cond_210
    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "friendship"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_230

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "friendship"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/twitter/android/ProfileFragment;->g(I)V

    const-string v4, "friendship"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_ce

    :cond_230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/twitter/android/api/ac;->q:J

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_245

    iget v0, v3, Lcom/twitter/android/api/ac;->t:I

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->g(I)V

    goto/16 :goto_ce

    :cond_245
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->P:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_ce

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v4, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-virtual {v0, v4, v5}, Lcom/twitter/android/client/b;->b(J)Ljava/lang/String;

    iget v0, p0, Lcom/twitter/android/ProfileFragment;->P:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->P:I

    goto/16 :goto_ce
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->I:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method private c(Z)V
    .registers 6

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->P:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    iget v0, p0, Lcom/twitter/android/ProfileFragment;->P:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->P:I

    :cond_27
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->P:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    iget v0, p0, Lcom/twitter/android/ProfileFragment;->P:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->P:I

    goto :goto_13
.end method

.method private g(I)V
    .registers 7

    const v3, 0x7f0b00f7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->O:Z

    if-eqz v0, :cond_26

    const v0, 0x7f0b00f9

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    :goto_17
    iput p1, p0, Lcom/twitter/android/ProfileFragment;->n:I

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_26
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_2b
    if-eqz v0, :cond_4c

    const v0, 0x7f0b00f8

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    :goto_33
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->J:Landroid/widget/TextView;

    const v3, 0x7f0b013e

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/twitter/android/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_4a
    move v0, v2

    goto :goto_2b

    :cond_4c
    invoke-virtual {p0, v1, v3}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    goto :goto_33

    :cond_50
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->J:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_67
    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    goto :goto_17
.end method

.method private n()V
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    new-instance v0, Lcom/twitter/android/dr;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/twitter/android/dr;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;Lcom/twitter/android/widget/ai;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    new-instance v0, Lcom/twitter/android/ex;

    invoke-direct {v0, v1}, Lcom/twitter/android/ex;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->F:Lcom/twitter/android/ex;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lcom/twitter/android/ed;

    const v5, 0x7f02003c

    iget-object v7, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    move v4, v2

    move-object v6, p0

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/ed;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    :goto_29
    invoke-virtual {v0, p0}, Lcom/twitter/android/ed;->a(Lcom/twitter/android/cj;)V

    new-instance v2, Lcom/twitter/android/ds;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/ds;-><init>(Landroid/content/Context;Lcom/twitter/android/ed;)V

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->G:Lcom/twitter/android/ds;

    return-void

    :cond_34
    new-instance v0, Lcom/twitter/android/ed;

    iget-object v7, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    move v4, v2

    move v5, v2

    move-object v6, p0

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/ed;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    goto :goto_29
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    cmp-long v0, p1, v2

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p4}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;JLjava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    const v0, 0x7f070031

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->Q:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_60

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v3, 0x7f0c0019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v4, v3

    invoke-direct {v0, v4, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v4, Lcom/twitter/android/dn;

    invoke-direct {v4, p0, v2, v0}, Lcom/twitter/android/dn;-><init>(Lcom/twitter/android/ProfileFragment;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v3

    invoke-direct {v0, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->Q:Landroid/view/animation/TranslateAnimation;

    :cond_60
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_14
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 12

    const/4 v8, 0x3

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_8a

    :cond_b
    :goto_b
    return-void

    :pswitch_c
    if-eqz p2, :cond_b

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->g(I)V

    goto :goto_b

    :pswitch_1c
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0}, Lcom/twitter/android/dr;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0, p2}, Lcom/twitter/android/gc;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0}, Lcom/twitter/android/dr;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0}, Lcom/twitter/android/gc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    move-wide v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/client/b;->a(IJJJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;I)V

    goto :goto_b

    :cond_43
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0, v1}, Lcom/twitter/android/dr;->a(Z)V

    goto :goto_b

    :pswitch_49
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->G:Lcom/twitter/android/ds;

    invoke-virtual {v0}, Lcom/twitter/android/ds;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ed;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ed;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->w:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->G:Lcom/twitter/android/ds;

    invoke-virtual {v0}, Lcom/twitter/android/ds;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ed;

    invoke-virtual {v0}, Lcom/twitter/android/ed;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->l:Landroid/content/SharedPreferences;

    const-string v6, "last_refresh"

    invoke-interface {v0, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_b

    :cond_7a
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/twitter/android/ProfileFragment;->m:J

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->a(ZIIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/twitter/android/ProfileFragment;->w:Z

    goto :goto_b

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1c
        :pswitch_49
    .end packed-switch
.end method

.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    check-cast p2, Lcom/twitter/android/api/PromotedContent;

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->s:Ljava/util/HashSet;

    iget-object v1, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    :cond_18
    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->E:Lcom/twitter/android/widget/t;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->E:Lcom/twitter/android/widget/t;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/t;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_72

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :pswitch_21
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ew;

    iget-object v0, v0, Lcom/twitter/android/ew;->c:Landroid/content/Intent;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :pswitch_2f
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v1, p4, p5}, Lcom/twitter/android/util/FriendshipCache;->d(J)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_55

    const-string v2, "friendship"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_55
    check-cast p2, Lcom/twitter/android/widget/UserView;

    invoke-virtual {p2}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v1

    if-eqz v1, :cond_6d

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-object v3, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    const-string v2, "imp"

    iget-object v1, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6d
    invoke-virtual {p0, v0, v6}, Lcom/twitter/android/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2f
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    invoke-virtual {p1, v0}, Lcom/twitter/android/api/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    iget-object v0, v0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    iget-object v0, v0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_23
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    iget-object v0, v0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p1, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    iget-object v0, v0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    :cond_39
    const/4 v0, 0x1

    :goto_3a
    iput-object p1, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->b(Z)V

    goto :goto_8

    :cond_40
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 5

    const/4 v0, 0x1

    iget v1, p1, Lcom/twitter/android/util/v;->h:I

    if-ne v0, v1, :cond_24

    iget-wide v0, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/u;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/twitter/android/util/u;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Landroid/graphics/Bitmap;)V

    :cond_1a
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0}, Lcom/twitter/android/dr;->notifyDataSetChanged()V

    :cond_23
    :goto_23
    return-void

    :cond_24
    const/4 v0, 0x2

    iget v1, p1, Lcom/twitter/android/util/v;->h:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->G:Lcom/twitter/android/ds;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->G:Lcom/twitter/android/ds;

    invoke-virtual {v0}, Lcom/twitter/android/ds;->notifyDataSetChanged()V

    goto :goto_23
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .registers 7

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->u:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v0}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/FriendshipCache;->c(J)V

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->ab:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Lcom/twitter/android/service/ScribeEvent;)V

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_1f

    :cond_31
    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/twitter/android/client/b;->a(JZLjava/lang/String;)Ljava/lang/String;

    :goto_3b
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/FriendshipCache;->b(J)V

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->aa:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_29

    :cond_46
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->u:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method final a(ZI)V
    .registers 10

    const v5, 0x7f02003d

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->B:Lcom/twitter/android/widget/ShadowTextView;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->C:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/ShadowTextView;->setEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-lez p2, :cond_25

    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/ShadowTextView;->setText(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    packed-switch p2, :pswitch_data_6e

    :goto_1b
    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2, v6, v2, v6}, Lcom/twitter/android/widget/ShadowTextView;->setPadding(IIII)V

    :cond_25
    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_67

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_34
    return-void

    :pswitch_35
    invoke-virtual {v0, v6}, Lcom/twitter/android/widget/ShadowTextView;->setChecked(Z)V

    const v3, 0x7f0200cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v4, v4}, Lcom/twitter/android/widget/ShadowTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ShadowTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b

    :pswitch_4a
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ShadowTextView;->setChecked(Z)V

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/twitter/android/widget/ShadowTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ShadowTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b

    :pswitch_59
    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/twitter/android/widget/ShadowTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/ShadowTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b

    :cond_67
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_34

    nop

    :pswitch_data_6e
    .packed-switch 0x7f0b00f7
        :pswitch_35
        :pswitch_4a
        :pswitch_59
    .end packed-switch
.end method

.method protected final e(I)Landroid/app/Dialog;
    .registers 10

    const v5, 0x7f0b00d7

    const v4, 0x7f0b00d6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_156

    move-object v0, v2

    :goto_d
    return-object v0

    :pswitch_e
    new-instance v0, Lcom/twitter/android/di;

    invoke-direct {v0, p0}, Lcom/twitter/android/di;-><init>(Lcom/twitter/android/ProfileFragment;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0061

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0b0062

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    :pswitch_37
    new-instance v0, Lcom/twitter/android/dj;

    invoke-direct {v0, p0}, Lcom/twitter/android/dj;-><init>(Lcom/twitter/android/ProfileFragment;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b005a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0b005b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    :pswitch_60
    new-instance v0, Lcom/twitter/android/dk;

    invoke-direct {v0, p0}, Lcom/twitter/android/dk;-><init>(Lcom/twitter/android/ProfileFragment;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0059

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0b0118

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    :pswitch_89
    new-instance v0, Lcom/twitter/android/dl;

    invoke-direct {v0, p0}, Lcom/twitter/android/dl;-><init>(Lcom/twitter/android/ProfileFragment;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0106

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0b005d

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    :pswitch_b3
    new-instance v7, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget v3, p0, Lcom/twitter/android/ProfileFragment;->n:I

    and-int/lit8 v2, v3, 0x8

    if-nez v2, :cond_c3

    and-int/lit8 v2, v3, 0x2

    if-eqz v2, :cond_137

    :cond_c3
    move v2, v1

    :goto_c4
    iget-boolean v4, p0, Lcom/twitter/android/ProfileFragment;->y:Z

    if-eqz v4, :cond_139

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_139

    move v4, v1

    :goto_cd
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_13b

    move v5, v1

    :goto_d2
    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_13d

    move v6, v1

    :goto_d7
    if-eqz v2, :cond_e3

    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    if-eqz v4, :cond_f1

    if-eqz v5, :cond_13f

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f1
    :goto_f1
    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_14a

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_107
    const v0, 0x7f0b0106

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v0, Lcom/twitter/android/dm;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dm;-><init>(Lcom/twitter/android/ProfileFragment;ZLandroid/content/Context;ZZZ)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    :cond_137
    move v2, v0

    goto :goto_c4

    :cond_139
    move v4, v0

    goto :goto_cd

    :cond_13b
    move v5, v0

    goto :goto_d2

    :cond_13d
    move v6, v0

    goto :goto_d7

    :cond_13f
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    :cond_14a
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    nop

    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_e
        :pswitch_37
        :pswitch_60
        :pswitch_89
        :pswitch_b3
    .end packed-switch
.end method

.method protected final j()Z
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method final l()V
    .registers 4

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public final m()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/ProfileFragment;->n:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/twitter/android/ProfileFragment;->n()V

    :cond_d
    new-instance v0, Lcom/twitter/android/dp;

    invoke-direct {v0, p0}, Lcom/twitter/android/dp;-><init>(Lcom/twitter/android/ProfileFragment;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->d:Lcom/twitter/android/client/g;

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_1c

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileFragment;->b(Z)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    :goto_35
    iput-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->O:Z

    iput-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-direct {p0, v1}, Lcom/twitter/android/ProfileFragment;->c(Z)V

    goto :goto_1b

    :cond_3d
    move v0, v1

    goto :goto_35
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseListFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    packed-switch p1, :pswitch_data_74

    goto :goto_9

    :pswitch_e
    const-string v0, "list_id"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->a(IJJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_25
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->L:Landroid/widget/TextView;

    const-string v1, "bio"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/ProfileFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->M:Landroid/widget/TextView;

    const-string v1, "web"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/ProfileFragment;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_45
    const/4 v0, -0x1

    if-ne v0, p2, :cond_9

    if-eqz p3, :cond_9

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    const-string v2, "friendship"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "friendship"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/util/FriendshipCache;->a(JI)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/util/FriendshipCache;->b(JI)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->G:Lcom/twitter/android/ds;

    invoke-virtual {v0}, Lcom/twitter/android/ds;->notifyDataSetChanged()V

    goto :goto_9

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_e
        :pswitch_25
        :pswitch_45
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_13e

    goto :goto_6

    :sswitch_f
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->N:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_url"

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->N:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    :sswitch_38
    iget-wide v0, p0, Lcom/twitter/android/ProfileFragment;->m:J

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7a

    iget-wide v0, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/EditProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/ad;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ownerId"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    :cond_7a
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_84

    invoke-virtual {p0, v4}, Lcom/twitter/android/ProfileFragment;->f(I)V

    goto :goto_6

    :cond_84
    iget v0, p0, Lcom/twitter/android/ProfileFragment;->n:I

    invoke-static {v0, v4}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileFragment;->n:I

    const v0, 0x7f0b00f8

    invoke-virtual {p0, v4, v0}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->p:Ljava/lang/String;

    if-eqz v1, :cond_aa

    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->m:J

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/twitter/android/client/b;->a(JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    :goto_a3
    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->Y:Lcom/twitter/android/service/ScribeEvent;

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Lcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_6

    :cond_aa
    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->m:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/twitter/android/client/b;->a(JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    goto :goto_a3

    :sswitch_b5
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->f(I)V

    goto/16 :goto_6

    :sswitch_bb
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "owner_id"

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const v2, 0x7f0b002a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :sswitch_e2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/UsersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :sswitch_106
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/UsersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :sswitch_12a
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    iget-object v0, v0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/android/util/x;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_6

    nop

    :sswitch_data_13e
    .sparse-switch
        0x7f07004f -> :sswitch_f
        0x7f0700a0 -> :sswitch_bb
        0x7f0700a1 -> :sswitch_e2
        0x7f0700a2 -> :sswitch_106
        0x7f0700be -> :sswitch_12a
        0x7f0700c2 -> :sswitch_38
        0x7f0700c3 -> :sswitch_b5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v0, "profile_prefs"

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->l:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->u:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "imp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->p:Ljava/lang/String;

    if-eqz p1, :cond_63

    const-string v0, "state_dialog_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->t:Ljava/lang/String;

    const-string v0, "state_friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "state_friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    :goto_41
    const-string v0, "state_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ac;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    iput-boolean v4, p0, Lcom/twitter/android/ProfileFragment;->w:Z

    :goto_4d
    invoke-static {v1}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ProfileFragment;->y:Z

    invoke-virtual {p0, v3, p0}, Lcom/twitter/android/ProfileFragment;->a(ILcom/twitter/android/util/w;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ProfileFragment;->a(ILcom/twitter/android/util/w;)V

    return-void

    :cond_5b
    new-instance v0, Lcom/twitter/android/util/FriendshipCache;

    invoke-direct {v0, v5}, Lcom/twitter/android/util/FriendshipCache;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    goto :goto_41

    :cond_63
    new-instance v2, Lcom/twitter/android/util/FriendshipCache;

    invoke-direct {v2, v5}, Lcom/twitter/android/util/FriendshipCache;-><init>(I)V

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ac;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    iput-boolean v3, p0, Lcom/twitter/android/ProfileFragment;->w:Z

    iput-boolean v3, p0, Lcom/twitter/android/ProfileFragment;->x:Z

    goto :goto_4d
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 15

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_be

    move-object v0, v4

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/twitter/android/provider/ad;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/do;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_38
    sget-object v0, Lcom/twitter/android/provider/y;->b:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v0, "limit"

    const-string v1, "3"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/m;->c:[Ljava/lang/String;

    const-string v6, "updated_at DESC, _id ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_6e
    sget-object v0, Lcom/twitter/android/provider/ac;->b:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ownerId"

    iget-object v3, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v1}, Lcom/twitter/android/util/FriendshipCache;->a()Z

    move-result v1

    if-eqz v1, :cond_ba

    const-string v9, "friendship IS NULL OR friendship NOT IN (1,3,9,10,11) AND user_id!=?"

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    :goto_a7
    new-instance v5, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/twitter/android/provider/bd;->b:[Ljava/lang/String;

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto/16 :goto_5

    :cond_ba
    move-object v10, v4

    move-object v9, v4

    goto :goto_a7

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_6
        :pswitch_38
        :pswitch_6e
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ProfileFragment;->b(ILcom/twitter/android/util/w;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ProfileFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ProfileFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->r:Lcom/twitter/android/dr;

    invoke-virtual {v0}, Lcom/twitter/android/dr;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/gc;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_15
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->G:Lcom/twitter/android/ds;

    invoke-virtual {v0}, Lcom/twitter/android/ds;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ed;

    invoke-virtual {v0, v1}, Lcom/twitter/android/ed;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_9
        :pswitch_15
    .end packed-switch
.end method

.method public onResume()V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->i()Z

    move-result v2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->i()Z

    move-result v2

    if-nez v2, :cond_1c

    iput v1, p0, Lcom/twitter/android/ProfileFragment;->n:I

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->l()V

    move v0, v1

    :cond_1c
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    if-nez v0, :cond_27

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileFragment;->b(I)V

    :cond_27
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_dialog_text"

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "state_friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->v:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_19
    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_24

    const-string v0, "state_user"

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->q:Lcom/twitter/android/api/ac;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_24
    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->u:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/twitter/android/util/x;->b(Ljava/util/Collection;)[J

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->b([J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/ProfileFragment;->u:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_12
    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/ProfileFragment;->z:Lcom/twitter/android/widget/CardRowView;

    const v2, 0x7f07004f

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->A:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->A:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0700c2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/widget/ShadowTextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->B:Lcom/twitter/android/widget/ShadowTextView;

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->B:Lcom/twitter/android/widget/ShadowTextView;

    invoke-virtual {v2, p0}, Lcom/twitter/android/widget/ShadowTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0700c3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->C:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->C:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f070024

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->I:Landroid/widget/TextView;

    const v2, 0x7f0700bb

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->J:Landroid/widget/TextView;

    const v2, 0x7f0700c4

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->K:Landroid/widget/TextView;

    const v2, 0x7f0700bd

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->L:Landroid/widget/TextView;

    const v2, 0x7f0700be

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileFragment;->M:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twitter/android/ProfileFragment;->M:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/twitter/android/ProfileFragment;->H:Landroid/widget/RelativeLayout;

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/CardRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ProfileFragment;->D:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method
