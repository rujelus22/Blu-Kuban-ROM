.class Lcom/android/email/widget/EmailWidgetLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "EmailWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;
    }
.end annotation


# static fields
.field private static final WIDGET_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLoadingWidgetView:Lcom/android/email/widget/WidgetView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "substr(snippet,0,200)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/widget/EmailWidgetLoader;->WIDGET_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 108
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/widget/EmailWidgetLoader;->WIDGET_PROJECTION:[Ljava/lang/String;

    const-string v6, "timeStamp DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method


# virtual methods
.method public getLoadingWidgetView()Lcom/android/email/widget/WidgetView;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mLoadingWidgetView:Lcom/android/email/widget/WidgetView;

    return-object v0
.end method

.method public load(Lcom/android/email/widget/WidgetView;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->reset()V

    .line 148
    iput-object p1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mLoadingWidgetView:Lcom/android/email/widget/WidgetView;

    .line 149
    invoke-virtual {p1}, Lcom/android/email/widget/WidgetView;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelection(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/android/email/widget/WidgetView;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->startLoading()V

    .line 152
    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v3

    .line 122
    .local v3, messagesCursor:Landroid/database/Cursor;
    :try_start_4
    iget-object v4, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 125
    .local v0, accountCount:I
    iget-object v4, p0, Lcom/android/email/widget/EmailWidgetLoader;->mLoadingWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v4}, Lcom/android/email/widget/WidgetView;->useUnreadCount()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 126
    iget-object v4, p0, Lcom/android/email/widget/EmailWidgetLoader;->mLoadingWidgetView:Lcom/android/email/widget/WidgetView;

    iget-object v5, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/email/widget/WidgetView;->getUnreadCount(Landroid/content/Context;)I

    move-result v2

    .line 131
    .local v2, messageCount:I
    :goto_1c
    new-instance v4, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;

    invoke-direct {v4, v3, v0, v2}, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;-><init>(Landroid/database/Cursor;II)V

    move-object v3, v4

    .line 135
    .end local v0           #accountCount:I
    .end local v2           #messageCount:I
    .end local v3           #messagesCursor:Landroid/database/Cursor;
    :goto_22
    return-object v3

    .line 129
    .restart local v0       #accountCount:I
    .restart local v3       #messagesCursor:Landroid/database/Cursor;
    :cond_23
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_28

    move-result v2

    .restart local v2       #messageCount:I
    goto :goto_1c

    .line 133
    .end local v0           #accountCount:I
    .end local v2           #messageCount:I
    :catch_28
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
