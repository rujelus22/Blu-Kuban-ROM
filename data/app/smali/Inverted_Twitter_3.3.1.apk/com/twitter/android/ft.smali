.class final Lcom/twitter/android/ft;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v4, v0, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v1, v1, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    iget v1, v1, Lcom/twitter/android/fy;->a:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->h(I)Lcom/twitter/android/provider/m;

    move-result-object v3

    iget-object v0, v3, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_34

    iget-object v0, v3, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    iget-object v5, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    :goto_21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_e0

    :goto_28
    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, v9}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/MotionEvent;)V

    goto :goto_8

    :cond_34
    move-object v5, v9

    goto :goto_21

    :sswitch_36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reply_to_tweet"

    new-array v2, v6, [Lcom/twitter/android/provider/m;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.twitter.android.post.reply"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/TweetListFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->P:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v0, v1, v2}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_28

    :sswitch_61
    iget-boolean v0, v3, Lcom/twitter/android/provider/m;->l:Z

    if-eqz v0, :cond_7e

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    iget-wide v1, v3, Lcom/twitter/android/provider/m;->o:J

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/twitter/android/client/b;->c(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6f
    iget-object v1, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/TweetListFragment;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->S:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v0, v1, v2}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_28

    :cond_7e
    invoke-virtual {v4}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    iget-wide v1, v3, Lcom/twitter/android/provider/m;->o:J

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    :sswitch_89
    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/twitter/android/provider/m;->a(J)Z

    move-result v2

    new-instance v0, Lcom/twitter/android/fu;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/fu;-><init>(Lcom/twitter/android/ft;ZLcom/twitter/android/provider/m;Lcom/twitter/android/client/b;Ljava/lang/String;JLandroid/content/Context;)V

    iget-object v1, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/twitter/android/client/b;->a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_28

    :sswitch_ac
    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iput-object v3, v0, Lcom/twitter/android/TweetListFragment;->A:Lcom/twitter/android/provider/m;

    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, v6}, Lcom/twitter/android/TweetListFragment;->f(I)V

    goto/16 :goto_28

    :sswitch_b7
    invoke-virtual {v3}, Lcom/twitter/android/provider/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    iget-object v2, v3, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v2}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/TweetListFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v0

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->T:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v0, v1, v2}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_28

    :sswitch_d3
    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    iput-object v3, v0, Lcom/twitter/android/TweetListFragment;->A:Lcom/twitter/android/provider/m;

    iget-object v0, p0, Lcom/twitter/android/ft;->a:Lcom/twitter/android/TweetListFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->f(I)V

    goto/16 :goto_28

    nop

    :sswitch_data_e0
    .sparse-switch
        0x7f07001a -> :sswitch_36
        0x7f07001b -> :sswitch_89
        0x7f07001c -> :sswitch_61
        0x7f07001d -> :sswitch_b7
        0x7f07001e -> :sswitch_ac
        0x7f0700b2 -> :sswitch_d3
    .end sparse-switch
.end method
