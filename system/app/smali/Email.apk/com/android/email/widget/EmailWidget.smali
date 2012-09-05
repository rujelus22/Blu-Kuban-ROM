.class public Lcom/android/email/widget/EmailWidget;
.super Ljava/lang/Object;
.source "EmailWidget.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/widget/EmailWidget$WidgetUpdater;
    }
.end annotation

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

.field private static final COMMAND_URI_REFRESH:Landroid/net/Uri;

.field private static final COMMAND_URI_SET_FAVORITE:Landroid/net/Uri;

.field private static final COMMAND_URI_SET_FAVORITE_FLAG:Landroid/net/Uri;

.field private static final COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

.field private static final COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

.field private static bmpFlagClear:Landroid/graphics/Bitmap;

.field private static bmpFlagComplete:Landroid/graphics/Bitmap;

.field private static bmpFlagSet:Landroid/graphics/Bitmap;

.field private static favorite_toggle:I

.field public static mRefreshing:Z

.field private static sConfigureText:Ljava/lang/String;

.field private static sDateFontSize:I

.field private static sDateTextColor:I

.field private static sDefaultHeight:I

.field private static sDefaultLandGrid:I

.field private static sDefaultPortGrid:I

.field private static sDefaultTextColor:I

.field private static sDefaultWidth:I

.field private static sFavorite:Landroid/graphics/Bitmap;

.field private static sFromTextColor:I

.field private static sLightTextColor:I

.field private static sNotFavorite:Landroid/graphics/Bitmap;

.field private static sReadTextColor:I

.field private static sSenderFontSize:I

.field private static sSubjectFontSize:I

.field private static sSubjectSnippetDivider:Ljava/lang/String;

.field private static sSubjectTextColor:I


# instance fields
.field private mAccountCount:I

.field private final mContext:Landroid/content/Context;

.field private mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

.field private final mLoader:Lcom/android/email/widget/EmailWidgetLoader;

.field private mPreviewLineSize:I

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private mTopLineMode:I

.field private final mWidgetId:I

.field private final mWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

.field mWidgetView:Lcom/android/email/widget/WidgetView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string v0, "widget://command"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    .line 102
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "switch_list_view"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

    .line 107
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "view_message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    .line 112
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "favorite_toggle"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SET_FAVORITE:Landroid/net/Uri;

    .line 118
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "favorite_flag_toggle"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SET_FAVORITE_FLAG:Landroid/net/Uri;

    .line 124
    sget-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "refresh_icon"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_REFRESH:Landroid/net/Uri;

    .line 154
    sput v2, Lcom/android/email/widget/EmailWidget;->favorite_toggle:I

    .line 206
    sput-boolean v2, Lcom/android/email/widget/EmailWidget;->mRefreshing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 10
    .parameter "context"
    .parameter "_widgetId"

    .prologue
    const v6, 0x7f0b0022

    const v5, 0x7f08018f

    const/4 v4, 0x0

    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput v4, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    .line 191
    iput v4, p0, Lcom/android/email/widget/EmailWidget;->mTopLineMode:I

    .line 201
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/email/widget/EmailWidget;->mAccountCount:I

    .line 204
    sget-object v1, Lcom/android/email/widget/WidgetView;->UNINITIALIZED_VIEW:Lcom/android/email/widget/WidgetView;

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    .line 210
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_31

    .line 211
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

    .line 213
    :cond_31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    .line 214
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 216
    iput p2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    .line 217
    new-instance v1, Lcom/android/email/widget/EmailWidgetLoader;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/email/widget/EmailWidgetLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    .line 218
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v1, v4, p0}, Lcom/android/email/widget/EmailWidgetLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 219
    sget-object v1, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    if-nez v1, :cond_113

    .line 221
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 222
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sSubjectSnippetDivider:Ljava/lang/String;

    .line 223
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    .line 224
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSubjectFontSize:I

    .line 225
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDateFontSize:I

    .line 226
    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultWidth:I

    .line 227
    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultHeight:I

    .line 228
    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultLandGrid:I

    .line 229
    const v1, 0x7f0c002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultPortGrid:I

    .line 231
    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDefaultTextColor:I

    .line 232
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sLightTextColor:I

    .line 233
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sConfigureText:Ljava/lang/String;

    .line 236
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sFromTextColor:I

    .line 237
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sSubjectTextColor:I

    .line 238
    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sDateTextColor:I

    .line 239
    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    .line 240
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/widget/EmailWidget;->sLightTextColor:I

    .line 241
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sConfigureText:Ljava/lang/String;

    .line 242
    const v1, 0x7f0200dd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sFavorite:Landroid/graphics/Bitmap;

    .line 243
    const v1, 0x7f0200de

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->sNotFavorite:Landroid/graphics/Bitmap;

    .line 245
    const v1, 0x7f0200e0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->bmpFlagSet:Landroid/graphics/Bitmap;

    .line 246
    const v1, 0x7f0200e1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->bmpFlagClear:Landroid/graphics/Bitmap;

    .line 247
    const v1, 0x7f0200e2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/widget/EmailWidget;->bmpFlagComplete:Landroid/graphics/Bitmap;

    .line 249
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_113
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/widget/EmailWidget;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/widget/EmailWidget;Lcom/android/email/widget/WidgetView;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/email/widget/EmailWidget;->loadView(Lcom/android/email/widget/WidgetView;)V

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

    .line 758
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 759
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 761
    if-eqz p3, :cond_22

    .line 762
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 765
    :cond_22
    return-object v0
