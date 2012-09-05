.class public Lcom/infraware/polarisoffice/search/InputSearchKey;
.super Landroid/app/ListActivity;
.source "InputSearchKey.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;
    }
.end annotation


# instance fields
.field protected m_btnSearch:Landroid/widget/ImageButton;

.field protected m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

.field protected m_llSearchList:Landroid/widget/LinearLayout;

.field private m_nStorageType:I

.field private m_oHandler:Landroid/os/Handler;

.field private m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

.field private m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

.field private m_runAutoFill:Ljava/lang/Runnable;

.field private m_strSearchPath:Ljava/lang/String;

.field searchAdapter:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;

.field private searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_strSearchPath:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_nStorageType:I

    .line 46
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 52
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;

    .line 55
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 57
    iput-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchAdapter:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oHandler:Landroid/os/Handler;

    .line 279
    new-instance v0, Lcom/infraware/polarisoffice/search/InputSearchKey$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/search/InputSearchKey$1;-><init>(Lcom/infraware/polarisoffice/search/InputSearchKey;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_runAutoFill:Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/search/InputSearchKey;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWordInDB()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/search/InputSearchKey;Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/search/InputSearchKey;->showSearchResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/search/InputSearchKey;Lcom/infraware/polarisoffice/search/SearchWordManager;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/search/InputSearchKey;)Lcom/infraware/polarisoffice/search/SearchWordManager;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/search/InputSearchKey;)V
    .registers 1
    .parameter

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->onKeyChanged()V

    return-void
.end method

.method private getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 322
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 325
    return-object v0
.end method

