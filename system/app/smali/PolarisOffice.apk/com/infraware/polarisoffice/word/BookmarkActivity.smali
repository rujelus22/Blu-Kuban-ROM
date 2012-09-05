.class public Lcom/infraware/polarisoffice/word/BookmarkActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "BookmarkActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_EDIT_CURSOR_MODE;
.implements Lcom/infraware/office/evengine/E$EV_BOOKMARK_EDITOR_MODE;


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/infraware/polarisoffice/common/MultiListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field bookmarkTextWatcher:Landroid/text/TextWatcher;

.field private mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

.field private mAddBookmarkEdit:Landroid/widget/EditText;

.field private mAddBtn:Landroid/widget/ImageButton;

.field private mBtnPos:I

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field mSrcListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/polarisoffice/common/MultiListItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_AlertDialog:Landroid/app/AlertDialog;

.field private m_ExistAlertDialog:Landroid/app/AlertDialog;

.field private m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

.field private m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

.field private mbClick:Z

.field private final messageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 270
    new-instance v0, Lcom/infraware/polarisoffice/word/BookmarkActivity$3;

    invoke-direct {v0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$3;-><init>()V

    sput-object v0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->sDisplayNameComparator:Ljava/util/Comparator;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 42
    const-string v0, "BookmarkActivity"

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->LOG_CAT:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 44
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    .line 45
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    .line 46
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;

    .line 47
    iput v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I

    .line 48
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z

    .line 49
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

    .line 50
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    .line 51
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;

    .line 54
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 87
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Lcom/infraware/polarisoffice/word/BookmarkActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$1;-><init>(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 107
    new-instance v0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;-><init>(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->messageHandler:Landroid/os/Handler;

    .line 344
    new-instance v0, Lcom/infraware/polarisoffice/word/BookmarkActivity$4;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$4;-><init>(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->bookmarkTextWatcher:Landroid/text/TextWatcher;

    .line 41
    return-void
.end method

.method private AddBookmark()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 287
    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, strAddBookmark:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 289
    const-string v4, "BookmarkActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AddBookmark return ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_4e

    .line 310
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z

    .line 311
    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4, v7, v3}, Lcom/infraware/office/evengine/EvInterface;->IBookmarkEditor(ILjava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08011e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 316
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->finish()V

    .line 317
    :goto_4d
    return-void

    .line 291
    :cond_4e
    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/polarisoffice/common/MultiListItem;

    .line 292
    .local v2, item:Lcom/infraware/polarisoffice/common/MultiListItem;
    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 293
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 295
    const v4, 0x7f0801dd

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 296
    const v4, 0x7f080043

    new-instance v5, Lcom/infraware/polarisoffice/word/BookmarkActivity$6;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$6;-><init>(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 296
    iput-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;

    .line 304
    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 305
    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 306
    iput-boolean v7, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z

    goto :goto_4d

    .line 290
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->AddBookmark()V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/word/BookmarkActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/word/BookmarkActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I

    return v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/word/BookmarkActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->initBookmark()V

    return-void
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Lcom/infraware/polarisoffice/common/MultiAdapter;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/word/BookmarkActivity;Landroid/app/AlertDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private initBookmark()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, item:Lcom/infraware/polarisoffice/common/MultiListItem;
    const/4 v5, 0x0

    .line 234
    .local v5, strBookmark:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080187

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, strTemp:Ljava/lang/String;
    iget-object v8, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v8}, Lcom/infraware/office/evengine/EvInterface;->IGetBookmarkCount_Editor()I

    move-result v3

    .line 236
    .local v3, nRet:I
    const-string v8, "BookmarkActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "GetBookmark nRet = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-lez v3, :cond_a6

    .line 238
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2b
    if-lt v0, v3, :cond_5c

    .line 244
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 245
    .local v7, temp:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_33
    add-int/lit8 v8, v3, 0x1

    if-lt v2, v8, :cond_7e

    .line 258
    .end local v0           #i:I
    .end local v2           #k:I
    .end local v7           #temp:Ljava/lang/String;
    :goto_37
    iget-object v8, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, orgName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_c4

    .line 261
    iget-object v8, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Landroid/widget/EditText;->setSelection(II)V

    .line 267
    :goto_54
    iget-object v8, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    sget-object v9, Lcom/infraware/polarisoffice/word/BookmarkActivity;->sDisplayNameComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    return-void

    .line 239
    .end local v4           #orgName:Ljava/lang/String;
    .restart local v0       #i:I
    :cond_5c
    iget-object v8, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v8, v0}, Lcom/infraware/office/evengine/EvInterface;->IGetBookmarkInfo_Editor(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    new-instance v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    .end local v1           #item:Lcom/infraware/polarisoffice/common/MultiListItem;
    const/4 v8, 0x5

    const v9, 0x7f020004

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x106000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v1, v8, v5, v9, v10}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(ILjava/lang/String;II)V

    .line 241
    .restart local v1       #item:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v8, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 247
    .restart local v2       #k:I
    .restart local v7       #temp:Ljava/lang/String;
    :cond_7e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-direct {p0, v7}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->initBookmarkName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 250
    move-object v6, v7

    .line 251
    goto :goto_37

    .line 245
    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 255
    .end local v0           #i:I
    .end local v2           #k:I
    .end local v7           #temp:Ljava/lang/String;
    :cond_a6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_37

    .line 263
    .restart local v4       #orgName:Ljava/lang/String;
    :cond_c4
    iget-object v8, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v8, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v12, v9}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_54
.end method

.method private initBookmarkName(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 283
    const/4 v1, 0x1

    :goto_a
    return v1

    .line 280
    :cond_b
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 281
    const/4 v1, 0x0

    goto :goto_a

    .line 278
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->setContentView(I)V

    .line 179
    const v3, 0x7f080187

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->setTitle(I)V

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    .line 182
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 183
    const v3, 0x7f0c0049

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    .line 185
    new-instance v3, Lcom/infraware/polarisoffice/common/EditInputFilter;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/infraware/polarisoffice/common/EditInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

    .line 186
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/EditInputFilter;->setMaxLength(I)V

    .line 187
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/EditInputFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 189
    const v3, 0x7f0c0048

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;

    .line 190
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v3

    iget v1, v3, Lcom/infraware/office/evengine/EV$CARET_INFO;->bCaret:I

    .line 193
    .local v1, nCaretMode:I
    if-eq v1, v6, :cond_68

    const/4 v3, 0x2

    if-eq v1, v3, :cond_68

    const/4 v3, 0x3

    if-ne v1, v3, :cond_bb

    .line 194
    :cond_68
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 195
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 196
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->bookmarkTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    new-instance v3, Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/ImmManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 200
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 210
    :goto_85
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->initBookmark()V

    .line 211
    const v3, 0x7f0c004b

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 212
    .local v0, listView:Landroid/widget/ListView;
    new-instance v3, Lcom/infraware/polarisoffice/common/MultiAdapter;

    iget-object v4, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->messageHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v5}, Lcom/infraware/polarisoffice/common/MultiAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    .line 213
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 215
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 216
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 217
    new-instance v3, Lcom/infraware/polarisoffice/word/BookmarkActivity$5;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$5;-><init>(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 229
    return-void

    .line 203
    .end local v0           #listView:Landroid/widget/ListView;
    .end local v2           #selector:Landroid/graphics/drawable/Drawable;
    :cond_bb
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 204
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 205
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBtn:Landroid/widget/ImageButton;

    const v4, 0x7f02002c

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 206
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 207
    iget-object v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAddBookmarkEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_85
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 60
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    .line 63
    :cond_c
    iput-object v1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

    .line 65
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onDestroy()V

    .line 66
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 8
    .parameter "nLocale"

    .prologue
    const/4 v5, -0x1

    .line 321
    const v2, 0x7f080187

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->setTitle(I)V

    .line 322
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 323
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/MultiAdapter;->notifyDataSetChanged()V

    .line 324
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->initBookmark()V

    .line 326
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_61

    .line 327
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 328
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    iget v3, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    .line 329
    .local v1, item:Lcom/infraware/polarisoffice/common/MultiListItem;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08021f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, deleteStr:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f080046

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 333
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f080047

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 337
    .end local v0           #deleteStr:Ljava/lang/String;
    .end local v1           #item:Lcom/infraware/polarisoffice/common/MultiListItem;
    :cond_61
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_85

    .line 338
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 339
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;

    const v3, 0x7f0801dd

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_ExistAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 342
    :cond_85
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onPause()V

    .line 74
    :cond_9
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onPause()V

    .line 75
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onResume()V

    .line 84
    :cond_9
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onResume()V

    .line 85
    return-void
.end method
