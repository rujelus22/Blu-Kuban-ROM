.class public abstract Lcom/twitter/android/TweetListFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/twitter/android/cj;
.implements Lcom/twitter/android/widget/ai;


# instance fields
.field protected A:Lcom/twitter/android/provider/m;

.field protected B:Landroid/view/View$OnClickListener;

.field C:Lcom/twitter/android/fy;

.field private final l:Ljava/util/HashMap;

.field private m:I

.field private n:I

.field private o:Landroid/view/GestureDetector;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/animation/Animation;

.field private r:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->l:Ljava/util/HashMap;

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->i:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_13
    return-void
.end method

.method private c(J)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->l:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2, p1, p2}, Lcom/twitter/android/client/b;->a(J)Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-static {v0}, Lcom/twitter/android/util/x;->b(Ljava/util/Collection;)[J

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;[J)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p4}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method final a(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    invoke-virtual {v0}, Lcom/twitter/android/fy;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    invoke-direct {p0, p1}, Lcom/twitter/android/TweetListFragment;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    check-cast p2, Lcom/twitter/android/provider/m;

    iget-boolean v0, p2, Lcom/twitter/android/provider/m;->K:Z

    if-nez v0, :cond_3c

    iget-wide v0, p0, Lcom/twitter/android/TweetListFragment;->h:J

    iget-wide v2, p2, Lcom/twitter/android/provider/m;->J:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/twitter/android/TweetListFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p2, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/twitter/android/provider/m;->I:Lcom/twitter/android/api/PromotedContent;

    iget-object v2, v2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    :cond_3c
    return-void
.end method

.method protected a(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->l:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/twitter/android/TweetListFragment;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_18
    return-void
.end method

.method final a(Lcom/twitter/android/gb;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z
    .registers 13

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v1, p0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    iget-object v1, v1, Lcom/twitter/android/fy;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    iget-object v0, v0, Lcom/twitter/android/fy;->c:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, p5}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/MotionEvent;)V

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0

    :cond_1f
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/MotionEvent;)V

    :cond_27
    iget-object v0, p1, Lcom/twitter/android/gb;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_35

    iget-object v0, p1, Lcom/twitter/android/gb;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/twitter/android/gb;->b:Landroid/view/ViewGroup;

    :cond_35
    new-instance v0, Lcom/twitter/android/fy;

    iget-object v2, p1, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p1, Lcom/twitter/android/gb;->b:Landroid/view/ViewGroup;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/fy;-><init>(Lcom/twitter/android/TweetListFragment;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/animation/Animation;Landroid/view/animation/Animation;I)V

    iget v1, v0, Lcom/twitter/android/fy;->a:I

    invoke-virtual {p0, v1}, Lcom/twitter/android/TweetListFragment;->h(I)Lcom/twitter/android/provider/m;

    move-result-object v1

    iget-object v2, v0, Lcom/twitter/android/fy;->e:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/TweetListFragment;->B:Landroid/view/View$OnClickListener;

    invoke-static {v3, v1, v2, v4}, Lcom/twitter/android/widget/ah;->a(Lcom/twitter/android/client/Session;Lcom/twitter/android/provider/m;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/twitter/android/fy;->b()V

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    invoke-direct {p0, p5}, Lcom/twitter/android/TweetListFragment;->b(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public b(J)V
    .registers 5

    iget-wide v0, p0, Lcom/twitter/android/TweetListFragment;->h:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TweetListFragment;->c(J)V

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->b(J)V

    return-void
.end method

.method protected e(I)Landroid/app/Dialog;
    .registers 8

    const v5, 0x7f0b00d5

    const v4, 0x7f0b0019

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_84

    :goto_a
    return-object v0

    :pswitch_b
    new-instance v1, Lcom/twitter/android/fw;

    invoke-direct {v1, p0}, Lcom/twitter/android/fw;-><init>(Lcom/twitter/android/TweetListFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0047

    invoke-virtual {p0, v3}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0046

    invoke-virtual {p0, v3}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    :pswitch_4b
    new-instance v1, Lcom/twitter/android/fx;

    invoke-direct {v1, p0}, Lcom/twitter/android/fx;-><init>(Lcom/twitter/android/TweetListFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01be

    invoke-virtual {p0, v3}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01bf

    invoke-virtual {p0, v3}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/twitter/android/TweetListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_b
        :pswitch_4b
    .end packed-switch
.end method

.method protected abstract h(I)Lcom/twitter/android/provider/m;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_10

    const-string v0, "state_delete_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->A:Lcom/twitter/android/provider/m;

    :cond_10
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v2, "en_gest"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1e
    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lcom/twitter/android/TweetListFragment;->r:Z

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/android/gb;

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/gb;

    iget-object v2, p0, Lcom/twitter/android/TweetListFragment;->p:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/twitter/android/TweetListFragment;->q:Landroid/view/animation/Animation;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/android/gb;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->A:Lcom/twitter/android/provider/m;

    if-eqz v0, :cond_e

    const-string v0, "state_delete_key"

    iget-object v1, p0, Lcom/twitter/android/TweetListFragment;->A:Lcom/twitter/android/provider/m;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_e
    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onStop()V

    iget-wide v0, p0, Lcom/twitter/android/TweetListFragment;->h:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/TweetListFragment;->c(J)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    packed-switch v0, :pswitch_data_2a

    :cond_c
    :goto_c
    :pswitch_c
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->o:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_13
    iput v1, p0, Lcom/twitter/android/TweetListFragment;->m:I

    goto :goto_c

    :pswitch_16
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->C:Lcom/twitter/android/fy;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/twitter/android/TweetListFragment;->m:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/twitter/android/TweetListFragment;->n:I

    if-le v0, v1, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/MotionEvent;)V

    goto :goto_c

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_13
        :pswitch_c
        :pswitch_16
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 14

    const-wide/16 v9, 0xfa

    const/4 v8, 0x1

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/twitter/android/TweetListFragment;->r:Z

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v4, p0, Lcom/twitter/android/TweetListFragment;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/twitter/android/ft;

    invoke-direct {v0, p0}, Lcom/twitter/android/ft;-><init>(Lcom/twitter/android/TweetListFragment;)V

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v2, v5, 0x2

    iput v5, p0, Lcom/twitter/android/TweetListFragment;->n:I

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v7, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iput-object v6, p0, Lcom/twitter/android/TweetListFragment;->p:Landroid/view/animation/Animation;

    iput-object v7, p0, Lcom/twitter/android/TweetListFragment;->q:Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/GestureDetector;

    new-instance v0, Lcom/twitter/android/fv;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/fv;-><init>(Lcom/twitter/android/TweetListFragment;IILandroid/widget/ListView;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-direct {v8, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/twitter/android/TweetListFragment;->o:Landroid/view/GestureDetector;

    goto :goto_a
.end method
