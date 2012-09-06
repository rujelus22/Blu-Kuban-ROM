.class public Lcom/twitter/android/TweetFragment;
.super Lcom/twitter/android/TweetListFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/widget/ad;


# static fields
.field private static final y:Landroid/support/v4/util/LruCache;


# instance fields
.field private D:Landroid/view/View;

.field private E:I

.field private F:I

.field private G:I

.field private H:Landroid/widget/ImageButton;

.field l:Lcom/twitter/android/client/Session;

.field m:Lcom/twitter/android/provider/m;

.field n:Lcom/twitter/android/api/TweetMedia;

.field o:Lcom/twitter/android/fr;

.field p:Lcom/twitter/android/fr;

.field q:Lcom/twitter/android/widget/t;

.field r:Lcom/twitter/android/fm;

.field s:Landroid/content/Intent;

.field t:Ljava/lang/String;

.field u:Lcom/twitter/android/widget/TweetDetailView;

.field v:Z

.field w:Lcom/twitter/android/api/a;

.field x:Landroid/view/ViewGroup;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/twitter/android/TweetFragment;->y:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "en_gest"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetFragment;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->H:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private c(J)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imp"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private g(I)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->t:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->t:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    :cond_d
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/fr;

    invoke-virtual {v0}, Lcom/twitter/android/fr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/android/fr;

    invoke-virtual {v0}, Lcom/twitter/android/fr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    if-eqz p2, :cond_42

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    :cond_1a
    new-instance v1, Lcom/twitter/android/provider/m;

    invoke-direct {v1, p2}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    iget-wide v2, v1, Lcom/twitter/android/provider/m;->o:J

    iget-wide v4, v0, Lcom/twitter/android/provider/m;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3c

    iget-wide v2, v1, Lcom/twitter/android/provider/m;->j:J

    iget-wide v4, v0, Lcom/twitter/android/provider/m;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    iget-wide v2, v1, Lcom/twitter/android/provider/m;->h:J

    iget-wide v4, v0, Lcom/twitter/android/provider/m;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_75

    :cond_37
    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/android/fr;

    invoke-virtual {v2, v1}, Lcom/twitter/android/fr;->add(Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_42
    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->v:Z

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->g:Lcom/twitter/android/be;

    invoke-virtual {v0}, Lcom/twitter/android/be;->b()Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_4e
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/android/widget/t;

    invoke-virtual {v0}, Lcom/twitter/android/widget/t;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->m()V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v0, v0, Lcom/twitter/android/provider/m;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/android/widget/t;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/t;->b(I)I

    move-result v1

    iget v2, p0, Lcom/twitter/android/TweetFragment;->E:I

    iget v3, p0, Lcom/twitter/android/TweetFragment;->G:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->v:Z

    :cond_74
    return-void

    :cond_75
    iget-wide v2, v1, Lcom/twitter/android/provider/m;->h:J

    iget-wide v4, v0, Lcom/twitter/android/provider/m;->h:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3c

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/fr;

    invoke-virtual {v2, v1}, Lcom/twitter/android/fr;->add(Ljava/lang/Object;)V

    goto :goto_3c
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/android/widget/t;

    invoke-virtual {v0, p3}, Lcom/twitter/android/widget/t;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/android/widget/t;

    invoke-virtual {v0, v1, p3}, Lcom/twitter/android/widget/t;->a(II)I

    move-result v0

    if-lez v0, :cond_22

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->g(I)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->n:Lcom/twitter/android/api/TweetMedia;

    if-eqz v0, :cond_1f

    iget v0, v0, Lcom/twitter/android/api/TweetMedia;->type:I

    packed-switch v0, :pswitch_data_b0

    :cond_1f
    :goto_1f
    invoke-direct {p0, p4, p5}, Lcom/twitter/android/TweetFragment;->c(J)V

    :cond_22
    :goto_22
    return-void

    :pswitch_23
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->M:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1f

    :pswitch_31
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->N:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1f

    :pswitch_3f
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->L:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1f

    :cond_4d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_91

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/fn;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/UsersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v3, v3, Lcom/twitter/android/provider/m;->o:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    iget v3, v0, Lcom/twitter/android/fn;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_ids"

    iget-object v0, v0, Lcom/twitter/android/fn;->c:[J

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_22

    :cond_91
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    invoke-static {p4, p5, v1, v2}, Lcom/twitter/android/provider/o;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_22

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_31
        :pswitch_3f
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/api/TweetEntities$Url;)V
    .registers 8

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/twitter/android/TweetFragment;->g(I)V

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->R:Lcom/twitter/android/service/ScribeEvent;

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->E:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    invoke-static {v0, p1, v1, v2}, Lcom/twitter/android/BaseActivity;->a(Landroid/content/Context;Lcom/twitter/android/api/TweetEntities$Url;J)V

    return-void
.end method

.method public final a(Lcom/twitter/android/api/TweetMedia;)V
    .registers 9

    const v6, 0x7f0b00cc

    const/4 v5, 0x0

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->g(I)V

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p1, Lcom/twitter/android/api/TweetMedia;->type:I

    packed-switch v1, :pswitch_data_f6

    :goto_12
    return-void

    :pswitch_13
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->J:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget v1, v1, Lcom/twitter/android/client/b;->g:F

    invoke-virtual {p1, v1}, Lcom/twitter/android/api/TweetMedia;->a(F)Lcom/twitter/android/api/m;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/android/api/m;->a:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ImageActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p1, Lcom/twitter/android/api/TweetMedia;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-object v4, v4, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "image_url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_12

    :pswitch_59
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->K:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p1, Lcom/twitter/android/api/TweetMedia;->playerStreamUrl:Ljava/lang/String;

    if-eqz v1, :cond_a9

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/MediaPlayerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p1, Lcom/twitter/android/api/TweetMedia;->playerStreamUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "t"

    iget-object v3, p1, Lcom/twitter/android/api/TweetMedia;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/android/api/TweetMedia;->authorUser:Lcom/twitter/android/api/TweetMedia$User;

    if-eqz v2, :cond_90

    const-string v2, "a"

    iget-object v3, p1, Lcom/twitter/android/api/TweetMedia;->authorUser:Lcom/twitter/android/api/TweetMedia$User;

    iget-object v3, v3, Lcom/twitter/android/api/TweetMedia$User;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_90
    iget v2, p1, Lcom/twitter/android/api/TweetMedia;->playerType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a4

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget v2, v2, Lcom/twitter/android/client/b;->g:F

    invoke-virtual {p1, v2}, Lcom/twitter/android/api/TweetMedia;->a(F)Lcom/twitter/android/api/m;

    move-result-object v2

    const-string v3, "image_url"

    iget-object v2, v2, Lcom/twitter/android/api/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a4
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_12

    :cond_a9
    :try_start_a9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/twitter/android/api/TweetMedia;->playerUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_bd
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a9 .. :try_end_bd} :catch_bf

    goto/16 :goto_12

    :catch_bf
    move-exception v1

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    :pswitch_c9
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->I:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :try_start_d6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/twitter/android/api/TweetMedia;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_ea
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d6 .. :try_end_ea} :catch_ec

    goto/16 :goto_12

    :catch_ec
    move-exception v1

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_13
        :pswitch_59
        :pswitch_c9
    .end packed-switch
