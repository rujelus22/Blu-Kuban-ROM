.class public Lcom/infraware/polarisoffice/viewer/BookClipActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "BookClipActivity.java"


# static fields
.field private static final DIALOG_DELETE:I = 0x64

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

.field bookclipTextWatcher:Landroid/text/TextWatcher;

.field private mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

.field private mAddBtn:Landroid/widget/ImageButton;

.field private mAddClipEdit:Landroid/widget/EditText;

.field private mBtnPos:I

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentLocale:I

.field private mDlgDel:Landroid/app/AlertDialog;

.field private mDlgDuplicateMsg:Landroid/app/AlertDialog;

.field private mDlgMsg:Landroid/app/AlertDialog;

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field private mFilePath:Ljava/lang/String;

.field private mPopupMsgID:I

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

.field private m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

.field private m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

.field private mbClick:Z

.field private final messageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 251
    new-instance v0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$3;

    invoke-direct {v0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$3;-><init>()V

    sput-object v0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->sDisplayNameComparator:Ljava/util/Comparator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 46
    const-string v0, "BookClipActivity"

    iput-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->LOG_CAT:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 48
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    .line 49
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    .line 50
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mFilePath:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddBtn:Landroid/widget/ImageButton;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I

    .line 53
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z

    .line 55
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

    .line 58
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 62
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    .line 65
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDel:Landroid/app/AlertDialog;

    .line 66
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDuplicateMsg:Landroid/app/AlertDialog;

    .line 67
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgMsg:Landroid/app/AlertDialog;

    .line 68
    iput v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mPopupMsgID:I

    .line 70
    iput v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mCurrentLocale:I

    .line 84
    new-instance v0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$1;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$2;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->messageHandler:Landroid/os/Handler;

    .line 402
    new-instance v0, Lcom/infraware/polarisoffice/viewer/BookClipActivity$4;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$4;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->bookclipTextWatcher:Landroid/text/TextWatcher;

    .line 44
    return-void
.end method

.method private AddBookClip()V
    .registers 10

    .prologue
    .line 261
    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, strBookClipName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 263
    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v4

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EV;->getBookClip()Lcom/infraware/office/evengine/EV$BOOK_CLIP;

    move-result-object v0

    .line 264
    .local v0, a_Clip:Lcom/infraware/office/evengine/EV$BOOK_CLIP;
    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mFilePath:Ljava/lang/String;

    iput-object v4, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 265
    iput-object v3, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    .line 266
    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4, v0}, Lcom/infraware/office/evengine/EvInterface;->ISetBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I

    move-result v2

    .line 267
    .local v2, nRet:I
    const-string v4, "BookClipActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AddBookClip return ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    if-nez v2, :cond_65

    .line 271
    new-instance v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    const/4 v4, 0x5

    iget-object v5, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    const v6, 0x7f020004

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(ILjava/lang/String;II)V

    .line 272
    .local v1, item:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    sget-object v5, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->sDisplayNameComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/MultiAdapter;->notifyDataSetChanged()V

    .line 275
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->finish()V

    .line 300
    .end local v1           #item:Lcom/infraware/polarisoffice/common/MultiListItem;
    :goto_64
    return-void

    .line 278
    :cond_65
    const/4 v4, 0x1

    if-ne v2, v4, :cond_71

    .line 280
    const v4, 0x7f0801e0

    iput v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mPopupMsgID:I

    .line 281
    invoke-direct {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->showMsgPopop()V

    goto :goto_64

    .line 283
    :cond_71
    const/4 v4, 0x2

    if-ne v2, v4, :cond_78

    .line 285
    invoke-direct {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->showDuplicateMsgPopup()V

    goto :goto_64

    .line 287
    :cond_78
    const/4 v4, 0x4

    if-ne v2, v4, :cond_84

    .line 289
    const v4, 0x7f0801e8

    iput v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mPopupMsgID:I

    .line 290
    invoke-direct {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->showMsgPopop()V

    goto :goto_64

    .line 292
    :cond_84
    const/4 v4, 0x3

    if-ne v2, v4, :cond_90

    .line 294
    const v4, 0x7f0801e7

    iput v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mPopupMsgID:I

    .line 295
    invoke-direct {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->showMsgPopop()V

    goto :goto_64

    .line 298
    :cond_90
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z

    goto :goto_64
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/viewer/BookClipActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mbClick:Z

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Lcom/infraware/polarisoffice/common/MultiAdapter;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->AddBookClip()V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/viewer/BookClipActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I

    return v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->initBookClip()V

    return-void
.end method

.method private initBookClip()V
    .registers 14

    .prologue
    .line 186
    const/4 v6, 0x0

    .line 187
    .local v6, strClip:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08023c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, item:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v8}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/office/evengine/EV;->getBookClip()Lcom/infraware/office/evengine/EV$BOOK_CLIP;

    move-result-object v0

    .line 190
    .local v0, a_Clip:Lcom/infraware/office/evengine/EV$BOOK_CLIP;
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mFilePath:Ljava/lang/String;

    iput-object v8, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 191
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v8, v0}, Lcom/infraware/office/evengine/EvInterface;->IGetBookClipCount(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I

    move-result v4

    .line 192
    .local v4, nRet:I
    const-string v8, "BookClipActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "GetBookClipCount nRet = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-lez v4, :cond_111

    .line 195
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    if-lt v1, v4, :cond_6a

    .line 208
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 209
    .local v7, temp:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_40
    add-int/lit8 v8, v4, 0x1

    if-lt v3, v8, :cond_ca

    .line 229
    .end local v1           #i:I
    .end local v3           #k:I
    .end local v7           #temp:Ljava/lang/String;
    :goto_44
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, orgName:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_14c

    .line 232
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/EditText;->setSelection(II)V

    .line 239
    :goto_62
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    sget-object v9, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->sDisplayNameComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    return-void

    .line 197
    .end local v5           #orgName:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_6a
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mFilePath:Ljava/lang/String;

    iput-object v8, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 198
    const-string v8, "BookClipActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "IGetBookClipName FilePath = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v8, v1, v0}, Lcom/infraware/office/evengine/EvInterface;->IGetBookClipName(ILcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 200
    const-string v8, "BookClipActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "GetBookClipCount nRet = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v8, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    if-eqz v8, :cond_c6

    iget-object v8, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_c6

    .line 204
    new-instance v2, Lcom/infraware/polarisoffice/common/MultiListItem;

    .end local v2           #item:Lcom/infraware/polarisoffice/common/MultiListItem;
    const/4 v8, 0x5

    iget-object v9, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    const v10, 0x7f020004

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x106000b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(ILjava/lang/String;II)V

    .line 205
    .restart local v2       #item:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_38

    .line 211
    .restart local v3       #k:I
    .restart local v7       #temp:Ljava/lang/String;
    :cond_ca
    iget v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mCurrentLocale:I

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_d6

    iget v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mCurrentLocale:I

    const/16 v9, 0x36

    if-ne v8, v9, :cond_ef

    .line 212
    :cond_d6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 215
    :goto_e6
    invoke-direct {p0, v7}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->initBookclipName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10d

    .line 217
    move-object v6, v7

    .line 218
    goto/16 :goto_44

    .line 214
    :cond_ef
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_e6

    .line 209
    :cond_10d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_40

    .line 222
    .end local v1           #i:I
    .end local v3           #k:I
    .end local v7           #temp:Ljava/lang/String;
    :cond_111
    iget v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mCurrentLocale:I

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_11d

    iget v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mCurrentLocale:I

    const/16 v9, 0x36

    if-ne v8, v9, :cond_12e

    .line 223
    :cond_11d
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_44

    .line 225
    :cond_12e
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

    goto/16 :goto_44

    .line 235
    .restart local v5       #orgName:Ljava/lang/String;
    :cond_14c
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v8, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_62
.end method

.method private initBookclipName(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 248
    const/4 v1, 0x1

    :goto_a
    return v1

    .line 245
    :cond_b
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 246
    const/4 v1, 0x0

    goto :goto_a

    .line 243
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private showDuplicateMsgPopup()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 332
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, strBookClipName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, duplicate:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    const v3, 0x7f080043

    new-instance v4, Lcom/infraware/polarisoffice/viewer/BookClipActivity$8;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$8;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 346
    new-instance v4, Lcom/infraware/polarisoffice/viewer/BookClipActivity$9;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$9;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 357
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 339
    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDuplicateMsg:Landroid/app/AlertDialog;

    .line 359
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDuplicateMsg:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 360
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDuplicateMsg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 361
    return-void
.end method

.method private showMsgPopop()V
    .registers 4

    .prologue
    .line 303
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 305
    iget v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mPopupMsgID:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 306
    const v1, 0x7f080043

    new-instance v2, Lcom/infraware/polarisoffice/viewer/BookClipActivity$6;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$6;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 313
    new-instance v2, Lcom/infraware/polarisoffice/viewer/BookClipActivity$7;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$7;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 306
    iput-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgMsg:Landroid/app/AlertDialog;

    .line 326
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgMsg:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 327
    iget-object v1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgMsg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 329
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->setContentView(I)V

    .line 143
    const v3, 0x7f08013e

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->setTitle(I)V

    .line 144
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v3

    iput v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mCurrentLocale:I

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    .line 148
    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 150
    .local v1, path:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "bmvbookclip.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mFilePath:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 152
    const v3, 0x7f0c0049

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    .line 153
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->bookclipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    new-instance v3, Lcom/infraware/polarisoffice/common/EditInputFilter;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/infraware/polarisoffice/common/EditInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

    .line 155
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/EditInputFilter;->setMaxLength(I)V

    .line 156
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->m_oInputFilter:Lcom/infraware/polarisoffice/common/EditInputFilter;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/EditInputFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 158
    const v3, 0x7f0c0048

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddBtn:Landroid/widget/ImageButton;

    .line 159
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-direct {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->initBookClip()V

    .line 161
    const v3, 0x7f0c004b

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 162
    .local v0, listView:Landroid/widget/ListView;
    new-instance v3, Lcom/infraware/polarisoffice/common/MultiAdapter;

    iget-object v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->messageHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v5}, Lcom/infraware/polarisoffice/common/MultiAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    .line 163
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 165
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 166
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 168
    new-instance v3, Lcom/infraware/polarisoffice/viewer/BookClipActivity$5;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$5;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    new-instance v3, Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/ImmManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 182
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 183
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 427
    packed-switch p1, :pswitch_data_88

    .line 494
    const/4 v3, 0x0

    :goto_5
    return-object v3

    .line 431
    :pswitch_6
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, duplicate:Ljava/lang/String;
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EV;->getBookClip()Lcom/infraware/office/evengine/EV$BOOK_CLIP;

    move-result-object v0

    .line 433
    .local v0, a_Clip:Lcom/infraware/office/evengine/EV$BOOK_CLIP;
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mFilePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 435
    :try_start_1f
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    iget v4, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mBtnPos:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f .. :try_end_2f} :catch_81

    .line 439
    :goto_2f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 441
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    new-instance v4, Lcom/infraware/polarisoffice/viewer/BookClipActivity$10;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$10;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 455
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 456
    new-instance v4, Lcom/infraware/polarisoffice/viewer/BookClipActivity$11;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$11;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 461
    const v4, 0x7f080046

    new-instance v5, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$12;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 482
    const v4, 0x7f080047

    new-instance v5, Lcom/infraware/polarisoffice/viewer/BookClipActivity$13;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$13;-><init>(Lcom/infraware/polarisoffice/viewer/BookClipActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 489
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 441
    iput-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDel:Landroid/app/AlertDialog;

    .line 490
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDel:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 491
    iget-object v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDel:Landroid/app/AlertDialog;

    goto :goto_5

    .line 436
    :catch_81
    move-exception v2

    .line 437
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, ""

    iput-object v3, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    goto :goto_2f

    .line 427
    nop

    :pswitch_data_88
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    .line 81
    :cond_c
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onDestroy()V

    .line 82
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 8
    .parameter "nLocale"

    .prologue
    const v5, 0x7f080043

    const/16 v3, 0x64

    const/4 v4, -0x1

    .line 365
    iput p1, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mCurrentLocale:I

    .line 367
    const v2, 0x7f08013e

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->setTitle(I)V

    .line 368
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mSrcListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 369
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAdapter:Lcom/infraware/polarisoffice/common/MultiAdapter;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/MultiAdapter;->notifyDataSetChanged()V

    .line 370
    invoke-direct {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->initBookClip()V

    .line 372
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDel:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2d

    .line 374
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDel:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 376
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->removeDialog(I)V

    .line 377
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->showDialog(I)V

    .line 381
    :cond_2d
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgMsg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4d

    .line 383
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgMsg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 384
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgMsg:Landroid/app/AlertDialog;

    iget v3, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mPopupMsgID:I

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgMsg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 389
    :cond_4d
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDuplicateMsg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_86

    .line 391
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDuplicateMsg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 392
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mAddClipEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, strBookClipName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, duplicate:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDuplicateMsg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v2, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->mDlgDuplicateMsg:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 400
    .end local v0           #duplicate:Ljava/lang/String;
    .end local v1           #strBookClipName:Ljava/lang/String;
    :cond_86
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onPause()V

    .line 105
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onResume()V

    .line 114
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onResume()V

    .line 115
    return-void
.end method
