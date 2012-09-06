.class public final Lcom/twitter/android/dh;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/twitter/android/api/ac;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/android/client/b;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/client/b;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/dh;->c:Lcom/twitter/android/client/b;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/twitter/android/dh;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/twitter/android/dh;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7
.end method

.method private a(Landroid/view/View;I)V
    .registers 5

    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .registers 5

    const v0, 0x7f07009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/twitter/android/util/x;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    invoke-virtual {v0, p1}, Lcom/twitter/android/api/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    invoke-virtual {p0}, Lcom/twitter/android/dh;->notifyDataSetChanged()V

    goto :goto_c
.end method

.method public final getCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    iget-wide v2, v2, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_74

    if-nez p2, :cond_3e

    iget-object v0, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005b

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/dh;->d:Landroid/widget/ImageView;

    const v0, 0x7f070024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/dh;->e:Landroid/widget/TextView;

    const v0, 0x7f0700bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/dh;->f:Landroid/widget/TextView;

    const v0, 0x7f07005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3e
    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_6b

    iget-object v1, p0, Lcom/twitter/android/dh;->c:Lcom/twitter/android/client/b;

    const/4 v2, 0x2

    iget-wide v3, v0, Lcom/twitter/android/api/ac;->a:J

    iget-object v5, v0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/dh;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/twitter/android/dh;->e:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_57
    iget-object v0, p0, Lcom/twitter/android/dh;->f:Landroid/widget/TextView;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, p2

    :goto_60
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/dh;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_6b
    invoke-direct {p0, v3}, Lcom/twitter/android/dh;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twitter/android/dh;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57

    :cond_74
    if-nez p2, :cond_bc

    iget-object v0, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030047

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0700a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/dh;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/twitter/android/dh;->g:Landroid/view/ViewGroup;

    const v1, 0x7f0b002a

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/dh;->a(Landroid/view/View;I)V

    const v0, 0x7f0700a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/dh;->h:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/twitter/android/dh;->h:Landroid/view/ViewGroup;

    const v1, 0x7f0b0031

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/dh;->a(Landroid/view/View;I)V

    const v0, 0x7f0700a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/dh;->i:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/twitter/android/dh;->i:Landroid/view/ViewGroup;

    const v1, 0x7f0b0032

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/dh;->a(Landroid/view/View;I)V

    :cond_bc
    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_d7

    iget-object v1, p0, Lcom/twitter/android/dh;->g:Landroid/view/ViewGroup;

    iget v2, v0, Lcom/twitter/android/api/ac;->n:I

    invoke-direct {p0, v1, v2}, Lcom/twitter/android/dh;->b(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/twitter/android/dh;->h:Landroid/view/ViewGroup;

    iget v2, v0, Lcom/twitter/android/api/ac;->l:I

    invoke-direct {p0, v1, v2}, Lcom/twitter/android/dh;->b(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/twitter/android/dh;->i:Landroid/view/ViewGroup;

    iget v0, v0, Lcom/twitter/android/api/ac;->k:I

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/dh;->b(Landroid/view/View;I)V

    move-object v1, p2

    goto :goto_60

    :cond_d7
    iget-object v0, p0, Lcom/twitter/android/dh;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/dh;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/twitter/android/dh;->h:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/dh;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/twitter/android/dh;->i:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/dh;->b(Landroid/view/View;I)V

    move-object v1, p2

    goto/16 :goto_60
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_82

    goto :goto_5

    :pswitch_e
    iget-object v0, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    iget-wide v3, v3, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    const v3, 0x7f0b002a

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :pswitch_36
    iget-object v0, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/UsersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    iget-wide v3, v3, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :pswitch_5c
    iget-object v0, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/dh;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/UsersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/twitter/android/dh;->a:Lcom/twitter/android/api/ac;

    iget-wide v3, v3, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    nop

    :pswitch_data_82
    .packed-switch 0x7f0700a0
        :pswitch_e
        :pswitch_36
        :pswitch_5c
    .end packed-switch
.end method
