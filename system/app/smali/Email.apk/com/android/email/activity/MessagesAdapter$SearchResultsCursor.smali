.class public Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;
.super Lcom/android/email/activity/MessagesAdapter$MessagesCursor;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResultsCursor"
.end annotation


# instance fields
.field private final mResultsCount:I

.field private final mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZILcom/android/emailcommon/provider/Mailbox;I)V
    .registers 20
    .parameter "cursor"
    .parameter "found"
    .parameter "account"
    .parameter "mailbox"
    .parameter "isEasAccount"
    .parameter "isRefreshable"
    .parameter "countTotalAccounts"
    .parameter "searchedMailbox"
    .parameter "resultsCount"

    .prologue
    .line 359
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/email/activity/MessagesAdapter$MessagesCursor;-><init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZILcom/android/email/activity/MessagesAdapter$1;)V

    .line 361
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 362
    move/from16 v0, p9

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->mResultsCount:I

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZILcom/android/emailcommon/provider/Mailbox;ILcom/android/email/activity/MessagesAdapter$1;)V
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 352
    invoke-direct/range {p0 .. p9}, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;-><init>(Landroid/database/Cursor;ZLcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZILcom/android/emailcommon/provider/Mailbox;I)V

    return-void
.end method


# virtual methods
.method public getResultsCount()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->mResultsCount:I

    return v0
.end method

.method public getSearchedMailbox()Lcom/android/emailcommon/provider/Mailbox;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method
