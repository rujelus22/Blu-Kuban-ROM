.class final Lcom/twitter/android/fq;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment;

.field private b:I

.field private c:[Lcom/twitter/android/api/TweetMedia$User;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;)V
    .registers 8

    iput-object p1, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iget-object v0, p1, Lcom/twitter/android/TweetFragment;->x:Landroid/view/ViewGroup;

    if-nez v0, :cond_59

    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/fq;->b:I

    :goto_c
    iget-object v0, p1, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-object v0, v0, Lcom/twitter/android/provider/m;->M:[Lcom/twitter/android/api/TweetMedia;

    if-eqz v0, :cond_58

    array-length v1, v0

    if-lez v1, :cond_58

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v0, Lcom/twitter/android/api/TweetMedia;->authorUser:Lcom/twitter/android/api/TweetMedia$User;

    if-eqz v2, :cond_32

    iget-object v2, v0, Lcom/twitter/android/api/TweetMedia;->authorUser:Lcom/twitter/android/api/TweetMedia$User;

    iget-wide v2, v2, Lcom/twitter/android/api/TweetMedia$User;->userId:J

    iget-object v4, p1, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v4, v4, Lcom/twitter/android/provider/m;->n:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_32

    iget-object v2, v0, Lcom/twitter/android/api/TweetMedia;->authorUser:Lcom/twitter/android/api/TweetMedia$User;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v2, v0, Lcom/twitter/android/api/TweetMedia;->siteUser:Lcom/twitter/android/api/TweetMedia$User;

    if-eqz v2, :cond_3b

    iget-object v0, v0, Lcom/twitter/android/api/TweetMedia;->siteUser:Lcom/twitter/android/api/TweetMedia$User;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/twitter/android/api/TweetMedia$User;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/api/TweetMedia$User;

    iput-object v0, p0, Lcom/twitter/android/fq;->c:[Lcom/twitter/android/api/TweetMedia$User;

    :cond_4f
    iget v0, p0, Lcom/twitter/android/fq;->b:I

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/fq;->b:I

    :cond_58
    return-void

    :cond_59
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/android/fq;->b:I

    goto :goto_c
.end method

.method private a(I)Z
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->x:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/twitter/android/fq;->b:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/fq;->b:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1}, Lcom/twitter/android/fq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/twitter/android/fq;->c:[Lcom/twitter/android/api/TweetMedia$User;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_6
.end method

.method public final getItemId(I)J
    .registers 4

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-wide v0, v0, Lcom/twitter/android/provider/m;->o:J

    :goto_8
    return-wide v0

    :cond_9
    invoke-direct {p0, p1}, Lcom/twitter/android/fq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide/16 v0, 0x0

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/twitter/android/fq;->c:[Lcom/twitter/android/api/TweetMedia$User;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Lcom/twitter/android/api/TweetMedia$User;->userId:J

    goto :goto_8
.end method

.method public final getItemViewType(I)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/twitter/android/fq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_3

    :cond_c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    iget-object v0, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v1, v0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    if-nez p1, :cond_71

    iget-object v0, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v2, v0, Lcom/twitter/android/TweetFragment;->m:Lcom/twitter/android/provider/m;

    iget-object v0, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v3, v0, Lcom/twitter/android/TweetFragment;->n:Lcom/twitter/android/api/TweetMedia;

    if-nez p2, :cond_6a

    iget-object v0, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->u:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v4, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/provider/m;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v5

    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/android/provider/m;Lcom/twitter/android/client/b;Lcom/twitter/android/widget/ad;Lcom/twitter/android/api/TweetEntities;)V

    if-eqz v3, :cond_c1

    iget v2, v3, Lcom/twitter/android/api/TweetMedia;->type:I

    packed-switch v2, :pswitch_data_c4

    :goto_24
    move-object p2, v0

    :goto_25
    invoke-virtual {v0, v3, v1}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/android/api/TweetMedia;Lcom/twitter/android/client/b;)V

    move-object v1, p2

    :goto_29
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    iget v2, p0, Lcom/twitter/android/fq;->b:I

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :pswitch_32
    iget-object v2, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v2, v2, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v4, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v4, v4, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->G:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    move-object p2, v0

    goto :goto_25

    :pswitch_45
    iget-object v2, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v2, v2, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v4, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v4, v4, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->H:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    move-object p2, v0

    goto :goto_25

    :pswitch_58
    iget-object v2, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v2, v2, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget-object v4, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object v4, v4, Lcom/twitter/android/TweetFragment;->l:Lcom/twitter/android/client/Session;

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->F:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_24

    :cond_6a
    move-object v0, p2

    check-cast v0, Lcom/twitter/android/widget/TweetDetailView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/android/client/b;)V

    goto :goto_25

    :cond_71
    invoke-direct {p0, p1}, Lcom/twitter/android/fq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    if-nez p2, :cond_be

    iget-object v0, p0, Lcom/twitter/android/fq;->a:Lcom/twitter/android/TweetFragment;

    iget-object p2, v0, Lcom/twitter/android/TweetFragment;->x:Landroid/view/ViewGroup;

    move-object v1, p2

    goto :goto_29

    :cond_7f
    if-nez p2, :cond_ba

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030062

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/UserView;

    move-object p2, v0

    :goto_94
    iget-object v2, p0, Lcom/twitter/android/fq;->c:[Lcom/twitter/android/api/TweetMedia$User;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v3, v2, Lcom/twitter/android/api/TweetMedia$User;->screenName:Ljava/lang/String;

    iget-object v4, v2, Lcom/twitter/android/api/TweetMedia$User;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/twitter/android/api/TweetMedia$User;->verified:Z

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/UserView;->c(Z)V

    const/4 v3, 0x2

    iget-wide v4, v2, Lcom/twitter/android/api/TweetMedia$User;->userId:J

    iget-object v6, v2, Lcom/twitter/android/api/TweetMedia$User;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    iget-wide v1, v2, Lcom/twitter/android/api/TweetMedia$User;->userId:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/UserView;->a(J)V

    move-object v1, p2

    goto/16 :goto_29

    :cond_ba
    move-object v0, p2

    check-cast v0, Lcom/twitter/android/widget/UserView;

    goto :goto_94

    :cond_be
    move-object v1, p2

    goto/16 :goto_29

    :cond_c1
    move-object p2, v0

    goto/16 :goto_25

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_32
        :pswitch_45
        :pswitch_58
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method
