.class public final Lcom/google/android/youtube/core/suggest/c;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/suggest/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/suggest/c;->a:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .registers 5
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/suggest/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/suggest/d;

    .line 60
    iget-object v2, p0, Lcom/google/android/youtube/core/suggest/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 62
    :cond_1b
    return-void
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/core/suggest/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/suggest/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getDouble(I)D
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/suggest/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat(I)F
    .registers 3
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/suggest/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .registers 3
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/suggest/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getLong(I)J
    .registers 4
    .parameter

    .prologue
    .line 86
    if-nez p1, :cond_6

    .line 87
    iget v0, p0, Lcom/google/android/youtube/core/suggest/c;->mPos:I

    int-to-long v0, v0

    .line 89
    :goto_5
    return-wide v0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/suggest/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_5
.end method

.method public final getShort(I)S
    .registers 3
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/suggest/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/youtube/core/suggest/c;->mPos:I

    if-gez v0, :cond_c

    .line 47
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_c
    iget v0, p0, Lcom/google/android/youtube/core/suggest/c;->mPos:I

    iget-object v1, p0, Lcom/google/android/youtube/core/suggest/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1e

    .line 49
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1e
    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 52
    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/core/suggest/c;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/youtube/core/suggest/c;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/suggest/d;

    iget-object v0, v0, Lcom/google/android/youtube/core/suggest/d;->a:Ljava/lang/String;

    .line 54
    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public final isNull(I)Z
    .registers 3
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/suggest/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
