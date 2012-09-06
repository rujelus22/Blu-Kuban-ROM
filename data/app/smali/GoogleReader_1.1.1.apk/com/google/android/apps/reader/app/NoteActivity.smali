.class public Lcom/google/android/apps/reader/app/NoteActivity;
.super Landroid/app/Activity;
.source "NoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Ljava/lang/Runnable;


# static fields
.field public static final EXTRA_SNIPPET:Ljava/lang/String; = "com.google.android.reader.intent.extra.SNIPPET"

.field private static final REQUEST_PICK_ACCOUNT:I = 0x1

.field private static final STATE_ACCOUNT:Ljava/lang/String; = "reader:account"

.field private static final STATE_SNIPPET:Ljava/lang/String; = "reader:snippet"

.field private static final STATE_TEMPLATE:Ljava/lang/String; = "reader:template"

.field private static final TAG:Ljava/lang/String; = "NoteActivity"


# instance fields
.field private mAccount:Lcom/google/android/accounts/Account;

.field private mAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonDiscard:Landroid/view/View;

.field private mButtonPost:Landroid/view/View;

.field private mCheckBoxShare:Landroid/widget/CheckBox;

.field private mEditAnnotation:Landroid/widget/EditText;

.field private mEditSnippet:Landroid/widget/EditText;

.field private mEditTags:Landroid/widget/MultiAutoCompleteTextView;

.field private mEditTitle:Landroid/widget/EditText;

.field private mEditUrl:Landroid/widget/EditText;

.field private mLabelSnippet:Landroid/view/View;

.field private mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSnippetExtra:Ljava/lang/String;

.field private mSpinnerAccount:Lcom/google/android/apps/reader/widget/IntentSpinner;

.field private mTagAdapter:Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

