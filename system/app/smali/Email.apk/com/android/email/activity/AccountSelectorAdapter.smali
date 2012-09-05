.class public Lcom/android/email/activity/AccountSelectorAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final COLOR_CHIP_RES_IDS:[I

.field private static final RESULT_PROJECTION:[Ljava/lang/String;

.field private static sCursor:Landroid/database/Cursor;


# instance fields
.field private mCountMargin:I

.field private mDropDownMargin:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private sDropdownAccountAddressTextColor:I

.field private sDropdownAccountNameTextColor:I

.field private sDropdownCountTextColor:I

.field private sDropdownSelectedTextColor:I

.field private sMailboxName:Ljava/lang/String;

.field private sUnreadCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 66
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->COLOR_CHIP_RES_IDS:[I

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    const-string v1, "UNREAD_COUNT"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->RESULT_PROJECTION:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->sCursor:Landroid/database/Cursor;

    return-void

    .line 66
    :array_36
    .array-data 0x4
        0x8t 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
        0xat 0x1t 0x2t 0x7ft
        0xbt 0x1t 0x2t 0x7ft
        0xct 0x1t 0x2t 0x7ft
        0xdt 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
        0x14t 0x1t 0x2t 0x7ft
        0x15t 0x1t 0x2t 0x7ft
        0x16t 0x1t 0x2t 0x7ft
        0x17t 0x1t 0x2t 0x7ft
        0x18t 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 125
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 100
    iput v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownSelectedTextColor:I

    .line 102
    iput v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    .line 104
    iput v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountAddressTextColor:I

    .line 106
    iput v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownCountTextColor:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    .line 110
    iput v1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sUnreadCount:I

    .line 126
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mCountMargin:I

    .line 130
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mDropDownMargin:I

    .line 132
    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownSelectedTextColor:I

    if-ne v0, v2, :cond_7a

    .line 133
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownSelectedTextColor:I

    .line 135
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    .line 137
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountAddressTextColor:I

    .line 139
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownCountTextColor:I

    .line 142
    :cond_7a
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->RESULT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/database/Cursor;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->sCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/android/email/activity/AccountSelectorAdapter;->sCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method public static createLoader(Landroid/content/Context;)Landroid/content/Loader;
    .registers 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getAccountDisplayName(I)Ljava/lang/String;
    .registers 4
    .parameter "position"

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 370
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 2
    .parameter "cursor"

    .prologue
    .line 385
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAccountEmailAddress(I)Ljava/lang/String;
    .registers 4
    .parameter "position"

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 375
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 2
    .parameter "cursor"

    .prologue
    .line 390
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountId(Landroid/database/Cursor;)J
    .registers 3
    .parameter "c"

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAccountUnreadCount(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 380
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(Landroid/database/Cursor;)I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getAccountUnreadCount(Landroid/database/Cursor;)I
    .registers 2
    .parameter "cursor"

    .prologue
    .line 395
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const-wide/high16 v8, 0x1000

    .line 312
    const v6, 0x7f100012

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 314
    .local v5, textView:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1b

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getCurrentAccountId()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_59

    .line 315
    :cond_1b
    iget-object v6, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    if-eqz v6, :cond_27

    iget-object v6, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_34

    .line 316
    :cond_27
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08009a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    .line 319
    :cond_34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sUnreadCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_58
    return-void

    .line 321
    :cond_59
    iget-object v6, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_72

    .line 322
    :cond_65
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    .line 325
    :cond_72
    const-string v4, ""

    .line 327
    .local v4, display_text:Ljava/lang/String;
    const-string v6, "persist.sys.language"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, currentLang:Ljava/lang/String;
    const-string v1, ""

    .line 330
    .local v1, accountName:Ljava/lang/String;
    invoke-static {p3}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v6

    const-wide v8, 0x100000000000002L

    cmp-long v6, v6, v8

    if-eqz v6, :cond_dd

    .line 331
    invoke-static {p3}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 339
    :cond_8e
    :goto_8e
    if-eqz v3, :cond_ec

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_ec

    const-string v6, "ar,he,iw,ur,fa"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 341
    const-string v0, "\u200e"

    .line 342
    .local v0, U200E:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sUnreadCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    .end local v0           #U200E:Ljava/lang/String;
    :goto_d8
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_58

    .line 334
    :cond_dd
    iget-object v6, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 335
    .local v2, currentAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v2, :cond_8e

    .line 336
    iget-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    goto :goto_8e

    .line 345
    .end local v2           #currentAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_ec
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sUnreadCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_d8
.end method

.method public getAccountId(I)Ljava/lang/Long;
    .registers 5
    .parameter "position"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 365
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v1

    :goto_e
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_13
    const-wide/16 v1, -0x1

    goto :goto_e
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 30
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 152
    const/16 v21, 0x0

    .line 153
    .local v21, view:Landroid/view/View;
    if-nez p1, :cond_10f

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f040005

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p3

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 155
    const v22, 0x7f10001b

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 156
    .local v9, allunreadCountView:Landroid/widget/TextView;
    const v22, 0x7f100019

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 158
    .local v17, titleName:Landroid/widget/TextView;
    const v22, 0x7f10001a

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 160
    .local v10, allunreadcountlayout:Landroid/widget/FrameLayout;
    const v22, 0x7f100015

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 170
    .local v18, unReadCountIcon:Landroid/widget/ImageView;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(I)I

    move-result v22

    if-lez v22, :cond_d2

    .line 174
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 181
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_7d
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getCurrentAccountId()J

    move-result-wide v22

    const-wide/high16 v24, 0x1000

    cmp-long v22, v22, v24

    if-nez v22, :cond_da

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020004

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 190
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 191
    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020004

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 307
    .end local v9           #allunreadCountView:Landroid/widget/TextView;
    .end local v10           #allunreadcountlayout:Landroid/widget/FrameLayout;
    .end local v17           #titleName:Landroid/widget/TextView;
    :goto_d1
    return-object v21

    .line 184
    .restart local v9       #allunreadCountView:Landroid/widget/TextView;
    .restart local v10       #allunreadcountlayout:Landroid/widget/FrameLayout;
    .restart local v17       #titleName:Landroid/widget/TextView;
    :cond_d2
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_7d

    .line 196
    :cond_da
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 199
    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d1

    .line 203
    .end local v9           #allunreadCountView:Landroid/widget/TextView;
    .end local v10           #allunreadcountlayout:Landroid/widget/FrameLayout;
    .end local v17           #titleName:Landroid/widget/TextView;
    .end local v18           #unReadCountIcon:Landroid/widget/ImageView;
    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f040004

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p3

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 205
    const v22, 0x7f100001

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 206
    .local v7, accountcolor:Landroid/widget/ImageView;
    const v22, 0x7f100012

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 207
    .local v14, displayNameView:Landroid/widget/TextView;
    const v22, 0x7f100017

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 208
    .local v16, emailAddressView:Landroid/widget/TextView;
    const v22, 0x7f100016

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 209
    .local v19, unreadCountView:Landroid/widget/TextView;
    const v22, 0x7f100005

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 211
    .local v12, defaultAccountView:Landroid/view/View;
    const v22, 0x7f100015

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 215
    .restart local v18       #unReadCountIcon:Landroid/widget/ImageView;
    const v22, 0x7f100014

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    .line 218
    .local v20, unreadcountlayout:Landroid/widget/FrameLayout;
    const v22, 0x7f100013

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 220
    .local v5, account_selector_dropdown_layout:Landroid/widget/LinearLayout;
    const v22, 0x7f100018

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 222
    .local v4, account_selector_dropdown_empty_layout:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    .local v6, account_selector_dropdown_layout_param:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(I)I

    move-result v22

    if-lez v22, :cond_2b8

    .line 235
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    :goto_18a
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sget-object v24, Lcom/android/email/activity/AccountSelectorAdapter;->COLOR_CHIP_RES_IDS:[I

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    rem-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 242
    .local v8, accountid:I
    sget-object v22, Lcom/android/email/activity/AccountSelectorAdapter;->COLOR_CHIP_RES_IDS:[I

    aget v22, v22, v8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 245
    .local v11, defaultAccount:Ljava/lang/Long;
    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(I)Ljava/lang/String;

    move-result-object v13

    .line 246
    .local v13, displayName:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(I)Ljava/lang/String;

    move-result-object v15

    .line 254
    .local v15, emailAddress:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    if-eqz v15, :cond_2c3

    .line 265
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1cf

    const-string v15, " "

    .end local v15           #emailAddress:Ljava/lang/String;
    :cond_1cf
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_1d4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide v24, 0x100000000000002L

    cmp-long v22, v22, v24

    if-nez v22, :cond_21d

    .line 276
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    :cond_21d
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_235

    .line 282
    const v22, 0x7f100006

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_235
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getCurrentAccountId()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_2ce

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020004

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020004

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020004

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 293
    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 294
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 295
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_d1

    .line 237
    .end local v8           #accountid:I
    .end local v11           #defaultAccount:Ljava/lang/Long;
    .end local v13           #displayName:Ljava/lang/String;
    :cond_2b8
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_18a

    .line 267
    .restart local v8       #accountid:I
    .restart local v11       #defaultAccount:Ljava/lang/Long;
    .restart local v13       #displayName:Ljava/lang/String;
    .restart local v15       #emailAddress:Ljava/lang/String;
    :cond_2c3
    const-string v22, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d4

    .line 297
    .end local v15           #emailAddress:Ljava/lang/String;
    :cond_2ce
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountAddressTextColor:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownCountTextColor:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 302
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 303
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_d1
.end method

.method public isEnabled(I)Z
    .registers 6
    .parameter "position"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x100000000000002L

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 147
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setMailboxName(Ljava/lang/String;)V
    .registers 2
    .parameter "MailboxName"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setUnreadCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 403
    iput p1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sUnreadCount:I

    .line 404
    return-void
.end method
