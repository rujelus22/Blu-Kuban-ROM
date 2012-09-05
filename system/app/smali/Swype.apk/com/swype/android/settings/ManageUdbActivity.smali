.class public Lcom/swype/android/settings/ManageUdbActivity;
.super Landroid/app/ListActivity;
.source "ManageUdbActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/settings/ManageUdbActivity$Editor;,
        Lcom/swype/android/settings/ManageUdbActivity$WordListComparator;,
        Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;
    }
.end annotation


# static fields
.field protected static final MSG:I = 0x0

.field protected static final REQUEST_ADD:I = 0x1

.field protected static final REQUEST_DELETE:I = 0x3

.field protected static final REQUEST_EDIT:I = 0x2

.field protected static final REQUEST_NONE:I = 0x0

.field protected static final STATE_INIT:I = 0x0

.field protected static final STATE_LOADED:I = 0x2

.field protected static final STATE_LOADING:I = 0x1


# instance fields
.field protected addButton:Landroid/view/View;

.field protected core:Lcom/swype/android/jni/SwypeCore;

.field protected deleteButton:Landroid/view/View;

.field protected handler:Landroid/os/Handler;

.field protected lastWordTriedToAdd:Ljava/lang/String;

.field protected startedActivity:Z

.field protected state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->lastWordTriedToAdd:Ljava/lang/String;

    .line 486
    return-void
.end method

