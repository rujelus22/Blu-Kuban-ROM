.class public Lcom/android/calendar/ConvNameEditText;
.super Landroid/widget/AutoCompleteTextView;
.source "ConvNameEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;,
        Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;
    }
.end annotation


# static fields
.field private static mRcpts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static startQuery:Z


# instance fields
.field public mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

.field private mContext:Landroid/content/Context;

.field private mConvName:Ljava/lang/String;

.field private mProviderStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 187
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/ConvNameEditText;->mRcpts:Ljava/util/List;

    .line 199
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/ConvNameEditText;->startQuery:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    iput-object v2, p0, Lcom/android/calendar/ConvNameEditText;->mConvName:Ljava/lang/String;

    .line 191
    iput-object v2, p0, Lcom/android/calendar/ConvNameEditText;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    .line 195
    iput v1, p0, Lcom/android/calendar/ConvNameEditText;->mProviderStatus:I

    .line 219
    iput-object p1, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    .line 223
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/calendar/ConvNameEditText;->startQuery:Z

    .line 237
    invoke-direct {p0}, Lcom/android/calendar/ConvNameEditText;->checkProviderState()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 239
    const-string v1, "ConvNameEditText"

    const-string v2, "checkProviderState do not act DB query"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_1d
    return-void

    .line 263
    :cond_1e
    new-instance v0, Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;

    iget-object v3, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;-><init>(Lcom/android/calendar/ConvNameEditText;Landroid/content/ContentResolver;)V

    .line 265
    .local v0, qh:Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;
    sget-object v3, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->CONTENT_URI_AUTO_COMPLETE:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->SELECTION:Ljava/lang/String;

    const-string v7, "display_name, is_primary DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/ConvNameEditText$ContactsQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v1, Lcom/android/calendar/ConvNameEditText$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/ConvNameEditText$1;-><init>(Lcom/android/calendar/ConvNameEditText;)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/ConvNameEditText;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 407
    new-instance v1, Lcom/android/calendar/ConvNameEditText$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/ConvNameEditText$2;-><init>(Lcom/android/calendar/ConvNameEditText;)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/ConvNameEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 519
    new-instance v1, Lcom/android/calendar/ConvNameEditText$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/ConvNameEditText$3;-><init>(Lcom/android/calendar/ConvNameEditText;)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/ConvNameEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1d
.end method

.method static synthetic access$000(Lcom/android/calendar/ConvNameEditText;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/ConvNameEditText;)Landroid/widget/Filter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/ConvNameEditText;Ljava/lang/CharSequence;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/ConvNameEditText;->performFiltering(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/ConvNameEditText;)Landroid/widget/Filter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/ConvNameEditText;)Landroid/widget/Filter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public static allowQuery()Z
    .registers 1

    .prologue
    .line 793
    sget-boolean v0, Lcom/android/calendar/ConvNameEditText;->startQuery:Z

    return v0
.end method

.method private checkProviderState()Z
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1875
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1877
    .local v0, content:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v9

    const-string v4, "data1"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1885
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1887
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1889
    .local v7, status:I
    iget v1, p0, Lcom/android/calendar/ConvNameEditText;->mProviderStatus:I

    if-eq v7, v1, :cond_30

    .line 1891
    iput v7, p0, Lcom/android/calendar/ConvNameEditText;->mProviderStatus:I
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_57

    .line 1893
    packed-switch v7, :pswitch_data_5e

    .line 1911
    .end local v7           #status:I
    :cond_30
    :goto_30
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1915
    iget v1, p0, Lcom/android/calendar/ConvNameEditText;->mProviderStatus:I

    if-nez v1, :cond_5c

    move v1, v8

    :goto_38
    return v1

    .line 1897
    .restart local v7       #status:I
    :pswitch_39
    :try_start_39
    const-string v1, "ConvNameEditText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProviderStatus :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/ConvNameEditText;->mProviderStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/calendar/ConvNameEditText;->mProviderStatus:I
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_57

    goto :goto_30

    .line 1911
    .end local v7           #status:I
    :catchall_57
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5c
    move v1, v9

    .line 1915
    goto :goto_38

    .line 1893
    :pswitch_data_5e
    .packed-switch 0x3
        :pswitch_39
    .end packed-switch
.end method

.method public static getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 685
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 739
    :goto_7
    return-object v5

    .line 691
    :cond_8
    const/4 v7, 0x0

    .line 697
    .local v7, emailAddress:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->CONTENT_URI_AUTO_COMPLETE:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v3, "display_name=? AND mimetype=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    const/4 v8, 0x1

    const-string v9, "vnd.android.cursor.item/email_v2"

    aput-object v9, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 723
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3b

    .line 725
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 727
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_37

    .line 729
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 733
    :cond_37
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 735
    const/4 v6, 0x0

    :cond_3b
    move-object v5, v7

    .line 739
    goto :goto_7