.field private mTemplate:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private changeAccount(Lcom/google/android/accounts/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mTagAdapter:Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->changeAccount(Lcom/google/android/accounts/Account;)V

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 359
    if-eqz p1, :cond_20

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 364
    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mButtonPost:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 365
    return-void

    .line 362
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f0d0106

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/NoteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_15

    .line 364
    :cond_2d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private insertNote()Z
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 254
    if-nez v0, :cond_e

    .line 255
    const-string v0, "NoteActivity"

    const-string v1, "Account not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    .line 281
    :goto_d
    return v0

    .line 258
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditUrl:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->isSnippetEditable()Z

    move-result v3

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditSnippet:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v3

    .line 261
    :goto_32
    iget-object v4, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditAnnotation:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    iget-object v5, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mCheckBoxShare:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 263
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 264
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 265
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    array-length v8, v6

    move v9, v12

    :goto_5a
    if-ge v9, v8, :cond_75

    aget-object v10, v6, v9

    .line 267
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 268
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6f

    .line 269
    invoke-static {v10}, Lcom/google/android/apps/reader/provider/ReaderStream;->createTagId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_6f
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 260
    :cond_72
    iget-object v3, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mSnippetExtra:Ljava/lang/String;

    goto :goto_32

    .line 272
    :cond_75
    invoke-static {v0, v3, v4, v5, v7}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->insertUri(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Landroid/net/Uri;

    move-result-object v0

    .line 273
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 274
    iget-object v4, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mTemplate:Landroid/content/ContentValues;

    if-eqz v4, :cond_87

    .line 275
    iget-object v4, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mTemplate:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 277
    :cond_87
    const-string v4, "title_plaintext"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "alternate_href"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 281
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9e

    const/4 v0, 0x1

    goto/16 :goto_d

    :cond_9e
    move v0, v12

    goto/16 :goto_d
.end method

.method private isSnippetEditable()Z
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mSnippetExtra:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private pickAccount()V
    .registers 3

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/reader/app/AccountListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/app/NoteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 294
    return-void
.end method

.method private post()V
    .registers 2

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->updatePreference()V

    .line 286
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->insertNote()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->finish()V

    .line 289
    :cond_c
    return-void
.end method

.method private updatePreference()V
    .registers 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mCheckBoxShare:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 248
    const-string v2, "share_note"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    return-void
.end method

.method private updateSnippetVisibility()V
    .registers 3

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->isSnippetEditable()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    move v0, v1

    .line 347
    .local v0, visibility:I
    :goto_8
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditSnippet:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 348
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mLabelSnippet:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 349
    return-void

    .line 346
    .end local v0           #visibility:I
    :cond_13
    const/16 v1, 0x8

    move v0, v1

    goto :goto_8
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_18

    .line 343
    :cond_3
    :goto_3
    return-void

    .line 336
    :pswitch_4
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 337
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, accountName:Ljava/lang/String;
    new-instance v0, Lcom/google/android/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->changeAccount(Lcom/google/android/accounts/Account;)V

    goto :goto_3

    .line 334
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mButtonPost:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 301
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->post()V

    .line 307
    :cond_7
    :goto_7
    return-void

    .line 302
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mButtonDiscard:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 303
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->finish()V

    goto :goto_7

    .line 304
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mSpinnerAccount:Lcom/google/android/apps/reader/widget/IntentSpinner;

    if-ne p1, v0, :cond_7

    .line 305
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->pickAccount()V

    goto :goto_7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->setContentView(I)V

    .line 115
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/reader/widget/IntentSpinner;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mSpinnerAccount:Lcom/google/android/apps/reader/widget/IntentSpinner;

    .line 116
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditUrl:Landroid/widget/EditText;

    .line 117
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTitle:Landroid/widget/EditText;

    .line 118
    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditSnippet:Landroid/widget/EditText;

    .line 119
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditAnnotation:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mCheckBoxShare:Landroid/widget/CheckBox;

    .line 121
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTags:Landroid/widget/MultiAutoCompleteTextView;

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 123
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mLabelSnippet:Landroid/view/View;

    .line 124
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 126
    new-instance v0, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mTagAdapter:Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTags:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mTagAdapter:Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTags:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v1}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 129
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mSpinnerAccount:Lcom/google/android/apps/reader/widget/IntentSpinner;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/IntentSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mSpinnerAccount:Lcom/google/android/apps/reader/widget/IntentSpinner;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/reader/app/AccountListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1, v5}, Lcom/google/android/apps/reader/widget/IntentSpinner;->setIntent(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 134
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mButtonPost:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mButtonPost:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mButtonDiscard:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mButtonDiscard:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    if-nez p1, :cond_13a

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v0, "android.intent.extra.TEMPLATE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mTemplate:Landroid/content/ContentValues;

    .line 144
    const-string v0, "com.google.android.reader.intent.extra.SNIPPET"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mSnippetExtra:Ljava/lang/String;

    .line 145
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 146
    const/4 v0, 0x0

    .line 147
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_ff

    .line 150
    :try_start_ea
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/net/MalformedURLException; {:try_start_ea .. :try_end_f3} :catch_13b

    .line 151
    :try_start_f3
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditUrl:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditUrl:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_fe
    .catch Ljava/net/MalformedURLException; {:try_start_f3 .. :try_end_fe} :catch_142

    move-object v0, v3

    .line 157
    :cond_ff
    :goto_ff
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_10c

    .line 159
    iget-object v2, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTitle:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_10c
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->updateSnippetVisibility()V

    .line 162
    if-eqz v0, :cond_126

    .line 163
    new-instance v1, Lcom/google/android/apps/reader/app/PageInfoTask;

    invoke-direct {v1}, Lcom/google/android/apps/reader/app/PageInfoTask;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/reader/app/PageInfoTask;->setCallback(Ljava/lang/Runnable;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    new-array v2, v5, [Ljava/net/URL;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/app/PageInfoTask;->execute([Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;

    .line 168
    :cond_126
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "share_note"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mCheckBoxShare:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getAccount(Landroid/content/Context;)Lcom/google/android/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->changeAccount(Lcom/google/android/accounts/Account;)V

    .line 172
    :cond_13a
    return-void

    .line 154
    :catch_13b
    move-exception v3

    :goto_13c
    iget-object v3, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditSnippet:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ff

    :catch_142
    move-exception v0

    move-object v0, v3

    goto :goto_13c
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    if-eqz v0, :cond_10

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/app/PageInfoTask;->setCallback(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/app/PageInfoTask;->cancel(Z)Z

    .line 229
    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 230
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 236
    const/4 v0, 0x6

    if-ne p2, v0, :cond_f

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->dismissDropDown()V

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/google/android/apps/reader/util/SoftInput;->hide(Landroid/view/View;)V

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 186
    const-string v1, "reader:account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/accounts/Account;

    .line 187
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/NoteActivity;->changeAccount(Lcom/google/android/accounts/Account;)V

    .line 189
    const-string v1, "reader:snippet"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mSnippetExtra:Ljava/lang/String;

    .line 190
    const-string v1, "reader:template"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mTemplate:Landroid/content/ContentValues;

    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/app/PageInfoTask;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    .line 193
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    if-eqz v1, :cond_37

    .line 194
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/app/PageInfoTask;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 196
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->run()V

    .line 202
    :cond_37
    :goto_37
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->updateSnippetVisibility()V

    .line 203
    return-void

    .line 199
    :cond_3b
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/reader/app/PageInfoTask;->setCallback(Ljava/lang/Runnable;)V

    goto :goto_37
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    if-eqz v1, :cond_10

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    .line 211
    .local v0, nonConfigurationInstance:Lcom/google/android/apps/reader/app/PageInfoTask;
    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/app/PageInfoTask;->setCallback(Ljava/lang/Runnable;)V

    .line 215
    iput-object v2, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    move-object v1, v0

    .line 219
    .end local v0           #nonConfigurationInstance:Lcom/google/android/apps/reader/app/PageInfoTask;
    :goto_f
    return-object v1

    :cond_10
    move-object v1, v2

    goto :goto_f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    const-string v0, "reader:account"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    const-string v0, "reader:template"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mTemplate:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    const-string v0, "reader:snippet"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mSnippetExtra:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 313
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    invoke-virtual {v6}, Lcom/google/android/apps/reader/app/PageInfoTask;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    invoke-virtual {v6}, Lcom/google/android/apps/reader/app/PageInfoTask;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, snippet:Ljava/lang/String;
    if-eqz v5, :cond_20

    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTitle:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 316
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditTitle:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_20
    if-eqz v3, :cond_39

    invoke-direct {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->isSnippetEditable()Z

    move-result v6

    if-eqz v6, :cond_39

    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditSnippet:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 319
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditSnippet:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_39
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    invoke-virtual {v6}, Lcom/google/android/apps/reader/app/PageInfoTask;->getRedirectURL()Ljava/net/URL;

    move-result-object v1

    .line 322
    .local v1, location:Ljava/net/URL;
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditUrl:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 323
    .local v0, currentUrl:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/NoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.TITLE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 324
    .local v2, originalUrl:Ljava/lang/CharSequence;
    if-eqz v1, :cond_65

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 325
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, spec:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditUrl:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mEditUrl:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 329
    .end local v4           #spec:Ljava/lang/String;
    :cond_65
    iget-object v6, p0, Lcom/google/android/apps/reader/app/NoteActivity;->mPageInfoTask:Lcom/google/android/apps/reader/app/PageInfoTask;

    invoke-virtual {v6}, Lcom/google/android/apps/reader/app/PageInfoTask;->isFinished()Z

    move-result v6

    if-nez v6, :cond_72

    const/4 v6, 0x1

    :goto_6e
    invoke-virtual {p0, v6}, Lcom/google/android/apps/reader/app/NoteActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 330
    return-void

    :cond_72
    move v6, v8

    .line 329
    goto :goto_6e
.end method
