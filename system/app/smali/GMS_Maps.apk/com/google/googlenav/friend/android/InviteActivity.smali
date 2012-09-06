.class public Lcom/google/googlenav/friend/android/InviteActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/google/googlenav/friend/android/e;

.field private b:Landroid/content/ContentResolver;

.field private c:Lcom/google/googlenav/friend/android/o;

.field private d:I

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/widget/MultiAutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 462
    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 222
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_10

    .line 223
    :cond_e
    const/4 v0, 0x0

    .line 225
    :goto_f
    return-object v0

    :cond_10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method private a()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    iput-boolean v1, v0, Lcom/google/googlenav/friend/android/o;->a:Z

    .line 168
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->a:Lcom/google/googlenav/friend/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/e;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/d;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/friend/android/InviteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/InviteActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/InviteActivity;Ljava/util/List;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 431
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_1c

    .line 433
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/android/n;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/n;->c:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 432
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 435
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    const-string v1, "INVITE_EMAILS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->setResult(ILandroid/content/Intent;)V

    .line 438
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    .line 439
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/InviteActivity;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->e:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 274
    const v0, 0x7f100074

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const v0, 0x7f1001b8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/google/googlenav/friend/android/h;

    iget-object v2, p0, Lcom/google/googlenav/friend/android/InviteActivity;->a:Lcom/google/googlenav/friend/android/e;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/friend/android/h;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v1}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 282
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/google/googlenav/friend/android/i;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/android/i;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 292
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/friend/android/InviteActivity;)Lcom/google/googlenav/friend/android/o;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .registers 8

    .prologue
    .line 301
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 302
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 303
    const/4 v0, 0x0

    :goto_13
    array-length v1, v4

    if-ge v0, v1, :cond_2f

    .line 304
    aget-object v2, v4, v0

    .line 305
    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 307
    if-nez v1, :cond_23

    move-object v1, v2

    .line 311
    :cond_23
    new-instance v5, Lcom/google/googlenav/friend/android/n;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1, v2}, Lcom/google/googlenav/friend/android/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 313
    :cond_2f
    return-object v3
.end method

.method static synthetic d(Lcom/google/googlenav/friend/android/InviteActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    return v0
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 323
    array-length v0, v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private e()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 332
    iget v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    if-ne v0, v6, :cond_d

    .line 333
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/friend/android/o;->b:Ljava/util/List;

    .line 335
    :cond_d
    new-instance v0, Lcom/google/googlenav/friend/android/j;

    const v3, 0x7f040097

    const v4, 0x7f100090

    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    iget-object v5, v1, Lcom/google/googlenav/friend/android/o;->b:Ljava/util/List;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/friend/android/j;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;Landroid/content/Context;IILjava/util/List;)V

    .line 352
    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 353
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 354
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    new-instance v2, Lcom/google/googlenav/friend/android/k;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/googlenav/friend/android/k;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)V

    .line 384
    new-instance v0, Lcom/google/googlenav/friend/android/l;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/android/l;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;)V

    .line 394
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x54

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/16 v4, 0x55

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/16 v4, 0x4f

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 400
    const/4 v0, 0x0

    :goto_6b
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_77

    .line 401
    invoke-virtual {v1, v0, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 404
    :cond_77
    invoke-static {v2}, Lcom/google/googlenav/ui/android/G;->b(Landroid/app/Dialog;)V

    .line 405
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 411
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x46

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x45

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x362

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/friend/android/m;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/android/m;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 422
    invoke-static {v0}, Lcom/google/googlenav/ui/android/G;->b(Landroid/app/Dialog;)V

    .line 423
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .registers 7
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->a:Lcom/google/googlenav/friend/android/e;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->b:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/friend/android/e;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 202
    const-string v1, "contacts_accessor_contact_id"

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    const-string v2, "contacts_accessor_contact_display_name"

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    const-string v3, "contacts_accessor_email_address"

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 206
    iget-object v3, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    iget-object v3, v3, Lcom/google/googlenav/friend/android/o;->b:Ljava/util/List;

    new-instance v4, Lcom/google/googlenav/friend/android/n;

    invoke-direct {v4, v1, v2, v0}, Lcom/google/googlenav/friend/android/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->e()V

    .line 211
    :goto_2f
    return-void

    .line 209
    :cond_30
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->f()V

    goto :goto_2f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_1e

    .line 192
    :goto_3
    return-void

    .line 179
    :pswitch_4
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/googlenav/friend/android/o;->a:Z

    .line 180
    const/4 v0, -0x1

    if-eq p2, v0, :cond_10

    .line 181
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    goto :goto_3

    .line 184
    :cond_10
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 185
    if-nez v0, :cond_1a

    .line 186
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    goto :goto_3

    .line 189
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Landroid/net/Uri;)V

    goto :goto_3

    .line 177
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 247
    const v0, 0x7f10022a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 248
    iget v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    if-ne v0, v2, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 249
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->e()V

    .line 256
    :cond_17
    :goto_17
    return-void

    .line 252
    :cond_18
    const/16 v0, 0x50

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_17
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x49

    const/4 v4, 0x1

    .line 105
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f040094

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->setContentView(I)V

    .line 110
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    const/16 v1, 0x47

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v0, 0x7f10022a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 114
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 119
    const v1, 0x7f100229

    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020322

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    :cond_48
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 126
    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 127
    invoke-static {}, Lcom/google/googlenav/friend/android/e;->a()Lcom/google/googlenav/friend/android/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->a:Lcom/google/googlenav/friend/android/e;

    .line 128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->e:Landroid/view/LayoutInflater;

    .line 129
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->b:Landroid/content/ContentResolver;

    .line 132
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 133
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/friend/android/o;

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    .line 139
    :goto_6e
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "inviteType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    .line 140
    iget v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    if-nez v1, :cond_b5

    .line 142
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    iget-boolean v0, v0, Lcom/google/googlenav/friend/android/o;->a:Z

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 148
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->a()V

    .line 158
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 159
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->e()V

    .line 161
    :cond_ab
    return-void

    .line 135
    :cond_ac
    new-instance v1, Lcom/google/googlenav/friend/android/o;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/googlenav/friend/android/o;-><init>(Lcom/google/googlenav/friend/android/i;)V

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    goto :goto_6e

    .line 150
    :cond_b5
    iget v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    if-ne v1, v4, :cond_9e

    .line 151
    const/16 v1, 0x4e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/android/InviteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->b()V

    .line 155
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_9e
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 231
    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    .line 232
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/o;

    return-object v0
.end method
