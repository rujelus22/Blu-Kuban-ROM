.class public Lcom/twitter/android/MessagesThreadActivity;
.super Lcom/twitter/android/BaseListActivity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/android/w;
.implements Lcom/twitter/android/widget/ad;


# static fields
.field private static final p:Ljava/text/SimpleDateFormat;

.field private static final q:[Ljava/lang/String;


# instance fields
.field j:Landroid/widget/TextView;

.field k:Landroid/widget/EditText;

.field l:Landroid/widget/Button;

.field m:Landroid/widget/ProgressBar;

.field n:Ljava/lang/String;

.field o:I

.field private r:Landroid/widget/AutoCompleteTextView;

.field private s:Lcom/twitter/android/gn;

.field private t:J

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/MessagesThreadActivity;->p:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "s_profile_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "entities"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/MessagesThreadActivity;->q:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/MessagesThreadActivity;)V
    .registers 1

    invoke-super {p0}, Lcom/twitter/android/BaseListActivity;->a()V

    return-void
.end method

.method static synthetic i()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/twitter/android/MessagesThreadActivity;->p:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private j()Z
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget v1, p0, Lcom/twitter/android/MessagesThreadActivity;->o:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->r:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_15
    if-lez v0, :cond_1d

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private k()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->r:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_10
    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method protected final a()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/MessagesThreadActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->showDialog(I)V

    :goto_a
    return-void

    :cond_b
    invoke-super {p0}, Lcom/twitter/android/BaseListActivity;->a()V

    goto :goto_a
.end method

.method public final a(Lcom/twitter/android/api/TweetEntities$Url;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/twitter/android/BaseActivity;->a(Landroid/content/Context;Lcom/twitter/android/api/TweetEntities$Url;J)V

    return-void
.end method

.method public final a(Lcom/twitter/android/api/TweetMedia;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->s:Lcom/twitter/android/gn;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->s:Lcom/twitter/android/gn;

    invoke-virtual {v0}, Lcom/twitter/android/gn;->notifyDataSetChanged()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListActivity;->a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V

    goto :goto_9
.end method

.method public final a_(I)V
    .registers 5

    packed-switch p1, :pswitch_data_1e

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->a_(I)V

    :goto_6
    return-void

    :pswitch_7
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->h()V

    goto :goto_6

    nop

    :pswitch_data_1e
    .packed-switch 0x7f07004d
        :pswitch_7
    .end packed-switch
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    new-instance v0, Lcom/twitter/android/v;

    invoke-direct {v0, p0, p0}, Lcom/twitter/android/v;-><init>(Landroid/app/Activity;Lcom/twitter/android/w;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b(I)V
    .registers 4

    iput p1, p0, Lcom/twitter/android/MessagesThreadActivity;->o:I

    iget-boolean v0, p0, Lcom/twitter/android/MessagesThreadActivity;->u:Z

    if-eqz v0, :cond_10

    if-lez p1, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/MessagesThreadActivity;->u:Z

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->x()V

    :cond_10
    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    rsub-int v1, v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->g()V

    return-void
.end method

.method final b(Z)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_f
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method final g()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->l:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twitter/android/MessagesThreadActivity;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method final h()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Ljava/lang/String;

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    iget-wide v2, p0, Lcom/twitter/android/MessagesThreadActivity;->t:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/client/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_29
    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_2d
    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    packed-switch p1, :pswitch_data_1c

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_3

    :pswitch_b
    const-string v0, "username"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->r:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/MessagesThreadActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->showDialog(I)V

    :goto_a
    return-void

    :cond_b
    invoke-super {p0}, Lcom/twitter/android/BaseListActivity;->onBackPressed()V

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    const v0, 0x7f03002f

    invoke-super {p0, p1, v0, v12, v11}, Lcom/twitter/android/BaseListActivity;->a(Landroid/os/Bundle;IZZ)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->f:Lcom/twitter/android/widget/Navbar;

    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f07004d

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->l:Landroid/widget/Button;

    const v2, 0x7f0b00c5

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f07006d

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->m:Landroid/widget/ProgressBar;

    const v0, 0x7f07006c

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/MessagesThreadActivity;->t:J

    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Ljava/lang/String;

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/twitter/android/MessagesThreadActivity;->t:J

    cmp-long v0, v3, v9

    if-nez v0, :cond_12e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    new-instance v6, Lcom/twitter/android/client/a;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v7

    const-string v8, "dm"

    invoke-direct {v6, p0, v7, v8, v12}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "followers_timestamp"

    invoke-virtual {v6, v7, v9, v10}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    add-long/2addr v7, v9

    cmp-long v7, v7, v3

    if-gez v7, :cond_b6

    invoke-virtual {v6}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v6

    const-string v7, "followers_timestamp"

    invoke-virtual {v6, v7, v3, v4}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;J)Lcom/twitter/android/client/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/a;->c()Z

    iget-object v3, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    const/16 v4, 0x190

    invoke-virtual {v3, v0, v12, v11, v4}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;III)Ljava/lang/String;

    :cond_b6
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/twitter/android/bx;

    invoke-direct {v3, p0}, Lcom/twitter/android/bx;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/gn;

    sget-object v3, Lcom/twitter/android/provider/ab;->j:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ownerId"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    invoke-direct {v2, p0, v1, v3}, Lcom/twitter/android/gn;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/twitter/android/client/b;)V

    iput-object v2, p0, Lcom/twitter/android/MessagesThreadActivity;->s:Lcom/twitter/android/gn;

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->s:Lcom/twitter/android/gn;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->r:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0b00f4

    invoke-virtual {p0, v1}, Lcom/twitter/android/MessagesThreadActivity;->c_(I)V

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12a

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_107
    sget-object v0, Lcom/twitter/android/MessagesThreadActivity;->p:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/android/cc;

    invoke-direct {v0, p0, v5}, Lcom/twitter/android/cc;-><init>(Lcom/twitter/android/MessagesThreadActivity;Lcom/twitter/android/bx;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->d:Lcom/twitter/android/client/g;

    if-eqz p1, :cond_17f

    const-string v0, "show_link_hint"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/MessagesThreadActivity;->u:Z

    goto/16 :goto_13

    :cond_12a
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    goto :goto_107

    :cond_12e
    iget-wide v3, p0, Lcom/twitter/android/MessagesThreadActivity;->t:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/s;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/MessagesThreadActivity;->q:[Ljava/lang/String;

    const-string v3, "thread=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object v0, v4, v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/MessagesThreadActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v1, Lcom/twitter/android/cd;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/cd;-><init>(Lcom/twitter/android/MessagesThreadActivity;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {p0, v1}, Lcom/twitter/android/MessagesThreadActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->a(Ljava/lang/String;)V

    goto :goto_107

    :cond_17f
    iput-boolean v11, p0, Lcom/twitter/android/MessagesThreadActivity;->u:Z

    goto/16 :goto_13
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    const v7, 0x7f0b00d7

    const v6, 0x7f0b00d6

    const v5, 0x7f0b00d5

    const v4, 0x1080027

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_bc

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_14
    return-object v0

    :pswitch_15
    new-instance v0, Lcom/twitter/android/by;

    invoke-direct {v0, p0}, Lcom/twitter/android/by;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00c3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00c7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00d9

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_14

    :pswitch_3d
    new-instance v0, Lcom/twitter/android/bz;

    invoke-direct {v0, p0}, Lcom/twitter/android/bz;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b014a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b014b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_14

    :pswitch_66
    new-instance v0, Lcom/twitter/android/ca;

    invoke-direct {v0, p0}, Lcom/twitter/android/ca;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0155

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_14

    :pswitch_8f
    new-instance v0, Lcom/twitter/android/cb;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/cb;-><init>(Lcom/twitter/android/MessagesThreadActivity;I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0103

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00fc

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_14

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_15
        :pswitch_3d
        :pswitch_66
        :pswitch_8f
        :pswitch_8f
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100004

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-direct {p0}, Lcom/twitter/android/MessagesThreadActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->h()V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->showDialog(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->showDialog(I)V

    const/4 v0, 0x1

    goto :goto_b

    :pswitch_data_12
    .packed-switch 0x7f0700de
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    const v0, 0x7f0700de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_c
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "show_link_hint"

    iget-boolean v1, p0, Lcom/twitter/android/MessagesThreadActivity;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
