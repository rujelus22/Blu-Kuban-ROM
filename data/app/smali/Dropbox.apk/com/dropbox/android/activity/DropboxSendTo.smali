.class public Lcom/dropbox/android/activity/DropboxSendTo;
.super Lcom/dropbox/android/activity/BrowserWithHistoryStack;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/util/d;
.implements Ldbxyzptlk/e/q;


# static fields
.field private static final y:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/ImageButton;

.field private final C:Lcom/dropbox/android/activity/delegate/x;

.field private final D:Landroid/view/View$OnClickListener;

.field protected m:Z

.field private z:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/DropboxSendTo;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;-><init>()V

    .line 51
    new-instance v0, Lcom/dropbox/android/activity/delegate/x;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/x;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->C:Lcom/dropbox/android/activity/delegate/x;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->m:Z

    .line 129
    new-instance v0, Lcom/dropbox/android/activity/H;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/H;-><init>(Lcom/dropbox/android/activity/DropboxSendTo;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->D:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/DropboxSendTo;)Lcom/dropbox/android/activity/delegate/x;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->C:Lcom/dropbox/android/activity/delegate/x;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 262
    return-void
.end method

.method public final a(Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    iget-boolean v2, p0, Lcom/dropbox/android/activity/DropboxSendTo;->m:Z

    if-nez v2, :cond_11

    .line 278
    sget-object v2, Lcom/dropbox/android/activity/I;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/android/util/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2e

    .line 294
    :cond_11
    :goto_11
    :pswitch_11
    return-void

    .line 284
    :pswitch_12
    iput-boolean v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->m:Z

    .line 285
    new-instance v2, Ldbxyzptlk/e/p;

    sget-object v3, Lcom/dropbox/android/util/e;->b:Lcom/dropbox/android/util/e;

    if-ne v3, p1, :cond_2c

    :goto_1a
    invoke-direct {v2, p0, v0, p2, p3}, Ldbxyzptlk/e/p;-><init>(Landroid/content/Context;ZLjava/util/Collection;Lcom/dropbox/android/util/Z;)V

    .line 290
    sget-object v0, Lcom/dropbox/android/activity/delegate/g;->a:Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/g;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ldbxyzptlk/e/p;->a(I)V

    .line 291
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Ldbxyzptlk/e/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11

    :cond_2c
    move v0, v1

    .line 285
    goto :goto_1a

    .line 278
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final b(I)V
    .registers 2
    .parameter

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->finish()V

    .line 300
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 191
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 192
    if-nez v0, :cond_14

    .line 195
    const-string v0, ""

    .line 197
    :cond_14
    invoke-static {}, Lcom/dropbox/android/util/ab;->b()Ljava/io/File;

    move-result-object v1

    .line 202
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    :try_start_1d
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_8c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_67

    .line 207
    :try_start_22
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_a4
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_ac

    .line 209
    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_33} :catch_b0

    .line 214
    :try_start_33
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_a7
    .catch Ljava/io/SyncFailedException; {:try_start_33 .. :try_end_3a} :catch_b3
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_b0

    .line 218
    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 219
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_40} :catch_b0

    .line 229
    if-eqz v1, :cond_45

    .line 230
    :try_start_42
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_9a

    .line 234
    :cond_45
    :goto_45
    if-eqz v3, :cond_4a

    .line 235
    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_9c

    .line 239
    :cond_4a
    :goto_4a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 240
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/dropbox/android/util/Z;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->z()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, p0, v0, v1, v2}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Landroid/content/Context;Ljava/util/Collection;Lcom/dropbox/android/util/Z;Landroid/database/Cursor;)Z

    .line 242
    return-void

    .line 220
    :catch_67
    move-exception v0

    move-object v1, v2

    .line 222
    :goto_69
    const v3, 0x7f090041

    :try_start_6c
    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/DropboxSendTo;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {p0, v3, v5}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 226
    sget-object v3, Lcom/dropbox/android/activity/DropboxSendTo;->y:Ljava/lang/String;

    const-string v5, "IOException creating tmp file for upload"

    invoke-static {v3, v5, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_6c .. :try_end_7f} :catchall_a9

    .line 229
    if-eqz v1, :cond_84

    .line 230
    :try_start_81
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_9e

    .line 234
    :cond_84
    :goto_84
    if-eqz v2, :cond_4a

    .line 235
    :try_start_86
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_4a

    .line 237
    :catch_8a
    move-exception v0

    goto :goto_4a

    .line 228
    :catchall_8c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 229
    :goto_8f
    if-eqz v1, :cond_94

    .line 230
    :try_start_91
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_a0

    .line 234
    :cond_94
    :goto_94
    if-eqz v3, :cond_99

    .line 235
    :try_start_96
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_a2

    .line 237
    :cond_99
    :goto_99
    throw v0

    .line 232
    :catch_9a
    move-exception v0

    goto :goto_45

    .line 237
    :catch_9c
    move-exception v0

    goto :goto_4a

    .line 232
    :catch_9e
    move-exception v0

    goto :goto_84

    :catch_a0
    move-exception v1

    goto :goto_94

    .line 237
    :catch_a2
    move-exception v1

    goto :goto_99

    .line 228
    :catchall_a4
    move-exception v0

    move-object v1, v2

    goto :goto_8f

    :catchall_a7
    move-exception v0

    goto :goto_8f

    :catchall_a9
    move-exception v0

    move-object v3, v2

    goto :goto_8f

    .line 220
    :catch_ac
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_69

    :catch_b0
    move-exception v0

    move-object v2, v3

    goto :goto_69

    .line 215
    :catch_b3
    move-exception v0

    goto :goto_3a
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/dropbox/android/widget/aa;
    .registers 2

    .prologue
    .line 126
    sget-object v0, Lcom/dropbox/android/widget/aa;->b:Lcom/dropbox/android/widget/aa;

    return-object v0
.end method

.method protected final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 257
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/DropboxSendTo;->requestWindowFeature(I)Z

    .line 66
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->a(Landroid/net/Uri;)V

    .line 70
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    const-string v1, "com.dropbox.activity.extra.NEXT_INTENT"

    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FULL_SCREEN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->finish()V

    .line 122
    :cond_3c
    :goto_3c
    return-void

    .line 82
    :cond_3d
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->A:Landroid/widget/Button;

    .line 83
    new-instance v0, Lcom/dropbox/android/activity/F;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/F;-><init>(Lcom/dropbox/android/activity/DropboxSendTo;)V

    .line 89
    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxSendTo;->A:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->A:Landroid/widget/Button;

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 92
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->z:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->z:Landroid/widget/Button;

    const v1, 0x7f09014c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->z:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxSendTo;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->B:Landroid/widget/ImageButton;

    .line 97
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxSendTo;->B:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 98
    new-instance v0, Lcom/dropbox/android/activity/G;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/G;-><init>(Lcom/dropbox/android/activity/DropboxSendTo;)V

    .line 104
    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxSendTo;->B:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxSendTo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 110
    const-string v0, "PROMPT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_c5

    .line 112
    const v0, 0x7f09014b

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 115
    :goto_aa
    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const-string v0, "PICK_DIR"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_3c

    .line 120
    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxSendTo;->z:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3c

    :cond_c5
    move-object v1, v0

    goto :goto_aa
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method protected final q()I
    .registers 2

    .prologue
    .line 252
    const v0, 0x7f03000d

    return v0
.end method
