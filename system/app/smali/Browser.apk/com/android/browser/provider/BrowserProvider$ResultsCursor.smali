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
.field private static final RESULTS_COLUMNS:[Ljava/lang/String; = null

.field private static final RESULT_ACTION_ID:I = 0x1

.field private static final RESULT_DATA_ID:I = 0x2

.field private static final RESULT_EXTRA_ID:I = 0x5

.field private static final RESULT_ICON_ID:I = 0x4

.field private static final RESULT_TEXT_ID:I = 0x3


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
    .line 762
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

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 772
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mResults:Ljava/util/ArrayList;

    .line 773
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 779
    sget-object v0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->RESULTS_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 3
    .parameter "column"

    .prologue
    .line 825
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 821
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 810
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 814
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    if-nez p1, :cond_b

    .line 815
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 817
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 806
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "column"

    .prologue
    .line 784
    packed-switch p1, :pswitch_data_26

    .line 801
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 786
    :pswitch_5
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    goto :goto_4

    .line 791
    :pswitch_8
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mResults:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    .line 796
    :pswitch_13
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$ResultsCursor;->mPos:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 798
    :pswitch_1a
    const v0, 0x7f02004b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 784
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
    .line 829
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