.end method


# virtual methods
.method public getConvName(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/ComposeHeaderView$ToButton;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, rcptBtns:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendar/ComposeHeaderView$ToButton;>;"
    if-eqz p1, :cond_22

    .line 643
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/calendar/ConvNameEditText;->mRcpts:Ljava/util/List;

    .line 647
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 649
    sget-object v2, Lcom/android/calendar/ConvNameEditText;->mRcpts:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-virtual {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 657
    .end local v0           #i:I
    :cond_22
    sget-object v1, Lcom/android/calendar/ConvNameEditText;->mRcpts:Ljava/util/List;

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/android/calendar/ConvNameEditText;->mRcpts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_31

    .line 659
    :cond_2e
    const-string v1, ""

    .line 665
    :goto_30
    return-object v1

    .line 661
    :cond_31
    sget-object v1, Lcom/android/calendar/ConvNameEditText;->mRcpts:Ljava/util/List;

    const/16 v2, 0x3b

    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getConvName(Ljava/util/List;CILandroid/graphics/Paint;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ConvNameEditText;->mConvName:Ljava/lang/String;

    .line 665
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText;->mConvName:Ljava/lang/String;

    goto :goto_30
.end method

.method public moveCursorToEnd()V
    .registers 3

    .prologue
    .line 1833
    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1837
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1961
    const/4 v3, 0x0

    .line 1963
    .local v3, recipientName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1965
    .local v4, recipientNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1967
    .local v1, numberType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getListSelection()I

    move-result v2

    .line 1971
    .local v2, position:I
    const/16 v5, 0x42

    if-ne p1, v5, :cond_71

    const/4 v5, -0x1

    if-eq v2, v5, :cond_71

    .line 1977
    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    invoke-virtual {v5, v2}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getName(I)Ljava/lang/String;

    move-result-object v3

    .line 1979
    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    invoke-virtual {v5, v2}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 1981
    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;

    invoke-virtual {v5, v2}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getType(I)Ljava/lang/String;

    move-result-object v1

    .line 1985
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/calendar/ConvNameEditText;->getEmailForContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, email:Ljava/lang/String;
    invoke-static {v3}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 1993
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00d5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/android/calendar/Utils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    :goto_64
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 2011
    .end local v0           #email:Ljava/lang/String;
    :goto_6a
    return v5

    .line 2001
    .restart local v0       #email:Ljava/lang/String;
    :cond_6b
    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v5, v3, v4, v0, v6}, Lcom/android/calendar/ComposeHeaderView;->addRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_64

    .line 2011
    .end local v0           #email:Ljava/lang/String;
    :cond_71
    const/4 v5, 0x0

    goto :goto_6a
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v0, 0x0

    .line 615
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onSizeChanged(IIII)V

    .line 617
    iput-object v0, p0, Lcom/android/calendar/ConvNameEditText;->mConvName:Ljava/lang/String;

    .line 619
    invoke-virtual {p0, v0}, Lcom/android/calendar/ConvNameEditText;->getConvName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ConvNameEditText;->mConvName:Ljava/lang/String;

    .line 629
    invoke-virtual {p0}, Lcom/android/calendar/ConvNameEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_17

    .line 631
    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText;->mConvName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ConvNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 635
    :cond_17
    return-void
.end method

.method public pauseQuery()V
    .registers 2

    .prologue
    .line 773
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/ConvNameEditText;->startQuery:Z

    .line 775
    return-void
.end method

.method public releaseResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1845
    iput-object v1, p0, Lcom/android/calendar/ConvNameEditText;->mContext:Landroid/content/Context;

    .line 1847
    iput-object v1, p0, Lcom/android/calendar/ConvNameEditText;->mConvName:Ljava/lang/String;

    .line 1849
    sget-object v0, Lcom/android/calendar/ConvNameEditText;->mRcpts:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 1851
    sget-object v0, Lcom/android/calendar/ConvNameEditText;->mRcpts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1853
    sput-object v1, Lcom/android/calendar/ConvNameEditText;->mRcpts:Ljava/util/List;

    .line 1857
    :cond_10
    iput-object v1, p0, Lcom/android/calendar/ConvNameEditText;->mConvName:Ljava/lang/String;

    .line 1859
    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    if-eqz v0, :cond_18

    .line 1861
    iput-object v1, p0, Lcom/android/calendar/ConvNameEditText;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    .line 1867
    :cond_18
    return-void
.end method

.method public resumeQuery()V
    .registers 2

    .prologue
    .line 783
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/ConvNameEditText;->startQuery:Z

    .line 785
    return-void
.end method

.method public setComposeHeaderView(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 2
    .parameter "composeHeaderViewClass"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/calendar/ConvNameEditText;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    .line 601
    return-void
.end method
