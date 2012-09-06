.class final Lcom/twitter/android/eo;
.super Lcom/twitter/android/fz;


# instance fields
.field final synthetic a:Lcom/twitter/android/SearchTweetsFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/SearchTweetsFragment;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/fz;-><init>(Lcom/twitter/android/TweetListFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iput-object p9, v0, Lcom/twitter/android/SearchTweetsFragment;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/SearchTweetsFragment;->g(I)V

    :cond_12
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JILcom/twitter/android/api/TwitterStory;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 16

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v2

    if-eqz v2, :cond_6d

    iget v0, v2, Lcom/twitter/android/cm;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6e

    const/4 v0, 0x1

    move v1, v0

    :goto_f
    const/16 v0, 0xc8

    if-ne p3, v0, :cond_97

    if-eqz v1, :cond_8f

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    if-eqz v0, :cond_71

    iget-object v2, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/android/SearchTweetsFragment;->a(Lcom/twitter/android/api/TwitterStory;Lcom/twitter/android/api/y;Ljava/util/ArrayList;)V

    :goto_22
    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iput-object p10, v0, Lcom/twitter/android/SearchTweetsFragment;->v:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/twitter/android/SearchTweetsFragment;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0}, Lcom/twitter/android/SearchTweetsFragment;->g()V

    :goto_33
    if-lez p7, :cond_3b

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    add-int/lit8 v2, p7, 0x1

    iput v2, v0, Lcom/twitter/android/SearchTweetsFragment;->m:I

    :cond_3b
    :goto_3b
    if-eqz v1, :cond_6d

    sget-object v0, Lcom/twitter/android/SearchTweetsFragment;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v1, v1, Lcom/twitter/android/SearchTweetsFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_d2

    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v1, v1, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->j:Lcom/twitter/android/service/ScribeEvent;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iget-object v1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v1, v1, Lcom/twitter/android/SearchTweetsFragment;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->context:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v1, v1, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_f

    :cond_71
    const/4 v0, 0x0

    if-eqz p9, :cond_85

    invoke-virtual {p9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    const/4 v0, 0x0

    invoke-virtual {p9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/y;

    iget-object v2, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iput-object v0, v2, Lcom/twitter/android/SearchTweetsFragment;->x:Lcom/twitter/android/api/y;

    :cond_85
    iget-object v2, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v2, p8, v0, p10}, Lcom/twitter/android/SearchTweetsFragment;->a(Lcom/twitter/android/api/TwitterStory;Lcom/twitter/android/api/y;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iput-object p8, v0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    goto :goto_22

    :cond_8f
    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget v2, v2, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v0, v2}, Lcom/twitter/android/SearchTweetsFragment;->c(I)V

    goto :goto_33

    :cond_97
    iget-object v0, p0, Lcom/twitter/android/eo;->b:Landroid/content/Context;

    const v3, 0x7f0b0091

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget v2, v2, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v0, v2}, Lcom/twitter/android/SearchTweetsFragment;->c(I)V

    goto :goto_3b

    :pswitch_ac
    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsFragment;->w:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v0}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v1, v1, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->j:Lcom/twitter/android/service/ScribeEvent;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    const-string v1, "news_story"

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->context:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v1, v1, Lcom/twitter/android/SearchTweetsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    goto :goto_6d

    :pswitch_data_d2
    .packed-switch 0x5
        :pswitch_ac
    .end packed-switch
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsFragment;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/o;

    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/twitter/android/util/o;->a:Ljava/lang/String;

    const-string v3, "http://maps.google.com/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v2, v2, Lcom/twitter/android/SearchTweetsFragment;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/twitter/android/util/o;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_e

    :cond_32
    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsFragment;->t:Lcom/twitter/android/cl;

    invoke-virtual {v0, p1}, Lcom/twitter/android/cl;->a(Ljava/util/HashMap;)V

    :cond_3f
    return-void
.end method

.method public final h(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_11

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    const/4 v1, 0x6

    iput v1, v0, Lcom/twitter/android/SearchTweetsFragment;->n:I

    :cond_11
    return-void
.end method

.method public final i(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_11

    iget-object v0, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/SearchTweetsFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/twitter/android/SearchTweetsFragment;->n:I

    :cond_11
    return-void
.end method
