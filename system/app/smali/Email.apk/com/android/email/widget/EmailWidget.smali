.class public Lcom/android/email/widget/EmailWidget;
.super Ljava/lang/Object;
.source "EmailWidget.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMAND_URI:Landroid/net/Uri;

.field private static final COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

.field private static sDateFontSize:I

.field private static sDefaultTextColor:I

.field private static sLightTextColor:I

.field private static sSenderFontSize:I

.field private static sSubjectFontSize:I

.field private static sSubjectSnippetDivider:Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mAccountName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

.field private final mLoader:Lcom/android/email/widget/EmailWidgetLoader;

.field private mMailboxName:Ljava/lang/String;

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private final mWidgetId:I

.field private final mWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 87
    const-string v0, "widget://command"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "view_message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "_widgetId"

    .prologue
    const v4, 0x7f09001d

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    .line 131
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_26

    .line 132
    const-string v1, "EmailWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating EmailWidget with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    .line 135
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 137
    iput p2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    .line 138
    new-instance v1, Lcom/android/email/widget/EmailWidgetLoader;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/email/widget/EmailWidgetLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    .line 139
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/email/widget/EmailWidgetLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 140
    sget-object v1, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    if-nez v1, :cond_88

    .line 142
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    .line 145
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    .line 146
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSubjectFontSize:I

    .line 147
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDateFontSize:I

    .line 148
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    .line 149
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    .line 150
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sLightTextColor:I

    .line 152
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_88
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 153
    return-void
.end method

.method private addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 9
    .parameter "text"
    .parameter "size"
    .parameter "color"

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 358
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 359
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 362
    if-eqz p3, :cond_22

    .line 363
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 366
    :cond_22
    return-object v0
.end method

