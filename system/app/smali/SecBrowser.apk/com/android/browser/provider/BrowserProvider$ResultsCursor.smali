.class Lcom/android/browser/provider/BrowserProvider$ResultsCursor;
.super Landroid/database/AbstractCursor;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/BrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultsCursor"
.end annotation


# static fields
.field private static final RESULTS_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 764
    const/4 v0, 0x6

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

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->RESULTS_COLUMNS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 781
    sget-object v0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->RESULTS_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 3
    .parameter "column"

    .prologue
    .line 827
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 823
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 812
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 816
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    if-nez p1, :cond_b

    .line 817
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 819
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 808
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "column"

    .prologue
    .line 786
    packed-switch p1, :pswitch_data_26

    .line 803
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 788
    :pswitch_5
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    goto :goto_4

    .line 793
    :pswitch_8
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    .line 798
    :pswitch_13
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mPos:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 800
    :pswitch_1a
    const v0, 0x7f02008f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 786
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_1a
        :pswitch_13
    .end packed-switch
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 831
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