.method private addWords(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/swype/android/settings/ManageUdbActivity;->lastWordTriedToAdd:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p1}, Lcom/swype/android/jni/SwypeCore;->addUserWord(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private deleteWords([Ljava/lang/String;)V
    .registers 7
    .parameter "words"

    .prologue
    .line 332
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, p1

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 333
    .local v3, word:Ljava/lang/String;
    iget-object v4, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v4, v3}, Lcom/swype/android/jni/SwypeCore;->deleteUserWord(Ljava/lang/String;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 335
    .end local v3           #word:Ljava/lang/String;
    :cond_f
    return-void
.end method

.method private static filter([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    const/4 v1, 0x0

    array-length v2, p0

    :goto_8
    if-ge v1, v2, :cond_1d

    .line 361
    aget-object v3, p0, v1

    .line 363
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_17

    .line 364
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 366
    :cond_17
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 368
    :cond_1d
    return-object v0
.end method

.method private replaceWord(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "originalWord"
    .parameter "newWord"

    .prologue
    .line 338
    iput-object p2, p0, Lcom/swype/android/settings/ManageUdbActivity;->lastWordTriedToAdd:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->replaceUserWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private startActivityForResult(Ljava/lang/Class;Landroid/content/Intent;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->startedActivity:Z

    if-nez v0, :cond_14

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->startedActivity:Z

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    if-eqz p2, :cond_11

    .line 222
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 224
    :cond_11
    invoke-virtual {p0, v0, p3}, Lcom/swype/android/settings/ManageUdbActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    :cond_14
    return-void
.end method

.method private startCore()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 189
    return-void
.end method

.method private stopCore()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    .line 194
    return-void
.end method


# virtual methods
.method protected enableAddButton()V
    .registers 9

    .prologue
    .line 113
    const/4 v1, 0x1

    .line 114
    .local v1, enabled:Z
    iget-object v6, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v6}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, lang:Ljava/lang/String;
    if-eqz v3, :cond_28

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 118
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "chinese"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "japanese"

    aput-object v7, v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1c
    if-ge v2, v4, :cond_28

    aget-object v5, v0, v2

    .line 122
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2e

    .line 123
    const/4 v1, 0x0

    .line 128
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_28
    iget-object v6, p0, Lcom/swype/android/settings/ManageUdbActivity;->addButton:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 129
    return-void

    .line 118
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #s:Ljava/lang/String;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method protected enableDeleteButton()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->deleteButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    return-void

    .line 132
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method protected getWordListAdapter()Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;
    .registers 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;

    return-object p0
.end method

.method protected handleActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 298
    packed-switch p1, :pswitch_data_36

    .line 324
    :cond_4
    :goto_4
    return-void

    .line 300
    :pswitch_5
    if-ne p2, v0, :cond_4

    .line 301
    const-string v0, "word"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 303
    invoke-direct {p0, v0}, Lcom/swype/android/settings/ManageUdbActivity;->addWords(Ljava/lang/String;)V

    goto :goto_4

    .line 309
    :pswitch_17
    if-ne p2, v0, :cond_4

    .line 310
    const-string v0, "original"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, "word"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-direct {p0, v0, v1}, Lcom/swype/android/settings/ManageUdbActivity;->replaceWord(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 317
    :pswitch_29
    if-ne p2, v0, :cond_4

    .line 318
    const-string v0, "words"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-direct {p0, v0}, Lcom/swype/android/settings/ManageUdbActivity;->deleteWords([Ljava/lang/String;)V

    goto :goto_4

    .line 298
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_5
        :pswitch_17
        :pswitch_29
    .end packed-switch
.end method

.method protected handleFoundUserWords([Ljava/lang/String;)V
    .registers 5
    .parameter "words"

    .prologue
    const/4 v2, 0x0

    .line 286
    iget v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 288
    invoke-virtual {p0, v2}, Lcom/swype/android/settings/ManageUdbActivity;->setProgressBarVisibility(Z)V

    .line 289
    invoke-virtual {p0, v2}, Lcom/swype/android/settings/ManageUdbActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getWordListAdapter()Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->clear()V

    .line 292
    :cond_13
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getWordListAdapter()Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/swype/android/settings/ManageUdbActivity;->filter([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->addAll(Ljava/util/Collection;)V

    .line 293
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->enableDeleteButton()V

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    .line 295
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .parameter "msg"

    .prologue
    .line 275
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 281
    const/4 v0, 0x0

    .end local p0
    :goto_6
    return v0

    .line 277
    .restart local p0
    :pswitch_7
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 278
    const/4 v0, 0x1

    goto :goto_6

    .line 275
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method protected handleUserWordDeleted(Ljava/lang/String;)V
    .registers 3
    .parameter "word"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getWordListAdapter()Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->remove(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->enableDeleteButton()V

    .line 374
    return-void
.end method

.method protected handleUserWordsAdded([Ljava/lang/String;)V
    .registers 12
    .parameter "words"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 343
    array-length v4, p1

    if-nez v4, :cond_26

    .line 344
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070098

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/swype/android/settings/ManageUdbActivity;->lastWordTriedToAdd:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, toastText:Ljava/lang/String;
    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 346
    .local v1, toast:Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v1, v4, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 347
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 354
    .end local v1           #toast:Landroid/widget/Toast;
    .end local v2           #toastText:Ljava/lang/String;
    :goto_22
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/swype/android/settings/ManageUdbActivity;->lastWordTriedToAdd:Ljava/lang/String;

    .line 355
    return-void

    .line 349
    :cond_26
    invoke-static {p1}, Lcom/swype/android/settings/ManageUdbActivity;->filter([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 350
    .local v3, word:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getWordListAdapter()Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->add(Ljava/lang/String;)V

    goto :goto_2e

    .line 352
    .end local v3           #word:Ljava/lang/String;
    :cond_42
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->enableDeleteButton()V

    goto :goto_22
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/swype/android/settings/ManageUdbActivity$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/swype/android/settings/ManageUdbActivity$3;-><init>(Lcom/swype/android/settings/ManageUdbActivity;IILandroid/content/Intent;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    iput-boolean v2, p0, Lcom/swype/android/settings/ManageUdbActivity;->startedActivity:Z

    .line 237
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/ManageUdbActivity;->requestWindowFeature(I)Z

    .line 72
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/ManageUdbActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    .line 75
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0}, Lcom/swype/android/jni/SwypeCore;->registerUserDictionaryCallback(Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->handler:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    .line 81
    new-instance v1, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;

    invoke-direct {v1, p0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;-><init>(Lcom/swype/android/settings/ManageUdbActivity;)V

    .line 84
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    if-eqz v0, :cond_3b

    .line 86
    const/4 v2, 0x2

    iput v2, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    .line 87
    invoke-virtual {v1, v0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->addAll(Ljava/util/Collection;)V

    .line 90
    :cond_3b
    invoke-virtual {p0, v1}, Lcom/swype/android/settings/ManageUdbActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/ManageUdbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->addButton:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->addButton:Landroid/view/View;

    new-instance v1, Lcom/swype/android/settings/ManageUdbActivity$1;

    invoke-direct {v1, p0}, Lcom/swype/android/settings/ManageUdbActivity$1;-><init>(Lcom/swype/android/settings/ManageUdbActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/ManageUdbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->deleteButton:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->deleteButton:Landroid/view/View;

    new-instance v1, Lcom/swype/android/settings/ManageUdbActivity$2;

    invoke-direct {v1, p0}, Lcom/swype/android/settings/ManageUdbActivity$2;-><init>(Lcom/swype/android/settings/ManageUdbActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->enableDeleteButton()V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->registerUserDictionaryCallback(Lcom/swype/android/jni/SwypeCore$UserDictionaryCallback;)V

    .line 182
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 184
    return-void
.end method

.method public onFoundUserWords([Ljava/lang/String;)V
    .registers 5
    .parameter "words"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    new-instance v2, Lcom/swype/android/settings/ManageUdbActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/swype/android/settings/ManageUdbActivity$4;-><init>(Lcom/swype/android/settings/ManageUdbActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->addButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 139
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getWordListAdapter()Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/ManageUdbActivity;->startEditWordActivity(Ljava/lang/String;)V

    .line 141
    :cond_13
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 146
    iget v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    .line 149
    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 159
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 160
    iget v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    if-nez v0, :cond_18

    .line 162
    iput v1, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    .line 163
    invoke-virtual {p0, v1}, Lcom/swype/android/settings/ManageUdbActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 164
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->findUserWords(Ljava/lang/String;)V

    .line 168
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->enableAddButton()V

    .line 169
    return-void

    .line 165
    :cond_18
    iget v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/ManageUdbActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_14
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 198
    iget v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getWordListAdapter()Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->getWords()Ljava/util/ArrayList;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 154
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V

    .line 155
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 174
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->startedActivity:Z

    .line 177
    return-void
.end method

.method public onUserWordDeleted(Ljava/lang/String;)V
    .registers 5
    .parameter "word"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    new-instance v2, Lcom/swype/android/settings/ManageUdbActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/swype/android/settings/ManageUdbActivity$6;-><init>(Lcom/swype/android/settings/ManageUdbActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 269
    return-void
.end method

.method public onUserWordsAdded([Ljava/lang/String;)V
    .registers 5
    .parameter "words"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    new-instance v2, Lcom/swype/android/settings/ManageUdbActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/swype/android/settings/ManageUdbActivity$5;-><init>(Lcom/swype/android/settings/ManageUdbActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    return-void
.end method

.method protected startAddWordActivity()V
    .registers 4

    .prologue
    .line 202
    const-class v0, Lcom/swype/android/settings/ManageUdbActivity$Editor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/swype/android/settings/ManageUdbActivity;->startActivityForResult(Ljava/lang/Class;Landroid/content/Intent;I)V

    .line 203
    return-void
.end method

.method protected startDeleteWordsActivity()V
    .registers 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/swype/android/settings/ManageUdbActivity;->getWordListAdapter()Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/ManageUdbActivity$WordListAdapter;->getWords()Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "words"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 213
    const-class v1, Lcom/swype/android/settings/SelectUdbWordsActivity;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2}, Lcom/swype/android/settings/ManageUdbActivity;->startActivityForResult(Ljava/lang/Class;Landroid/content/Intent;I)V

    .line 214
    return-void
.end method

.method protected startEditWordActivity(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    const-class v1, Lcom/swype/android/settings/ManageUdbActivity$Editor;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lcom/swype/android/settings/ManageUdbActivity;->startActivityForResult(Ljava/lang/Class;Landroid/content/Intent;I)V

    .line 208
    return-void
.end method