.end method

.method private changePreviewLineSize_preference()V
    .registers 4

    .prologue
    .line 809
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    .line 810
    .local v1, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v1}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v0

    .line 811
    .local v0, previewLineSize:I
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    if-eq v2, v0, :cond_10

    .line 812
    iput v0, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    .line 814
    :cond_10
    return-void
.end method

.method private changeTop_preference()V
    .registers 4

    .prologue
    .line 801
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 802
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v1

    .line 803
    .local v1, topLineMode:I
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mTopLineMode:I

    if-eq v2, v1, :cond_10

    .line 804
    iput v1, p0, Lcom/android/email/widget/EmailWidget;->mTopLineMode:I

    .line 806
    :cond_10
    return-void
.end method

.method private isCursorValid()Z
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private loadView(Lcom/android/email/widget/WidgetView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 305
    const-string v0, "EmailWidget"

    const-string v1, "called switchView onPostExecute 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0, p1}, Lcom/android/email/widget/EmailWidgetLoader;->load(Lcom/android/email/widget/WidgetView;)V

    .line 307
    const-string v0, "EmailWidget"

    const-string v1, "called switchView onPostExecute 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method private static openMessage(Landroid/content/Context;JJJ)V
    .registers 16
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    .line 493
    move-wide v3, p3

    .line 494
    .local v3, mailboxId2:J
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 495
    .local v8, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v8, :cond_f

    .line 496
    const-string v0, "EmailWidget"

    const-string v1, "before calling messageView, mailboxID is null so it discard!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_e
    return-void

    .line 499
    :cond_f
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    .line 500
    const-wide/16 v3, -0x2

    :cond_17
    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p5

    .line 502
    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v7

    .line 503
    .local v7, i:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public static processIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 29
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 366
    const-string v3, "EmailWidget"

    const-string v4, "processIntent is called in Email!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 368
    .local v16, data:Landroid/net/Uri;
    if-nez v16, :cond_16

    .line 369
    const-string v3, "EmailWidget"

    const-string v4, "data in intent is null return false without call Email!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v3, 0x0

    .line 465
    :goto_15
    return v3

    .line 372
    :cond_16
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v22

    .line 375
    .local v22, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2e

    .line 376
    const-string v3, "EmailWidget"

    const-string v4, "illegalArgumentException happend without call Email!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 379
    :cond_2e
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 382
    .local v14, command:Ljava/lang/String;
    const-string v3, "EmailWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processIntent : command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v3, 0x1

    :try_start_50
    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 385
    .local v8, arg1:J
    const-string v3, "view_message"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 387
    const-string v3, "EmailWidget"

    const-string v4, "called openMessage in processIntent!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/email/widget/EmailWidget;->openMessage(Landroid/content/Context;JJJ)V

    .line 465
    :cond_8a
    :goto_8a
    const/4 v3, 0x1

    goto :goto_15

    .line 390
    :cond_8c
    const-string v3, "switch_list_view"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 392
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v3

    long-to-int v4, v8

    invoke-virtual {v3, v4}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v25

    .line 393
    .local v25, widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v25, :cond_8a

    .line 394
    const-string v3, "EmailWidget"

    const-string v4, "called switchView in processIntent!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual/range {v25 .. v25}, Lcom/android/email/widget/EmailWidget;->switchView()V
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_a9} :catch_aa

    goto :goto_8a

    .line 460
    .end local v8           #arg1:J
    .end local v25           #widget:Lcom/android/email/widget/EmailWidget;
    :catch_aa
    move-exception v17

    .line 461
    .local v17, e:Ljava/lang/NumberFormatException;
    const-string v3, "EmailWidget"

    const-string v4, "Exception occur"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v3, 0x0

    goto/16 :goto_15

    .line 397
    .end local v17           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #arg1:J
    :cond_b5
    :try_start_b5
    const-string v3, "favorite_toggle"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 398
    const-string v3, "EmailWidget"

    const-string v4, "called change favorite in processIntent!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v20, v0

    .line 400
    .local v20, messageIds:[J
    const/4 v3, 0x0

    aput-wide v8, v20, v3

    .line 401
    invoke-static/range {p0 .. p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v19

    .line 402
    .local v19, mController:Lcom/android/email/Controller;
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_114

    const/4 v3, 0x1

    move v4, v3

    :goto_e1
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/email/Controller;->setMessageFavorite([JZJ)Landroid/os/AsyncTask;

    .line 407
    const/4 v3, 0x1

    sput v3, Lcom/android/email/widget/EmailWidget;->favorite_toggle:I

    .line 409
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v4

    const/4 v3, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v25

    .line 411
    .restart local v25       #widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v25, :cond_8a

    .line 412
    invoke-virtual/range {v25 .. v25}, Lcom/android/email/widget/EmailWidget;->validateAndUpdate()V

    goto/16 :goto_8a

    .line 402
    .end local v25           #widget:Lcom/android/email/widget/EmailWidget;
    :cond_114
    const/4 v3, 0x0

    move v4, v3

    goto :goto_e1

    .line 415
    .end local v19           #mController:Lcom/android/email/Controller;
    .end local v20           #messageIds:[J
    :cond_117
    const-string v3, "favorite_flag_toggle"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 418
    const-string v3, "EmailWidget"

    const-string v4, "called change favorite flag in processIntent!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v20, v0

    .line 421
    .restart local v20       #messageIds:[J
    const/4 v3, 0x0

    aput-wide v8, v20, v3

    .line 423
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 424
    .local v23, status:J
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 428
    .local v12, accountKey:J
    const-wide/16 v3, 0x1

    cmp-long v3, v23, v3

    if-nez v3, :cond_17a

    .line 429
    const/16 v21, 0x0

    .line 435
    .local v21, newFlag:I
    :goto_150
    invoke-static/range {p0 .. p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v15

    .line 436
    .local v15, controller:Lcom/android/email/Controller;
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1, v12, v13}, Lcom/android/email/Controller;->setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;

    .line 439
    const/4 v3, 0x1

    sput v3, Lcom/android/email/widget/EmailWidget;->favorite_toggle:I

    .line 441
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v4

    const/4 v3, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v25

    .line 443
    .restart local v25       #widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v25, :cond_8a

    .line 444
    invoke-virtual/range {v25 .. v25}, Lcom/android/email/widget/EmailWidget;->validateAndUpdate()V

    goto/16 :goto_8a

    .line 430
    .end local v15           #controller:Lcom/android/email/Controller;
    .end local v21           #newFlag:I
    .end local v25           #widget:Lcom/android/email/widget/EmailWidget;
    :cond_17a
    const-wide/16 v3, 0x2

    cmp-long v3, v23, v3

    if-nez v3, :cond_183

    .line 431
    const/16 v21, 0x1

    .restart local v21       #newFlag:I
    goto :goto_150

    .line 433
    .end local v21           #newFlag:I
    :cond_183
    const/16 v21, 0x2

    .restart local v21       #newFlag:I
    goto :goto_150

    .line 447
    .end local v12           #accountKey:J
    .end local v20           #messageIds:[J
    .end local v21           #newFlag:I
    .end local v23           #status:J
    :cond_186
    const-string v3, "refresh_icon"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 448
    const-string v3, "EmailWidget"

    const-string v4, "called refresh in processIntent!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    long-to-int v0, v8

    move/from16 v26, v0

    .line 452
    .local v26, widgetId:I
    const/4 v3, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 454
    .local v10, accountId:J
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 456
    .local v18, isAccount:Z
    const-string v3, "EmailWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widgetId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " accountId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v10, v11, v1, v2}, Lcom/android/email/widget/EmailWidget;->refreshMessages(Landroid/content/Context;JZI)V
    :try_end_1df
    .catch Ljava/lang/NumberFormatException; {:try_start_b5 .. :try_end_1df} :catch_aa

    goto/16 :goto_8a
.end method

.method private static refreshMessages(Landroid/content/Context;JZI)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 470
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400cf

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 472
    if-eqz p3, :cond_3c

    .line 473
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    const-string v2, "com.android.email.intent.action.MAIL_SERVICE_REFRESH_ONE_ACCOUNT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v2, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 477
    sput-boolean v3, Lcom/android/email/widget/EmailWidget;->mRefreshing:Z

    .line 484
    :goto_25
    const v1, 0x7f1002c7

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 485
    const v1, 0x7f1002c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 486
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 487
    invoke-virtual {v1, p4, v0}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 488
    return-void

    .line 479
    :cond_3c
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    const-string v2, "com.android.email.intent.action.MAIL_SERVICE_REFRESH_MULTI_ACCOUNT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 482
    sput-boolean v3, Lcom/android/email/widget/EmailWidget;->mRefreshing:Z

    goto :goto_25
.end method

.method private setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .registers 8
    .parameter "views"
    .parameter "buttonId"
    .parameter "intent"

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 338
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 339
    return-void
.end method

.method private setCommandIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    int-to-long v1, v1

    invoke-static {p3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.android.email/widget_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 324
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 325
    return-void
.end method

.method private varargs setCommandIntentForRefresh(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 664
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 665
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 666
    array-length v4, p4

    move v0, v1

    :goto_10
    if-ge v0, v4, :cond_1a

    aget-object v5, p4, v0

    .line 667
    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 669
    :cond_1a
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v3, "com.android.email/widget_data"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 672
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 674
    return-void
.end method

.method private varargs setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V
    .registers 13
    .parameter "views"
    .parameter "viewId"
    .parameter "baseUri"
    .parameter "args"

    .prologue
    .line 351
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 353
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

    .line 354
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 356
    .end local v0           #arg:Ljava/lang/String;
    :cond_16
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "com.android.email/widget_data"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 358
    return-void
.end method

.method private setNoEmailItemBG(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .parameter "views"
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 678
    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 680
    .local v6, pref:Landroid/content/SharedPreferences;
    const/4 v11, 0x0

    .line 681
    .local v11, text:Ljava/lang/String;
    const/4 v4, 0x0

    .line 682
    .local v4, html_text:Ljava/lang/String;
    const/4 v10, 0x0

    .line 684
    .local v10, style_text:Ljava/lang/CharSequence;
    const-string v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 685
    .local v5, nameBase:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "X"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/android/email/widget/EmailWidget;->sDefaultLandGrid:I

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 686
    .local v8, spanX:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Y"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/android/email/widget/EmailWidget;->sDefaultPortGrid:I

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 694
    .local v9, spanY:I
    const-string v12, "EmailWidget"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[WIDGET_RESIZE] grid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v1, v12, Landroid/content/res/Configuration;->orientation:I

    .line 697
    .local v1, currentOrientation:I
    const v2, 0x7f0202a5

    .line 698
    .local v2, drawableId:I
    const/4 v12, 0x2

    if-gt v12, v8, :cond_bf

    const/4 v12, 0x5

    if-gt v8, v12, :cond_bf

    const/4 v12, 0x2

    if-gt v12, v9, :cond_bf

    const/4 v12, 0x5

    if-gt v9, v12, :cond_bf

    .line 699
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "email_noimage_bg_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 701
    .local v7, res:Landroid/content/res/Resources;
    const-string v12, "drawable"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v3, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 704
    .end local v3           #fileName:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_bf
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0801bc

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 705
    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "<font color=#AF3100>"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "</font>"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "<font color=#AF3100><big><b>"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "</b></big></font>"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "<br><font color=#646464>"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const-string v14, "</font>"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 709
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    .line 711
    const v12, 0x7f1002b3

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 712
    const v12, 0x7f1002b4

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 713
    const v12, 0x7f1002b5

    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 715
    const v12, 0x7f1002b4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 717
    const v12, 0x7f1002b6

    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 718
    const v12, 0x7f1002b7

    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 719
    const v12, 0x7f1002b8

    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 720
    const v12, 0x7f1002b2

    const-string v13, "setBackgroundResource"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 721
    return-void
.end method

.method private setupTitleAndCount(Landroid/widget/RemoteViews;)V
    .registers 14
    .parameter "views"

    .prologue
    const v11, 0x7f1002ad

    const/16 v10, 0x8

    const/4 v9, 0x0

    const v8, 0x7f1002af

    .line 510
    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 511
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, nameBase:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/email/widget/EmailWidget;->sDefaultLandGrid:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 536
    .local v4, spanX:I
    invoke-virtual {p1, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 537
    const v5, 0x7f1002c2

    invoke-virtual {p1, v5, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 538
    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    iget-object v6, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/email/widget/WidgetView;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, count_int:I
    const-string v1, ""

    .line 546
    .local v1, count_unread:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v5, :cond_78

    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getCount()I

    move-result v5

    if-lez v5, :cond_78

    .line 547
    iget-object v5, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getMessageCount()I

    move-result v0

    .line 548
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 564
    if-nez v0, :cond_74

    .line 565
    const-string v1, ""

    .line 566
    invoke-virtual {p1, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 567
    invoke-virtual {p1, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 570
    :goto_70
    invoke-virtual {p1, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 575
    :goto_73
    return-void

    .line 569
    :cond_74
    invoke-virtual {p1, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_70

    .line 572
    :cond_78
    invoke-virtual {p1, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 573
    invoke-virtual {p1, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_73
.end method

.method public static storeSizeInformation(Landroid/content/Context;III)Z
    .registers 15
    .parameter "c"
    .parameter "widgetId"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v10, -0x1

    .line 724
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 725
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 726
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "%d"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, nameBase:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 728
    .local v2, oldX:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 729
    .local v3, oldY:I
    if-ne v2, p2, :cond_4b

    if-eq v3, p3, :cond_7b

    .line 730
    :cond_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "X"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 731
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Y"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 732
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v6

    .line 735
    :cond_7b
    return v5
.end method

.method private updateHeader()V
    .registers 12

    .prologue
    const v10, 0x7f1002c7

    const/4 v9, 0x1

    const v8, 0x7f1002b1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 582
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 583
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWidget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_28
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    invoke-virtual {v2, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 589
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 590
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v0

    if-nez v0, :cond_ad

    .line 591
    :cond_61
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0400c9

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 594
    const v1, 0x7f1002b2

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 595
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/widget/EmailWidget;->setNoEmailItemBG(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Intent;)V

    .line 596
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 597
    const v2, 0x7f1002b2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 598
    invoke-virtual {v0, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 599
    const v1, 0x7f100020

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 651
    :goto_91
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 652
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v6, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 654
    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 657
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 659
    return-void

    .line 602
    :cond_ad
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0400cf

    invoke-direct {v1, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 603
    iget v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v0, v8, v2}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 604
    invoke-direct {p0, v1}, Lcom/android/email/widget/EmailWidget;->setupTitleAndCount(Landroid/widget/RemoteViews;)V

    .line 606
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_150

    .line 607
    :cond_cf
    invoke-virtual {v1, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 609
    const v0, 0x7f1002c8

    invoke-virtual {v1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 610
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v2}, Lcom/android/email/widget/WidgetView;->getAccountId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 612
    const v2, 0x7f1002c8

    invoke-direct {p0, v1, v2, v0}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 620
    :goto_ea
    const-wide/16 v2, -0x1

    .line 622
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v0

    if-lt v0, v9, :cond_103

    :cond_fb
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v0}, Lcom/android/email/widget/WidgetView;->isPerAccount()Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 625
    :cond_103
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v0}, Lcom/android/email/widget/WidgetView;->getAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_10d
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 632
    const v3, 0x7f1002b0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/email/widget/EmailWidget;->setActivityIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 633
    const v2, 0x7f1002c2

    sget-object v3, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SWITCH_LIST_VIEW:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/widget/EmailWidget;->setCommandIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;)V

    .line 637
    sget-object v2, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_REFRESH:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget v4, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v9

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v4}, Lcom/android/email/widget/WidgetView;->isPerAccount()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {p0, v1, v10, v2, v3}, Lcom/android/email/widget/EmailWidget;->setCommandIntentForRefresh(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V

    .line 639
    sget-boolean v0, Lcom/android/email/widget/EmailWidget;->mRefreshing:Z

    if-eqz v0, :cond_161

    .line 640
    invoke-virtual {v1, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 641
    const v0, 0x7f1002c5

    invoke-virtual {v1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object v0, v1

    goto/16 :goto_91

    .line 614
    :cond_150
    invoke-virtual {v1, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 616
    const v0, 0x7f1002c8

    invoke-virtual {v1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_ea

    .line 627
    :cond_15a
    const-wide/high16 v4, 0x1000

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_10d

    .line 643
    :cond_161
    invoke-virtual {v1, v10, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 644
    const v0, 0x7f1002c5

    invoke-virtual {v1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object v0, v1

    goto/16 :goto_91
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1007
    const/4 v0, 0x0

    .line 1008
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getCount()I

    move-result v0

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1014
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 5

    .prologue
    .line 1021
    iget v0, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    if-nez v0, :cond_22

    .line 1022
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400cb

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1033
    :goto_12
    const v1, 0x7f1002c0

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f080193

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1034
    return-object v0

    .line 1025
    :cond_22
    iget v0, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    .line 1026
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400cc

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_12

    .line 1028
    :cond_36
    iget v0, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    .line 1029
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400cd

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_12

    .line 1031
    :cond_4a
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400ce

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_12
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 16
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 820
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->changePreviewLineSize_preference()V

    .line 821
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->changeTop_preference()V

    .line 824
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->isCursorValid()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v0, p1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 825
    :cond_17
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidget;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1000
    :goto_1b
    return-object v0

    .line 828
    :cond_1c
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0400ca

    invoke-direct {v0, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 830
    const v2, 0x7f1002bf

    const-string v4, "setMaxLines"

    iget v5, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 831
    const v2, 0x7f1002bf

    const-string v4, "setMinLines"

    iget v5, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 834
    :try_start_3e
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v2

    if-eq v2, v3, :cond_1d4

    move v6, v3

    .line 836
    :goto_48
    const v2, 0x7f0203cd

    .line 837
    if-eqz v6, :cond_50

    .line 838
    const v2, 0x7f0203d0

    .line 840
    :cond_50
    const v4, 0x7f1002b9

    const-string v5, "setBackgroundResource"

    invoke-virtual {v0, v4, v5, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 845
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mTopLineMode:I

    if-nez v2, :cond_1d7

    .line 846
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 847
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 863
    :goto_6a
    if-nez v4, :cond_6e

    .line 864
    const-string v4, ""

    .line 866
    :cond_6e
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 867
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 872
    sget v5, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    if-eqz v6, :cond_1e7

    sget v4, Lcom/android/email/widget/EmailWidget;->sFromTextColor:I

    :goto_89
    invoke-direct {p0, v7, v5, v4}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 874
    const v5, 0x7f1002bd

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 876
    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getLong(I)J

    move-result-wide v4

    .line 878
    iget-object v8, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 879
    if-nez v4, :cond_28f

    .line 880
    const-string v4, ""

    move-object v5, v4

    .line 883
    :goto_a9
    sget v8, Lcom/android/email/widget/EmailWidget;->sDateFontSize:I

    if-eqz v6, :cond_1eb

    sget v4, Lcom/android/email/widget/EmailWidget;->sDateTextColor:I

    :goto_af
    invoke-direct {p0, v5, v8, v4}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 885
    const v5, 0x7f1002bc

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 889
    if-nez v2, :cond_bd

    .line 890
    const-string v2, ""

    .line 895
    :cond_bd
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 896
    if-eqz v6, :cond_1ef

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_ca
    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v2, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 899
    sget v5, Lcom/android/email/widget/EmailWidget;->sSubjectFontSize:I

    if-eqz v6, :cond_1f7

    sget v2, Lcom/android/email/widget/EmailWidget;->sSubjectTextColor:I

    :goto_da
    invoke-direct {p0, v4, v5, v2}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 901
    const v4, 0x7f1002bb

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 903
    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mPreviewLineSize:I

    if-eqz v2, :cond_105

    .line 904
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 905
    if-nez v2, :cond_28c

    .line 906
    const-string v2, ""

    move-object v4, v2

    .line 908
    :goto_f5
    sget v5, Lcom/android/email/widget/EmailWidget;->sSenderFontSize:I

    if-eqz v6, :cond_1fb

    sget v2, Lcom/android/email/widget/EmailWidget;->sDateTextColor:I

    :goto_fb
    invoke-direct {p0, v4, v5, v2}, Lcom/android/email/widget/EmailWidget;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 910
    const v4, 0x7f1002bf

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 913
    :cond_105
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v2

    .line 914
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_111

    .line 918
    :cond_111
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1ff

    move v2, v3

    .line 919
    :goto_11b
    const v4, 0x7f1002ba

    if-eqz v2, :cond_202

    move v2, v1

    :goto_121
    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 923
    const-string v2, "eas"

    iget-object v4, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 924
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v5

    .line 927
    if-eqz v4, :cond_21e

    .line 929
    if-ne v5, v3, :cond_206

    .line 930
    const v2, 0x7f1002be

    sget-object v6, Lcom/android/email/widget/EmailWidget;->bmpFlagComplete:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    move v2, v1

    .line 942
    :goto_147
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v1

    if-ge v1, v3, :cond_238

    .line 943
    const v1, 0x7f100161

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 965
    :goto_156
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 966
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 968
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v1

    if-lt v1, v3, :cond_174

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v1}, Lcom/android/email/widget/WidgetView;->isPerAccount()Z

    move-result v1

    if-eqz v1, :cond_268

    .line 969
    :cond_174
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 973
    :goto_17c
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 974
    iget v3, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 975
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 977
    const v10, 0x7f1002b9

    sget-object v11, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_VIEW_MESSAGE:Landroid/net/Uri;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    invoke-direct {p0, v0, v10, v11, v12}, Lcom/android/email/widget/EmailWidget;->setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V

    .line 980
    if-eqz v4, :cond_270

    .line 981
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 983
    const v2, 0x7f1002be

    sget-object v4, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SET_FAVORITE_FLAG:Landroid/net/Uri;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v5, v10

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    aput-object v8, v5, v1

    const/4 v1, 0x3

    aput-object v3, v5, v1

    const/4 v1, 0x4

    aput-object v9, v5, v1

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/email/widget/EmailWidget;->setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V

    .line 991
    :goto_1be
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_1c1} :catch_1c3

    goto/16 :goto_1b

    .line 997
    :catch_1c3
    move-exception v0

    .line 998
    const-string v1, "EmailWidget"

    const-string v2, "^^^^^^^^^^^^^^^^^^^^^^^^Exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1000
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidget;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto/16 :goto_1b

    :cond_1d4
    move v6, v1

    .line 834
    goto/16 :goto_48

    .line 854
    :cond_1d7
    :try_start_1d7
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 855
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6a

    .line 872
    :cond_1e7
    sget v4, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    goto/16 :goto_89

    .line 883
    :cond_1eb
    sget v4, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    goto/16 :goto_af

    .line 896
    :cond_1ef
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_ca

    .line 899
    :cond_1f7
    sget v2, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    goto/16 :goto_da

    .line 908
    :cond_1fb
    sget v2, Lcom/android/email/widget/EmailWidget;->sReadTextColor:I

    goto/16 :goto_fb

    :cond_1ff
    move v2, v1

    .line 918
    goto/16 :goto_11b

    .line 919
    :cond_202
    const/16 v2, 0x8

    goto/16 :goto_121

    .line 931
    :cond_206
    if-ne v5, v10, :cond_213

    .line 932
    const v2, 0x7f1002be

    sget-object v6, Lcom/android/email/widget/EmailWidget;->bmpFlagSet:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    move v2, v1

    goto/16 :goto_147

    .line 934
    :cond_213
    const v2, 0x7f1002be

    sget-object v6, Lcom/android/email/widget/EmailWidget;->bmpFlagClear:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    move v2, v1

    goto/16 :goto_147

    .line 938
    :cond_21e
    iget-object v2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_228

    move v1, v3

    .line 939
    :cond_228
    const v6, 0x7f1002be

    if-eqz v1, :cond_235

    sget-object v2, Lcom/android/email/widget/EmailWidget;->sFavorite:Landroid/graphics/Bitmap;

    :goto_22f
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    move v2, v1

    goto/16 :goto_147

    :cond_235
    sget-object v2, Lcom/android/email/widget/EmailWidget;->sNotFavorite:Landroid/graphics/Bitmap;

    goto :goto_22f

    .line 945
    :cond_238
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getLong(I)J

    move-result-wide v8

    .line 947
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 951
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v1, v8, v9}, Lcom/android/email/ResourceHelper;->getAccountColorId(J)I

    move-result v1

    .line 952
    const/4 v6, -0x1

    if-eq v1, v6, :cond_25f

    .line 954
    const v6, 0x7f100161

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 955
    const v6, 0x7f100161

    const-string v8, "setBackgroundResource"

    invoke-virtual {v0, v6, v8, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_156

    .line 960
    :cond_25f
    const v1, 0x7f100161

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_156

    .line 971
    :cond_268
    const-wide/high16 v9, 0x1000

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17c

    .line 986
    :cond_270
    const v1, 0x7f1002be

    sget-object v4, Lcom/android/email/widget/EmailWidget;->COMMAND_URI_SET_FAVORITE:Landroid/net/Uri;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v5, v10

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v8, v5, v2

    const/4 v2, 0x3

    aput-object v3, v5, v2

    const/4 v2, 0x4

    aput-object v9, v5, v2

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/email/widget/EmailWidget;->setFillInIntent(Landroid/widget/RemoteViews;ILandroid/net/Uri;[Ljava/lang/String;)V
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_28a} :catch_1c3

    goto/16 :goto_1be

    :cond_28c
    move-object v4, v2

    goto/16 :goto_f5

    :cond_28f
    move-object v5, v4

    goto/16 :goto_a9
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 1040
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 1045
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 1069
    const-string v0, "EmailWidget"

    const-string v1, "onCreate email widget "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void
.end method

.method public onDataSetChanged()V
    .registers 1

    .prologue
    .line 1050
    return-void
.end method

.method public onDeleted()V
    .registers 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_9

    .line 1054
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 1056
    :cond_9
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetManager;->remove(I)V

    .line 1057
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    if-eqz v0, :cond_9

    .line 1062
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 1064
    :cond_9
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetManager;->remove(I)V

    .line 1065
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 7
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
    .line 269
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_a

    .line 270
    const-string v1, "EmailWidget"

    const-string v2, "there is no cursor!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local p2
    :goto_9
    return-void

    .line 279
    .restart local p2
    :cond_a
    check-cast p2, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    .end local p2
    iput-object p2, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    .line 280
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mLoader:Lcom/android/email/widget/EmailWidgetLoader;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader;->getLoadingWidgetView()Lcom/android/email/widget/WidgetView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    .line 281
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidget;->updateHeader()V

    .line 282
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mCursor:Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->getAccountCount()I

    move-result v1

    if-lez v1, :cond_43

    .line 283
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400cf

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 284
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Lcom/android/email/widget/EmailWidget;->setupTitleAndCount(Landroid/widget/RemoteViews;)V

    .line 285
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 286
    iget-object v1, p0, Lcom/android/email/widget/EmailWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/email/widget/EmailWidget;->mWidgetId:I

    const v3, 0x7f1002b1

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 289
    .end local v0           #views:Landroid/widget/RemoteViews;
    :cond_43
    const-string v1, "EmailWidget"

    const-string v2, "onLoadComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/widget/EmailWidget;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidget;->switchView()V

    .line 257
    return-void
.end method

.method switchView()V
    .registers 3

    .prologue
    .line 1089
    const-string v0, "EmailWidget"

    const-string v1, "called switchView 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1091
    const-string v0, "EmailWidget"

    const-string v1, "called switchView 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    .line 1093
    const-string v0, "EmailWidget"

    const-string v1, "called switchView 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    new-instance v0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;-><init>(Lcom/android/email/widget/EmailWidget;Z)V

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    .line 1095
    const-string v0, "EmailWidget"

    const-string v1, "called switchView 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1097
    return-void
.end method

.method validateAndUpdate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1077
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    .line 1079
    new-instance v0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;-><init>(Lcom/android/email/widget/EmailWidget;Z)V

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    .line 1080
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget;->mWidgetUpdater:Lcom/android/email/widget/EmailWidget$WidgetUpdater;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1082
    return-void
.end method