.end method

.method final a(Lcom/twitter/android/provider/m;Lcom/twitter/android/client/Session;)V
    .registers 14

    iput-object p2, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    iput-object p1, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-object v0, p1, Lcom/twitter/android/provider/m;->M:[Lcom/twitter/android/api/TweetMedia;

    if-eqz v0, :cond_10

    array-length v1, v0

    if-lez v1, :cond_10

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->n:Lcom/twitter/android/api/TweetMedia;

    :cond_10
    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v7, p0, Lcom/twitter/android/TweetFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetDetailView;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v1, v0, Lcom/twitter/android/widget/TweetDetailView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/twitter/android/widget/TweetDetailView;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->t:Ljava/lang/String;

    if-nez v0, :cond_44

    iget-object v0, p1, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->t:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->g(I)V

    :cond_44
    invoke-virtual {v6}, Lcom/twitter/android/client/b;->i()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->x:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->x:Landroid/view/ViewGroup;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/twitter/android/TweetFragment;->H:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    invoke-virtual {v6, v1, v2, v3}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TweetFragment;->s:Landroid/content/Intent;

    invoke-static {p2, p1, v0, p0}, Lcom/twitter/android/widget/ah;->a(Lcom/twitter/android/client/Session;Lcom/twitter/android/provider/m;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    :cond_86
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/bi;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->g:Lcom/twitter/android/be;

    invoke-direct {v3, v6, v0}, Lcom/twitter/android/bi;-><init>(Lcom/twitter/android/client/b;Lcom/twitter/android/be;)V

    new-instance v0, Lcom/twitter/android/fr;

    const v4, 0x7f03003a

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/fr;-><init>(Lcom/twitter/android/TweetFragment;Landroid/content/Context;Lcom/twitter/android/widget/am;IZ)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/fr;

    new-instance v0, Lcom/twitter/android/fr;

    const v4, 0x7f03003b

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/fr;-><init>(Lcom/twitter/android/TweetFragment;Landroid/content/Context;Lcom/twitter/android/widget/am;IZ)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/android/fr;

    new-instance v0, Lcom/twitter/android/fm;

    invoke-direct {v0}, Lcom/twitter/android/fm;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->r:Lcom/twitter/android/fm;

    new-instance v0, Lcom/twitter/android/widget/t;

    const/4 v1, 0x4

    new-array v1, v1, [Z

    fill-array-data v1, :array_158

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/widget/BaseAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twitter/android/TweetFragment;->o:Lcom/twitter/android/fr;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/twitter/android/fq;

    invoke-direct {v5, p0}, Lcom/twitter/android/fq;-><init>(Lcom/twitter/android/TweetFragment;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/android/fr;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/twitter/android/TweetFragment;->r:Lcom/twitter/android/fm;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v3}, Lcom/twitter/android/widget/t;-><init>([Z[Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/android/widget/t;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/android/widget/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/t;->a(Z)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->D:Landroid/view/View;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->D:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/android/widget/t;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->v:Z

    iget-wide v0, p1, Lcom/twitter/android/provider/m;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v0, Lcom/twitter/android/TweetFragment;->y:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v7}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment;->z:Z

    if-nez v1, :cond_115

    if-eqz v0, :cond_131

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    cmp-long v0, v9, v0

    if-gez v0, :cond_131

    :cond_115
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :goto_11e
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->w:Lcom/twitter/android/api/a;

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->r:Lcom/twitter/android/fm;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->w:Lcom/twitter/android/api/a;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/fm;->a(Landroid/content/Context;Lcom/twitter/android/api/a;)V

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->m()V

    :cond_130
    :goto_130
    return-void

    :cond_131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->z:Z

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v2, p1, Lcom/twitter/android/provider/m;->o:J

    iget-wide v4, p1, Lcom/twitter/android/provider/m;->j:J

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/twitter/android/TweetFragment;->y:Landroid/support/v4/util/LruCache;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11e

    :cond_14c
    if-eqz v8, :cond_130

    iget-wide v0, p1, Lcom/twitter/android/provider/m;->o:J

    invoke-virtual {v6, v0, v1}, Lcom/twitter/android/client/b;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->a(Ljava/lang/String;)V

    goto :goto_130

    :array_158
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method protected final b_()V
    .registers 1

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->l()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_30

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x23

    if-ne v0, v2, :cond_31

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->g(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "context"

    const-string v2, "hashtag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    const/16 v1, 0x40

    if-ne v0, v1, :cond_30

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->g(I)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "screen_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imp"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_30
.end method

.method protected final e(I)Landroid/app/Dialog;
    .registers 6

    packed-switch p1, :pswitch_data_40

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->e(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00d6

    new-instance v3, Lcom/twitter/android/fl;

    invoke-direct {v3, p0, v0}, Lcom/twitter/android/fl;-><init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method protected final h(I)Lcom/twitter/android/provider/m;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    return-object v0
.end method

.method public final l()V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/TweetFragment;->v:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->g:Lcom/twitter/android/be;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/be;->a(Z)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/android/widget/t;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->q:Lcom/twitter/android/widget/t;

    invoke-virtual {v0}, Lcom/twitter/android/widget/t;->notifyDataSetChanged()V

    goto :goto_a
.end method

.method final m()V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v0, v0, Lcom/twitter/android/provider/m;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget v1, p0, Lcom/twitter/android/TweetFragment;->G:I

    iget v2, p0, Lcom/twitter/android/TweetFragment;->F:I

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v3}, Lcom/twitter/android/widget/TweetDetailView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->p:Lcom/twitter/android/fr;

    invoke-virtual {v3}, Lcom/twitter/android/fr;->getCount()I

    move-result v3

    if-lez v3, :cond_29

    mul-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    :cond_29
    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->r:Lcom/twitter/android/fm;

    invoke-virtual {v3}, Lcom/twitter/android/fm;->getCount()I

    move-result v3

    if-lez v3, :cond_36

    mul-int/2addr v2, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_36
    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->D:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_f2

    :goto_d
    return-void

    :sswitch_e
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "reply_to_tweet"

    new-array v2, v2, [Lcom/twitter/android/provider/m;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.twitter.android.post.reply"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->P:Lcom/twitter/android/service/ScribeEvent;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->E:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_d

    :sswitch_46
    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-boolean v0, v3, Lcom/twitter/android/provider/m;->l:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v4, v4, Lcom/twitter/android/provider/m;->o:J

    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/twitter/android/client/b;->c(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, v3, Lcom/twitter/android/provider/m;->l:Z

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->H:Landroid/widget/ImageButton;

    const v2, 0x7f02006e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_64
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->S:Lcom/twitter/android/service/ScribeEvent;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->E:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_d

    :cond_77
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v4, v4, Lcom/twitter/android/provider/m;->o:J

    iget-object v6, p0, Lcom/twitter/android/TweetFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, v3, Lcom/twitter/android/provider/m;->l:Z

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->H:Landroid/widget/ImageButton;

    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_64

    :sswitch_90
    iget-object v4, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v5

    iget-wide v8, v4, Lcom/twitter/android/provider/m;->q:J

    cmp-long v0, v8, v5

    if-nez v0, :cond_b3

    iget-boolean v0, v4, Lcom/twitter/android/provider/m;->r:Z

    if-eqz v0, :cond_b3

    :goto_a4
    new-instance v0, Lcom/twitter/android/fk;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/fk;-><init>(Lcom/twitter/android/TweetFragment;ZLcom/twitter/android/client/b;Lcom/twitter/android/provider/m;JLandroid/support/v4/app/FragmentActivity;)V

    invoke-static {v7, v2, v0}, Lcom/twitter/android/client/b;->a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_d

    :cond_b3
    move v2, v1

    goto :goto_a4

    :sswitch_b5
    invoke-virtual {p0, v2}, Lcom/twitter/android/TweetFragment;->f(I)V

    goto/16 :goto_d

    :sswitch_ba
    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->s:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->T:Lcom/twitter/android/service/ScribeEvent;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->E:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_d

    :sswitch_d0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->g(I)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->c(J)V

    goto/16 :goto_d

    :sswitch_e3
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetFragment;->g(I)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v0, v0, Lcom/twitter/android/provider/m;->q:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TweetFragment;->c(J)V

    goto/16 :goto_d

    nop

    :sswitch_data_f2
    .sparse-switch
        0x7f07001a -> :sswitch_e
        0x7f07001b -> :sswitch_90
        0x7f07001c -> :sswitch_46
        0x7f07001d -> :sswitch_ba
        0x7f07001e -> :sswitch_b5
        0x7f07004f -> :sswitch_d0
        0x7f0700b7 -> :sswitch_e3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twitter/android/fp;

    invoke-direct {v0, p0}, Lcom/twitter/android/fp;-><init>(Lcom/twitter/android/TweetFragment;)V

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->d:Lcom/twitter/android/client/g;

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/b;->a(ILcom/twitter/android/util/w;)V

    if-eqz p1, :cond_24

    const-string v0, "as"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/a;

    iput-object v0, p0, Lcom/twitter/android/TweetFragment;->w:Lcom/twitter/android/api/a;

    const-string v0, "f"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetFragment;->z:Z

    :cond_24
    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TweetFragment;->G:I

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TweetFragment;->E:I

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TweetFragment;->F:I

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/z;->n:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v5, v3, Lcom/twitter/android/provider/m;->o:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ownerId"

    iget-object v5, p0, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v5}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const v0, 0x7f030012

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/TweetFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/b;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/TweetFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "as"

    iget-object v1, p0, Lcom/twitter/android/TweetFragment;->w:Lcom/twitter/android/api/a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "f"

    iget-boolean v1, p0, Lcom/twitter/android/TweetFragment;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/TweetFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    return-void
.end method
