.class public Lcom/google/android/apps/translate/SmsPickerHelper;
.super Ljava/lang/Object;
.source "SmsPickerHelper.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;
    }
.end annotation


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final BODY:Ljava/lang/String; = "body"

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "SmsPickerHelper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mAddressColumnIndex:I

.field mBodyColumnIndex:I

.field mCursor:Landroid/database/Cursor;

.field mDateColumnIndex:I

.field mEmptyMessage:Landroid/widget/TextView;

.field private mListAdapter:Landroid/widget/SimpleCursorAdapter;

.field mProgressBar:Landroid/widget/ProgressBar;

.field private mQueryHandler:Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translate/SmsPickerHelper;->SMS_CONTENT_URI:Landroid/net/Uri;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/translate/SmsPickerHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/SmsPickerHelper;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/SmsPickerHelper;)Landroid/widget/SimpleCursorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method private startQuerySMS()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mEmptyMessage:Landroid/widget/TextView;

    sget v3, Lcom/google/android/apps/translate/R$string;->msg_loading:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mQueryHandler:Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;

    sget-object v3, Lcom/google/android/apps/translate/SmsPickerHelper;->SMS_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/apps/translate/SmsPickerHelper;->PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method init(Landroid/widget/LinearLayout;)V
    .registers 12
    .parameter "view"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 97
    const-string v0, "SmsPickerHelper"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget v0, Lcom/google/android/apps/translate/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 99
    sget v0, Lcom/google/android/apps/translate/R$id;->msg_empty:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mEmptyMessage:Landroid/widget/TextView;

    .line 100
    new-instance v0, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;

    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;-><init>(Lcom/google/android/apps/translate/SmsPickerHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mQueryHandler:Lcom/google/android/apps/translate/SmsPickerHelper$QueryHandler;

    .line 102
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/google/android/apps/translate/R$layout;->sms_item:I

    const/4 v3, 0x0

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v4, v7

    const-string v5, "date"

    aput-object v5, v4, v8

    const-string v5, "body"

    aput-object v5, v4, v9

    new-array v5, v6, [I

    sget v6, Lcom/google/android/apps/translate/R$id;->sms_person:I

    aput v6, v5, v7

    sget v6, Lcom/google/android/apps/translate/R$id;->sms_date:I

    aput v6, v5, v8

    sget v6, Lcom/google/android/apps/translate/R$id;->sms_body:I

    aput v6, v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mListAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 108
    invoke-direct {p0}, Lcom/google/android/apps/translate/SmsPickerHelper;->startQuerySMS()V

    .line 109
    return-void
.end method

.method onCreate(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mActivity:Landroid/app/Activity;

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 154
    sget v0, Lcom/google/android/apps/translate/R$menu;->sms_picker_activity_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mCursor:Landroid/database/Cursor;

    .line 140
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 141
    iget v1, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mBodyColumnIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    :goto_e
    return-object v1

    :cond_f
    const-string v1, ""

    goto :goto_e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 163
    .local v0, id:I
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_feedback:I

    if-ne v0, v2, :cond_13

    .line 165
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->sendFeedback(Landroid/app/Activity;Z)V

    .line 166
    const/4 v1, 0x1

    .line 168
    :cond_13
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 159
    return-void
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .registers 7
    .parameter "view"
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mAddressColumnIndex:I

    if-ne p3, v0, :cond_11

    .line 123
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iget v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mAddressColumnIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0

    .line 124
    .restart local p1
    :cond_11
    iget v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mDateColumnIndex:I

    if-ne p3, v0, :cond_25

    .line 125
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mActivity:Landroid/app/Activity;

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/Util;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 127
    .restart local p1
    :cond_25
    iget v0, p0, Lcom/google/android/apps/translate/SmsPickerHelper;->mBodyColumnIndex:I

    if-ne p3, v0, :cond_f

    .line 128
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method