.method private getStyledSubjectSnippet(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 11
    .parameter "subject"
    .parameter "snippet"
    .parameter "read"

    .prologue
    const/16 v6, 0x21

    const/4 v4, 0x0

    .line 378
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 379
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 380
    .local v0, hasSubject:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 381
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 382
    .local v1, ss:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/StyleSpan;

    if-eqz p3, :cond_5f

    move v3, v4

    :goto_19
    invoke-direct {v5, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 384
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v5, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 386
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 387
    const/4 v0, 0x1

    .line 389
    .end local v1           #ss:Landroid/text/SpannableString;
    :cond_35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 390
    if-eqz v0, :cond_42

    .line 391
    sget-object v3, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 393
    :cond_42
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 394
    .restart local v1       #ss:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget v5, Lcom/android/email/widget/EmailWidget;->sLightTextColor:I

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 396
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 398
    .end local v1           #ss:Landroid/text/SpannableString;
    :cond_58
    sget v3, Lcom/android/email/widget/EmailWidget;->sSubjectFontSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 382
    .restart local v1       #ss:Landroid/text/SpannableString;
    :cond_5f
    const/4 v3, 0x1

    goto :goto_19
.end method

.method private isCursorValid()Z
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static openMessage(Landroid/content/Context;JJ)V
    .registers 11
    .parameter "context"
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    .line 262
    new-instance v0, Lcom/android/email/widget/EmailWidget$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/widget/EmailWidget$1;-><init>(Landroid/content/Context;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 271
    return-void
.end method

.method public static processIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 235
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 236
    .local v3, data:Landroid/net/Uri;
    if-nez v3, :cond_b

    move v6, v7

    .line 257
    :goto_a
    return v6

    .line 239
    :cond_b
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 242
    .local v5, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v9, :cond_1b

    .line 243
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 245
    :cond_1b
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 248
    .local v2, command:Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_22
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 249
    .local v0, arg1:J
    const-string v6, "view_message"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 251
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {p0, v9, v10, v0, v1}, Lcom/android/email/widget/EmailWidget;->openMessage(Landroid/content/Context;JJ)V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_42} :catch_44

    :cond_42
    move v6, v8

    .line 257
    goto :goto_a

    .line 253
    .end local v0           #arg1:J
    :catch_44
    move-exception v4

    .local v4, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 255
    goto :goto_a
.end method

.method private setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .registers 8
    .parameter "views"
    .parameter "buttonId"
    .parameter "intent"

    .prologue
    .line 204
    const/high16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    long-to-int v2, v2

    const/high16 v3, 0x800

    invoke-static {v1, v2, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 208
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 209
    return-void
.end method

.method private varargs setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V
    .registers 13
    .parameter "views"
    .parameter "viewId"
    .parameter "baseUri"
    .parameter "args"

    .prologue
    .line 221
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 223
    .local v2, builder:Landroid/net/Uri$Builder;
    move-object v1, p4

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v5, :cond_16

    aget-object v0, v1, v3

    .line 224
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 226
    .end local v0           #arg:Ljava/lang/String;
    :cond_16
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "com.android.email/widget_data"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 228
    return-void
.end method

.method private setTextViewTextAndDesc(Landroid/widget/RemoteViews;ILjava/lang/String;)V
    .registers 4
    .parameter "views"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 274
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method private setupTitleAndCount(Landroid/widget/RemoteViews;)V
    .registers 7
    .parameter "views"

    .prologue
    const v4, 0x7f0e00d0

    const/4 v3, 0x0

    .line 280
    const v1, 0x7f0e00cf

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mMailboxName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/email/widget/EmailWidget;->setTextViewTextAndDesc(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    .line 281
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 282
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v1}, Lcom/android/email/widget/EmailWidget;->setTextViewTextAndDesc(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    .line 283
    const-string v0, ""

    .line 284
    .local v0, count:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 285
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v2}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getMessageCount()I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_28
    const v1, 0x7f0e00d1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/widget/EmailWidget;->setTextViewTextAndDesc(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    .line 288
    return-void
.end method

.method private updateHeader()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f0e00d4

    const v7, 0x7f0e00d3

    const v6, 0x7f0e00d2

    const/4 v5, 0x0

    .line 295
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 296
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#updateHeader(); widgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_29
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040048

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 304
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    invoke-virtual {v1, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 307
    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 309
    invoke-direct {p0, v0}, Lcom/android/email/widget/EmailWidget;->setupTitleAndCount(Landroid/widget/RemoteViews;)V

    .line 311
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 313
    iget-wide v1, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    const-wide/high16 v3, 0x1000

    cmp-long v1, v1, v3

    if-nez v1, :cond_ac

    .line 315
    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    :goto_6a
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 320
    const/16 v1, 0x8

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 322
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 323
    const-string v2, "from_widget"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    invoke-direct {p0, v0, v6, v1}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 326
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 327
    const v2, 0x7f0e00cd

    invoke-direct {p0, v0, v2, v1}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 340
    :goto_90
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v5, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 346
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 347
    return-void

    .line 317
    :cond_ac
    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6a

    .line 331
    :cond_b0
    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 332
    const/16 v1, 0x8

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 333
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 335
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 336
    invoke-direct {p0, v0, v8, v1}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    goto :goto_90
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 480
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getCount()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 485
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 5

    .prologue
    .line 490
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04004a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 491
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0e00db

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f080186

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 492
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 32
    .parameter "position"

    .prologue
    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v26

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->moveToPosition(I)Z

    move-result v26

    if-nez v26, :cond_1b

    .line 405
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/widget/EmailWidget;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v25

    .line 474
    :goto_1a
    return-object v25

    .line 407
    :cond_1b
    new-instance v25, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const v27, 0x7f040049

    invoke-direct/range {v25 .. v27}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 409
    .local v25, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c3

    const/4 v13, 0x1

    .line 410
    .local v13, isUnread:Z
    :goto_42
    const v9, 0x7f020012

    .line 411
    .local v9, drawableId:I
    if-eqz v13, :cond_4a

    .line 412
    const v9, 0x7f020013

    .line 414
    :cond_4a
    const v26, 0x7f0e00d5

    const-string v27, "setBackgroundResource"

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1c6

    const-string v17, ""

    .line 421
    .local v17, rawSender:Ljava/lang/String;
    :goto_68
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 422
    .local v10, from:Landroid/text/SpannableStringBuilder;
    if-eqz v13, :cond_1d4

    new-instance v26, Landroid/text/style/StyleSpan;

    const/16 v27, 0x1

    invoke-direct/range {v26 .. v27}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_78
    const/16 v27, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v28

    const/16 v29, 0x21

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 425
    sget v26, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    sget v27, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v10, v1, v2}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v20

    .line 426
    .local v20, styledFrom:Ljava/lang/CharSequence;
    const v26, 0x7f0e00d6

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 427
    const v26, 0x7f0e00d6

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getLong(I)J

    move-result-wide v23

    .line 431
    .local v23, timestamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 433
    .local v8, date:Ljava/lang/String;
    sget v26, Lcom/android/email/widget/EmailWidget;->sDateFontSize:I

    sget v27, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v8, v1, v2}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v19

    .line 434
    .local v19, styledDate:Ljava/lang/CharSequence;
    const v26, 0x7f0e00d9

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 435
    const v26, 0x7f0e00d9

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 439
    .local v21, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 440
    .local v18, snippet:Ljava/lang/String;
    if-nez v13, :cond_1dd

    const/16 v26, 0x1

    :goto_10f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/widget/EmailWidget;->getStyledSubjectSnippet(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v22

    .line 441
    .local v22, subjectAndSnippet:Ljava/lang/CharSequence;
    const v26, 0x7f0e00da

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 442
    const v26, 0x7f0e00da

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getInt(I)I

    move-result v15

    .line 445
    .local v15, messageFlags:I
    and-int/lit8 v26, v15, 0x4

    if-eqz v26, :cond_1e1

    const/4 v12, 0x1

    .line 446
    .local v12, hasInvite:Z
    :goto_144
    const v27, 0x7f0e00d7

    if-eqz v12, :cond_1e4

    const/16 v26, 0x0

    :goto_14b
    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_1e8

    const/4 v11, 0x1

    .line 450
    .local v11, hasAttachment:Z
    :goto_163
    const v27, 0x7f0e00d8

    if-eqz v11, :cond_1eb

    const/16 v26, 0x0

    :goto_16a
    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 453
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x1000

    cmp-long v26, v26, v28

    if-eqz v26, :cond_1ef

    .line 454
    const v26, 0x7f0e0048

    const/16 v27, 0x4

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 469
    :goto_187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 470
    .local v16, messageId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 471
    .local v14, mailboxId:Ljava/lang/String;
    const v26, 0x7f0e00d5

    sget-object v27, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v16, v28, v29

    const/16 v29, 0x1

    aput-object v14, v28, v29

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/widget/EmailWidget;->setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 409
    .end local v8           #date:Ljava/lang/String;
    .end local v9           #drawableId:I
    .end local v10           #from:Landroid/text/SpannableStringBuilder;
    .end local v11           #hasAttachment:Z
    .end local v12           #hasInvite:Z
    .end local v13           #isUnread:Z
    .end local v14           #mailboxId:Ljava/lang/String;
    .end local v15           #messageFlags:I
    .end local v16           #messageId:Ljava/lang/String;
    .end local v17           #rawSender:Ljava/lang/String;
    .end local v18           #snippet:Ljava/lang/String;
    .end local v19           #styledDate:Ljava/lang/CharSequence;
    .end local v20           #styledFrom:Ljava/lang/CharSequence;
    .end local v21           #subject:Ljava/lang/String;
    .end local v22           #subjectAndSnippet:Ljava/lang/CharSequence;
    .end local v23           #timestamp:J
    :cond_1c3
    const/4 v13, 0x0

    goto/16 :goto_42

    .line 417
    .restart local v9       #drawableId:I
    .restart local v13       #isUnread:Z
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_68

    .line 422
    .restart local v10       #from:Landroid/text/SpannableStringBuilder;
    .restart local v17       #rawSender:Ljava/lang/String;
    :cond_1d4
    new-instance v26, Landroid/text/style/StyleSpan;

    const/16 v27, 0x0

    invoke-direct/range {v26 .. v27}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_78

    .line 440
    .restart local v8       #date:Ljava/lang/String;
    .restart local v18       #snippet:Ljava/lang/String;
    .restart local v19       #styledDate:Ljava/lang/CharSequence;
    .restart local v20       #styledFrom:Ljava/lang/CharSequence;
    .restart local v21       #subject:Ljava/lang/String;
    .restart local v23       #timestamp:J
    :cond_1dd
    const/16 v26, 0x0

    goto/16 :goto_10f

    .line 445
    .restart local v15       #messageFlags:I
    .restart local v22       #subjectAndSnippet:Ljava/lang/CharSequence;
    :cond_1e1
    const/4 v12, 0x0

    goto/16 :goto_144

    .line 446
    .restart local v12       #hasInvite:Z
    :cond_1e4
    const/16 v26, 0x8

    goto/16 :goto_14b

    .line 448
    :cond_1e8
    const/4 v11, 0x0

    goto/16 :goto_163

    .line 450
    .restart local v11       #hasAttachment:Z
    :cond_1eb
    const/16 v26, 0x8

    goto/16 :goto_16a

    .line 456
    :cond_1ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v26, v0

    const/16 v27, 0x9

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getLong(I)J

    move-result-wide v5

    .line 457
    .local v5, accountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Lcom/android/email/ResourceHelper;->getAccountColorId(J)I

    move-result v7

    .line 458
    .local v7, colorId:I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v7, v0, :cond_221

    .line 460
    const v26, 0x7f0e0048

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 461
    const v26, 0x7f0e0048

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_187

    .line 464
    :cond_221
    const v26, 0x7f0e0048

    const/16 v27, 0x4

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_187
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 498
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 533
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 534
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onCreate(); widgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_22
    return-void
.end method

.method public onDataSetChanged()V
    .registers 1

    .prologue
    .line 508
    return-void
.end method

.method public onDeleted()V
    .registers 4

    .prologue
    .line 511
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 512
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onDeleted(); widgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_22
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_2b

    .line 516
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 518
    :cond_2b
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 522
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 523
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onDestroy(); widgetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_22
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_2b

    .line 527
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 529
    :cond_2b
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    check-cast p2, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    .end local p2
    iput-object p2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    .line 189
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mAccountName:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;->getMailboxName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mMailboxName:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->updateHeader()V

    .line 192
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    const v2, 0x7f0e00d3

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 193
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/widget/EmailWidget;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 176
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidget;->start()V

    .line 177
    return-void
.end method

.method public start()V
    .registers 8

    .prologue
    .line 160
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v4, v5}, Lcom/android/email/widget/WidgetManager;->loadAccountIdPref(Landroid/content/Context;I)J

    move-result-wide v0

    .line 161
    .local v0, accountId:J
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v4, v5}, Lcom/android/email/widget/WidgetManager;->loadMailboxIdPref(Landroid/content/Context;I)J

    move-result-wide v2

    .line 163
    .local v2, mailboxId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_1a

    .line 164
    const-wide/high16 v0, 0x1000

    .line 165
    const-wide/16 v2, -0x2

    .line 167
    :cond_1a
    iput-wide v0, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    .line 168
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    iget-wide v5, p0, Lcom/android/email/widget/EmailWidget;->mAccountId:J

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/android/email/widget/EmailWidgetLoader;->load(JJ)V

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
