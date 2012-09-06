.class public Lcom/twitter/android/EditProfileActivity;
.super Lcom/twitter/android/BaseActivity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/twitter/android/util/w;
.implements Lcom/twitter/android/widget/n;


# static fields
.field private static final i:[Ljava/lang/String;


# instance fields
.field d:Landroid/net/Uri;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field g:Landroid/widget/EditText;

.field h:Landroid/widget/EditText;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private l:J

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "web_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "image_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/EditProfileActivity;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseActivity;-><init>(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->d_(I)V

    iput-wide p5, p0, Lcom/twitter/android/EditProfileActivity;->l:J

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/EditProfileActivity;->l:J

    invoke-virtual {v0, v1, v2, p7}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Bitmap;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->j:Landroid/widget/ImageView;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 5

    iget-wide v0, p0, Lcom/twitter/android/EditProfileActivity;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/u;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/twitter/android/util/u;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/graphics/Bitmap;)V

    :cond_15
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->k:Z

    return-void
.end method

.method final b()V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_27
    sget-object v1, Ld;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_43

    const v0, 0x7f0b016e

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_42
    return-void

    :cond_43
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_48
    move-object v3, v0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/b;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_42
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const v2, 0xaf000

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_b

    :goto_a
    return-void

    :cond_b
    packed-switch p1, :pswitch_data_6e

    goto :goto_a

    :pswitch_f
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5e

    const/4 v0, 0x0

    :try_start_16
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_37

    move-result-object v0

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_69
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_37

    move-result v1

    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    move v0, v1

    :goto_26
    if-ge v0, v2, :cond_45

    iput-object v3, p0, Lcom/twitter/android/EditProfileActivity;->d:Landroid/net/Uri;

    new-instance v0, Lcom/twitter/android/ap;

    invoke-direct {v0, p0}, Lcom/twitter/android/ap;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-array v1, v4, [Landroid/net/Uri;

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/android/ap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a

    :catch_37
    move-exception v1

    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    move v0, v2

    goto :goto_26

    :catchall_3d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_41
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_45
    const v0, 0x7f0b0104

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/EditProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :cond_5e
    const v0, 0x7f0b0039

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :catchall_69
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_41

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method public onClickHandler(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2a

    :goto_7
    return-void

    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/EditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    :sswitch_16
    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->k:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->b()V

    goto :goto_7

    :cond_1e
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    goto :goto_7

    :sswitch_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    goto :goto_7

    :sswitch_data_2a
    .sparse-switch
        0x7f07002f -> :sswitch_22
        0x7f070050 -> :sswitch_8
        0x7f070055 -> :sswitch_16
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 v10, 0x1

    const/4 v3, 0x0

    const v0, 0x7f030017

    invoke-super {p0, p1, v0}, Lcom/twitter/android/BaseActivity;->a(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v2, 0x7f070051

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/widget/EditText;

    const v2, 0x7f070052

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    const v2, 0x7f070053

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    const v2, 0x7f070054

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    const v2, 0x7f07004f

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->j:Landroid/widget/ImageView;

    const-string v2, "user"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a1

    const-string v0, "user"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ac;

    iget-object v1, v0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    iget-wide v5, v0, Lcom/twitter/android/api/ac;->a:J

    iget-object v7, v0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_74
    :goto_74
    const-string v0, "account_name"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->m:Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/ao;

    invoke-direct {v0, p0}, Lcom/twitter/android/ao;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->b:Lcom/twitter/android/client/g;

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v10, p0}, Lcom/twitter/android/client/b;->a(ILcom/twitter/android/util/w;)V

    if-eqz p1, :cond_94

    const-string v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->d:Landroid/net/Uri;

    :cond_94
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_10

    :cond_a1
    const-string v2, "vnd.android.cursor.item/vnd.twitter.android.users"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    sget-object v2, Lcom/twitter/android/EditProfileActivity;->i:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_74

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_de
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_74

    :cond_e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent data must be Twitter User content:// URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9

    const/4 v3, 0x0

    const v6, 0x7f0b00d9

    const v5, 0x7f0b00d5

    packed-switch p1, :pswitch_data_7a

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    new-instance v0, Lcom/twitter/android/ak;

    invoke-direct {v0, p0}, Lcom/twitter/android/ak;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-instance v1, Lcom/twitter/android/al;

    invoke-direct {v1, p0}, Lcom/twitter/android/al;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-instance v2, Lcom/twitter/android/am;

    invoke-direct {v2, p0}, Lcom/twitter/android/am;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0037

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b003a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_e

    :pswitch_42
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v3, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_e

    :pswitch_4f
    new-instance v0, Lcom/twitter/android/an;

    invoke-direct {v0, p0}, Lcom/twitter/android/an;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_e

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_42
        :pswitch_4f
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/b;->b(ILcom/twitter/android/util/w;)V

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->d:Landroid/net/Uri;

    if-eqz v0, :cond_e

    const-string v0, "photo_uri"

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_e
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
