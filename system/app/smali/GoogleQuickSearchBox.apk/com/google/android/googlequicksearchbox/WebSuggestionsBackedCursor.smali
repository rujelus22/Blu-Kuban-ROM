.class public Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;
.super Landroid/database/AbstractCursor;
.source "WebSuggestionsBackedCursor.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private mExtraColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const/16 v0, 0xd

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

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "suggest_format"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "suggest_spinner_while_refreshing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .registers 2
    .parameter "suggestions"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 70
    return-void
.end method

.method private asString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 120
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 125
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private get()Lcom/google/android/googlequicksearchbox/Suggestion;
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method private getExtra(I)Ljava/lang/String;
    .registers 5
    .parameter "columnIdx"

    .prologue
    .line 97
    sget-object v2, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    sub-int v0, p1, v2

    .line 98
    .local v0, extraColumn:I
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->get()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v1

    .line 99
    .local v1, extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    if-eqz v1, :cond_1c

    .line 100
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->mExtraColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 74
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getExtraColumns()Ljava/util/Collection;

    move-result-object v1

    .line 75
    .local v1, extraColumns:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_37

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v0, allColumns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->mExtraColumns:Ljava/util/ArrayList;

    .line 79
    sget-object v2, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->COLUMNS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->mExtraColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 83
    .end local v0           #allColumns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_36
    return-object v2

    :cond_37
    sget-object v2, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->COLUMNS:[Ljava/lang/String;

    goto :goto_36
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->mSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 5
    .parameter "column"

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 196
    :goto_c
    return-wide v1

    .line 195
    :catch_d
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_c
.end method

.method public getFloat(I)F
    .registers 4
    .parameter "column"

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 205
    :goto_c
    return v1

    .line 204
    :catch_d
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getInt(I)I
    .registers 4
    .parameter "column"

    .prologue
    .line 108
    if-nez p1, :cond_7

    .line 109
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getPosition()I

    move-result v1

    .line 114
    :goto_6
    return v1

    .line 112
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_12} :catch_14

    move-result v1

    goto :goto_6

    .line 113
    :catch_14
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLong(I)J
    .registers 5
    .parameter "column"

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide v1

    .line 173
    :goto_c
    return-wide v1

    .line 172
    :catch_d
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_c
.end method

.method public getShort(I)S
    .registers 4
    .parameter "column"

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 187
    :goto_c
    return v1

    .line 186
    :catch_d
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6
    .parameter "column"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->get()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    .line 131
    .local v0, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    sget-object v2, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_75

    .line 132
    packed-switch p1, :pswitch_data_7a

    .line 160
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :pswitch_33
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_3b
    :pswitch_3b
    return-object v1

    .line 136
    :pswitch_3c
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 138
    :pswitch_45
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 140
    :pswitch_4e
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 142
    :pswitch_53
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 146
    :pswitch_58
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 148
    :pswitch_5d
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 150
    :pswitch_62
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 152
    :pswitch_67
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 156
    :pswitch_6c
    const-string v1, "_-1"

    goto :goto_3b

    .line 158
    :pswitch_6f
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 164
    :cond_75
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getExtra(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    .line 132
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3c
        :pswitch_45
        :pswitch_4e
        :pswitch_53
        :pswitch_3b
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_3b
        :pswitch_6c
        :pswitch_6f
    .end packed-switch
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
