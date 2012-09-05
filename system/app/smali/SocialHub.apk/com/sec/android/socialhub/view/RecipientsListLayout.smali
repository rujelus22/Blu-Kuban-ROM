.class public Lcom/sec/android/socialhub/view/RecipientsListLayout;
.super Landroid/widget/AbsoluteLayout;
.source "RecipientsListLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public isOpenedPopup:Z

.field private final mButtonDeleteHandler:Landroid/os/Handler;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/RecipientButton;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

.field protected mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLimitation:I

.field mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRecipientsListId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private resizeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, "RecipientsListLayout"

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->TAG:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    .line 48
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mType:I

    .line 56
    iput v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mLimitation:I

    .line 59
    iput v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->resizeWidth:I

    .line 62
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 64
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

    .line 66
    iput-boolean v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->isOpenedPopup:Z

    .line 211
    new-instance v0, Lcom/sec/android/socialhub/view/RecipientsListLayout$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$2;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 264
    new-instance v0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$6;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    .line 447
    new-instance v0, Lcom/sec/android/socialhub/view/RecipientsListLayout$7;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$7;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonDeleteHandler:Landroid/os/Handler;

    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->initialize(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const-string v0, "RecipientsListLayout"

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->TAG:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    .line 48
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mType:I

    .line 56
    iput v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mLimitation:I

    .line 59
    iput v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->resizeWidth:I

    .line 62
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 64
    iput-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

    .line 66
    iput-boolean v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->isOpenedPopup:Z

    .line 211
    new-instance v0, Lcom/sec/android/socialhub/view/RecipientsListLayout$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$2;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 264
    new-instance v0, Lcom/sec/android/socialhub/view/RecipientsListLayout$6;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$6;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    .line 447
    new-instance v0, Lcom/sec/android/socialhub/view/RecipientsListLayout$7;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$7;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonDeleteHandler:Landroid/os/Handler;

    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->initialize(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonDeleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/view/RecipientsListLayout;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->showAlertDialog(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/view/RecipientsListLayout;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/view/RecipientsListLayout;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->removeButton(I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method private removeButton(I)V
    .registers 7
    .parameter "index"

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 458
    .local v0, layout:Landroid/widget/LinearLayout;
    const-string v2, "RecipientsListLayout"

    const-string v3, "reomoveButton()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button name = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 462
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6b

    .line 466
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

    if-eqz v1, :cond_6a

    .line 470
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;->onChangeRecipients(I)V

    .line 477
    :cond_6a
    :goto_6a
    return-void

    .line 476
    :cond_6b
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->drawLayout()V

    goto :goto_6a
.end method

.method private setRecipientAreaWidth()V
    .registers 5

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 96
    .local v0, margin:F
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_2d

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 106
    :goto_27
    sub-float v2, v1, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->resizeWidth:I

    .line 107
    return-void

    .line 103
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_27
.end method

.method private showAlertDialog(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    .line 222
    iput-boolean v6, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->isOpenedPopup:Z

    .line 223
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 225
    .local v0, ButtonIndex:I
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/view/RecipientButton;

    .line 226
    .local v2, button:Lcom/sec/android/socialhub/view/RecipientButton;
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    .local v3, mNameString:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 229
    .local v4, menu:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 232
    const-string v5, "RecipientsListLayout"

    const-string v6, "showAlertDialog()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v5, Lcom/sec/android/socialhub/view/RecipientsListLayout$3;

    invoke-direct {v5, p0, v2, v0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$3;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;Lcom/sec/android/socialhub/view/RecipientButton;I)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    new-instance v5, Lcom/sec/android/socialhub/view/RecipientsListLayout$4;

    invoke-direct {v5, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$4;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    new-instance v5, Lcom/sec/android/socialhub/view/RecipientsListLayout$5;

    invoke-direct {v5, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$5;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->clearFocusAllButtons()V

    .line 262
    return-void
.end method


# virtual methods
.method public GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .registers 5
    .parameter "str"
    .parameter "paint"

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, ret:I
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 393
    return v0
.end method

.method public addButton(Landroid/view/View;II)V
    .registers 9
    .parameter "button"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, -0x2

    .line 378
    if-nez p1, :cond_4

    .line 388
    :goto_3
    return-void

    .line 381
    :cond_4
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddButton, x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddButton, y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddButton, button = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v4, v4, p2, p3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 387
    .local v0, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method public addRecipients([Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 15
    .parameter "name"
    .parameter "id"
    .parameter "enable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/RecipientButton;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 140
    .local v2, layout:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_e

    .line 142
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    :cond_e
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 146
    .local v3, size:I
    const-string v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2d
    array-length v5, p1

    if-ge v1, v5, :cond_10f

    .line 150
    aget-object v5, p1, v1

    aget-object v6, p2, v1

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->checkExistAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v9, :cond_3b

    .line 204
    :goto_3a
    return-object v4

    .line 154
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getRecipientsCount()I

    move-result v5

    iget v6, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mLimitation:I

    if-lt v5, v6, :cond_64

    .line 156
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContext:Landroid/content/Context;

    const v7, 0x7f0800c8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mLimitation:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_3a

    .line 163
    :cond_64
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mLimitation:I

    if-lt v5, v6, :cond_9b

    .line 165
    new-instance v4, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sptype["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mLimitation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!! please check Limit!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v9}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 170
    :cond_9b
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Lcom/sec/android/socialhub/view/RecipientButton;

    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/sec/android/socialhub/view/RecipientButton;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, button:Lcom/sec/android/socialhub/view/RecipientButton;
    invoke-virtual {v0, p3}, Lcom/sec/android/socialhub/view/RecipientButton;->setEnabled(Z)V

    .line 176
    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Lcom/sec/android/socialhub/view/RecipientButton;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/sec/android/socialhub/view/RecipientButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/socialhub/view/RecipientButton;->setId(I)V

    .line 181
    new-instance v5, Lcom/sec/android/socialhub/view/RecipientsListLayout$1;

    invoke-direct {v5, p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout$1;-><init>(Lcom/sec/android/socialhub/view/RecipientsListLayout;)V

    invoke-virtual {v0, v5}, Lcom/sec/android/socialhub/view/RecipientButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 194
    const-string v5, "RecipientsListLayout"

    const-string v6, "addRecipients()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Button name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2d

    .line 197
    .end local v0           #button:Lcom/sec/android/socialhub/view/RecipientButton;
    :cond_10f
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->drawLayout()V

    .line 199
    iget-object v4, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

    if-eqz v4, :cond_11b

    .line 201
    iget-object v4, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

    invoke-interface {v4, v9}, Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;->onChangeRecipients(I)V

    .line 204
    :cond_11b
    iget-object v4, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    goto/16 :goto_3a
.end method

.method public checkExistAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "name"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 296
    iget-object v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 298
    iget-object v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f0800a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 305
    :goto_2c
    return v0

    :cond_2d
    move v0, v1

    goto :goto_2c
.end method

.method public clearFocusAllButtons()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v2, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/RecipientButton;

    .line 440
    .local v0, btn:Lcom/sec/android/socialhub/view/RecipientButton;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/RecipientButton;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 441
    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/view/RecipientButton;->setFocusable(Z)V

    .line 442
    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/view/RecipientButton;->setFocusableInTouchMode(Z)V

    goto :goto_7

    .line 445
    .end local v0           #btn:Lcom/sec/android/socialhub/view/RecipientButton;
    :cond_20
    return-void
.end method

.method public drawLayout()V
    .registers 14

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->removeAllViews()V

    .line 347
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->setRecipientAreaWidth()V

    .line 349
    iget v10, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->resizeWidth:I

    add-int/lit8 v7, v10, -0x2a

    .line 351
    .local v7, width:I
    const-string v10, "TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start draw Lauout, width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v8, 0x0

    .line 354
    .local v8, x:I
    const/16 v9, 0xa

    .line 357
    .local v9, y:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    .line 358
    .local v2, ext_margin:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v1, v10

    .line 360
    .local v1, button_height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3e
    iget-object v10, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_75

    .line 362
    iget-object v10, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/socialhub/view/RecipientButton;

    .line 363
    .local v4, tempBt:Lcom/sec/android/socialhub/view/RecipientButton;
    iget-object v10, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 365
    .local v5, tempName:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/android/socialhub/view/RecipientButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v10

    add-int v0, v10, v2

    .line 366
    .local v0, bt_width:I
    add-int v10, v8, v0

    add-int/lit8 v6, v10, 0x8

    .line 368
    .local v6, tempX:I
    if-lez v8, :cond_6e

    if-le v6, v7, :cond_6e

    .line 369
    const/4 v8, 0x0

    .line 370
    add-int v10, v8, v0

    add-int/lit8 v6, v10, 0x8

    .line 371
    add-int/2addr v9, v1

    .line 373
    :cond_6e
    invoke-virtual {p0, v4, v8, v9}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->addButton(Landroid/view/View;II)V

    .line 374
    move v8, v6

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 376
    .end local v0           #bt_width:I
    .end local v4           #tempBt:Lcom/sec/android/socialhub/view/RecipientButton;
    .end local v5           #tempName:Ljava/lang/String;
    .end local v6           #tempX:I
    :cond_75
    return-void
.end method

.method public getInvalidRecipient()Ljava/lang/String;
    .registers 8

    .prologue
    .line 310
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 311
    .local v4, ret:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 312
    .local v3, recipientCnt:I
    const/4 v2, 0x0

    .line 313
    .local v2, invalidCnt:I
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    .local v0, a:Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 317
    const-string v5, "null"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 319
    if-lez v2, :cond_3d

    .line 320
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    :goto_38
    add-int/lit8 v2, v2, 0x1

    .line 326
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 322
    :cond_3d
    iget-object v5, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 328
    .end local v0           #a:Ljava/lang/String;
    :cond_49
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public final getRecipientList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/contacts/ContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 522
    .local v1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/contacts/ContactModel;>;"
    iget-object v3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 524
    .local v2, size:I
    if-lez v2, :cond_2c

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/contacts/ContactModel;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .restart local v1       #model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/contacts/ContactModel;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_f
    if-ge v0, v2, :cond_2c

    .line 530
    new-instance v5, Lcom/sec/android/socialhub/contacts/ContactModel;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Lcom/sec/android/socialhub/contacts/ContactModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 534
    .end local v0           #index:I
    :cond_2c
    return-object v1
.end method

.method public getRecipientsCount()I
    .registers 3

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, ret:I
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 505
    return v0
.end method

.method public final getRecipientsID()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipientsId()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 543
    iget-object v3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 544
    .local v2, size:I
    const/4 v1, 0x0

    .line 545
    .local v1, mRecipientsId:[Ljava/lang/String;
    new-array v1, v2, [Ljava/lang/String;

    .line 547
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v2, :cond_19

    .line 549
    iget-object v3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 552
    :cond_19
    return-object v1
.end method

.method public final getRecipientsName()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipientsNameArray()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 557
    iget-object v3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 558
    .local v2, size:I
    const/4 v1, 0x0

    .line 559
    .local v1, mRecipientsName:[Ljava/lang/String;
    new-array v1, v2, [Ljava/lang/String;

    .line 561
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v2, :cond_19

    .line 563
    iget-object v3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 566
    :cond_19
    return-object v1
.end method

.method public onResize(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->setRecipientAreaWidth()V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->drawLayout()V

    .line 89
    return-void
.end method

.method public removeAllRecipients()V
    .registers 4

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 401
    .local v0, layout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 402
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 403
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 405
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mRecipientsListName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2d

    .line 407
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

    if-eqz v1, :cond_2c

    .line 411
    iget-object v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;->onChangeRecipients(I)V

    .line 418
    :cond_2c
    :goto_2c
    return-void

    .line 417
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientsListLayout;->drawLayout()V

    goto :goto_2c
.end method

.method public requestLastButtonFocus()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    iget-object v3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    if-eqz v3, :cond_20

    .line 424
    iget-object v3, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 425
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 426
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 427
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 432
    .end local v0           #btn:Landroid/widget/Button;
    :goto_1f
    return v1

    :cond_20
    move v1, v2

    goto :goto_1f
.end method

.method public setOnRecipientsChangeListener(Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mListner:Lcom/sec/android/socialhub/view/RecipientsListLayout$IRecipientsChangeListner;

    .line 83
    return-void
.end method

.method public setSnsType(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 123
    iput p1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mType:I

    .line 124
    invoke-static {p1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 125
    .local v0, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/view/RecipientsListLayout;->mLimitation:I

    .line 126
    return-void
.end method
