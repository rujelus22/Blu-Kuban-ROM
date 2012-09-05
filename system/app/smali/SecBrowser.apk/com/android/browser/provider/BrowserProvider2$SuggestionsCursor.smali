.class Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "BrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/BrowserProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SuggestionsCursor"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mIconId:Ljava/lang/String;

.field private final mSource:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2199
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 4
    .parameter "cursor"
    .parameter "iconId"

    .prologue
    .line 2212
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 2213
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    .line 2214
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mIconId:Ljava/lang/String;

    .line 2215
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2219
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 3
    .parameter "column"

    .prologue
    .line 2251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 2256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 2261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 2266
    sparse-switch p1, :sswitch_data_1a

    .line 2272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2268
    :sswitch_9
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2270
    :goto_10
    return-wide v0

    :sswitch_11
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_10

    .line 2266
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_9
        0x7 -> :sswitch_11
    .end sparse-switch
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 2277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "columnIndex"

    .prologue
    const/4 v1, 0x1

    .line 2224
    packed-switch p1, :pswitch_data_36

    .line 2241
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 2226
    :pswitch_6
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2228
    :pswitch_d
    const-string v0, "android.intent.action.VIEW"

    goto :goto_5

    .line 2230
    :pswitch_10
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2233
    :pswitch_17
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2235
    :pswitch_22
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2237
    :pswitch_2a
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mIconId:Ljava/lang/String;

    goto :goto_5

    .line 2239
    :pswitch_2d
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2224
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_10
        :pswitch_22
        :pswitch_17
        :pswitch_17
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .registers 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