.method private onKeyChanged()V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_runAutoFill:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method private searchWordInDB()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, searchKey:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 395
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    .line 396
    const/4 v1, 0x0

    .line 399
    :goto_17
    return-object v1

    .line 398
    :cond_18
    invoke-static {p0}, Lcom/infraware/polarisoffice/search/SearchWordManager;->getInstance(Landroid/content/Context;)Lcom/infraware/polarisoffice/search/SearchWordManager;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;

    .line 399
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/search/SearchWordManager;->getSearchWord(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_17
.end method

.method private showSearchResult(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/search/SearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/polarisoffice/search/SearchItem;>;"
    const/16 v3, 0x8

    .line 404
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchAdapter:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->clear()V

    .line 405
    if-eqz p1, :cond_3a

    .line 407
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_25

    .line 410
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_33

    .line 411
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_llSearchList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    .end local v0           #i:I
    :goto_1b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchAdapter:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 419
    return-void

    .line 408
    .restart local v0       #i:I
    :cond_25
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchAdapter:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/search/SearchItem;

    invoke-virtual {v2, v1}, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->addList(Lcom/infraware/polarisoffice/search/SearchItem;)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 413
    :cond_33
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_llSearchList:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1b

    .line 416
    .end local v0           #i:I
    :cond_3a
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_llSearchList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1b
.end method


# virtual methods
.method protected getFileItem(I)Lcom/infraware/polarisoffice/search/SearchItem;
    .registers 3
    .parameter "position"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchAdapter:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;

    if-nez v0, :cond_6

    .line 291
    const/4 v0, 0x0

    .line 293
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchAdapter:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/search/SearchItem;

    goto :goto_5
.end method

.method public isSdCardAction(Ljava/lang/String;)V
    .registers 5
    .parameter "nowAction"

    .prologue
    .line 309
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 311
    iget v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_nStorageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 313
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_strSearchPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 315
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->finish()V

    .line 318
    .end local v0           #file:Ljava/io/File;
    :cond_1d
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 5
    .parameter "target"

    .prologue
    .line 238
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, searchKey:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    .line 260
    :cond_16
    :goto_16
    return-void

    .line 243
    :cond_17
    invoke-static {}, Lcom/infraware/polarisoffice/MyApplication;->isButtonEnable()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 246
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_46

    goto :goto_16

    .line 250
    :pswitch_29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "key_search_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->setResult(ILandroid/content/Intent;)V

    .line 254
    invoke-static {p0}, Lcom/infraware/polarisoffice/search/SearchWordManager;->getInstance(Landroid/content/Context;)Lcom/infraware/polarisoffice/search/SearchWordManager;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;

    .line 255
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;

    invoke-virtual {v2, v1}, Lcom/infraware/polarisoffice/search/SearchWordManager;->insertWordToDB(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->finish()V

    goto :goto_16

    .line 247
    :pswitch_data_46
    .packed-switch 0x7f0c0199
        :pswitch_29
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 423
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, searchKey:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 425
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    .line 445
    :cond_16
    :goto_16
    return-void

    .line 428
    :cond_17
    invoke-static {}, Lcom/infraware/polarisoffice/MyApplication;->isButtonEnable()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 431
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_46

    goto :goto_16

    .line 435
    :pswitch_29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "key_search_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->setResult(ILandroid/content/Intent;)V

    .line 439
    invoke-static {p0}, Lcom/infraware/polarisoffice/search/SearchWordManager;->getInstance(Landroid/content/Context;)Lcom/infraware/polarisoffice/search/SearchWordManager;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;

    .line 440
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;

    invoke-virtual {v2, v1}, Lcom/infraware/polarisoffice/search/SearchWordManager;->insertWordToDB(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->finish()V

    goto :goto_16

    .line 432
    :pswitch_data_46
    .packed-switch 0x7f0c0199
        :pswitch_29
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "_newConfig"

    .prologue
    .line 265
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 266
    .local v0, nOrientation:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 268
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    if-eqz v1, :cond_15

    .line 269
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setHint(I)V

    .line 271
    :cond_15
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 272
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v3, 0x7f030043

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/InputSearchKey;->setContentView(I)V

    .line 67
    new-instance v3, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;

    invoke-direct {v3, p0, p0}, Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;-><init>(Lcom/infraware/polarisoffice/search/InputSearchKey;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->searchAdapter:Lcom/infraware/polarisoffice/search/InputSearchKey$SearchListAdapter;

    .line 69
    const v3, 0x7f0c019a

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/InputSearchKey;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_llSearchList:Landroid/widget/LinearLayout;

    .line 70
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_llSearchList:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    const v3, 0x7f0c0199

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/InputSearchKey;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_btnSearch:Landroid/widget/ImageButton;

    .line 73
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_btnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_btnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 77
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_btnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 79
    const v3, 0x7f0c0198

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/search/InputSearchKey;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/infraware/polarisoffice/common/ExEditText;

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    .line 81
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    new-instance v4, Lcom/infraware/polarisoffice/search/InputSearchKey$2;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/search/InputSearchKey$2;-><init>(Lcom/infraware/polarisoffice/search/InputSearchKey;)V

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    new-instance v0, Lcom/infraware/filemanager/file/FileInputFilter;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/file/FileInputFilter;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, inputFilter:Lcom/infraware/filemanager/file/FileInputFilter;
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileInputFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 123
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    new-instance v4, Lcom/infraware/polarisoffice/search/InputSearchKey$3;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/search/InputSearchKey$3;-><init>(Lcom/infraware/polarisoffice/search/InputSearchKey;)V

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    new-instance v4, Lcom/infraware/polarisoffice/search/InputSearchKey$4;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/search/InputSearchKey$4;-><init>(Lcom/infraware/polarisoffice/search/InputSearchKey;)V

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 174
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    new-instance v4, Lcom/infraware/polarisoffice/search/InputSearchKey$5;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/search/InputSearchKey$5;-><init>(Lcom/infraware/polarisoffice/search/InputSearchKey;)V

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnKeyPreImeListener(Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 187
    .local v2, nOrientation:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 189
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 190
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "key_search_path"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_strSearchPath:Ljava/lang/String;

    .line 191
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_strSearchPath:Ljava/lang/String;

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_strSearchPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b1

    .line 192
    :cond_a7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_strSearchPath:Ljava/lang/String;

    .line 194
    :cond_b1
    const-string v3, "key_storage_type"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_nStorageType:I

    .line 196
    new-instance v3, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v3}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 197
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v3, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 198
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/infraware/polarisoffice/search/InputSearchKey;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    new-instance v3, Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/ImmManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 202
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 203
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    :cond_9
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 234
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 464
    const/16 v0, 0x52

    if-ne p1, v0, :cond_9

    .line 465
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 466
    const/4 v0, 0x1

    .line 468
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 473
    const/16 v0, 0x52

    if-ne p1, v0, :cond_9

    .line 474
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->finish()V

    .line 475
    const/4 v0, 0x1

    .line 477
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 450
    packed-switch p1, :pswitch_data_18

    .line 459
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 453
    :pswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 455
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->openOptionsMenu()V

    goto :goto_3

    .line 450
    :pswitch_data_18
    .packed-switch 0x52
        :pswitch_8
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 298
    invoke-virtual {p0, p3}, Lcom/infraware/polarisoffice/search/InputSearchKey;->getFileItem(I)Lcom/infraware/polarisoffice/search/SearchItem;

    move-result-object v1

    .line 300
    .local v1, item:Lcom/infraware/polarisoffice/search/SearchItem;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "key_search_key"

    iget-object v3, v1, Lcom/infraware/polarisoffice/search/SearchItem;->m_strWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->setResult(ILandroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->finish()V

    .line 305
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 211
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onPause()V

    .line 213
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 214
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 222
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onResume()V

    .line 224
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 225
    return-void
.end method
