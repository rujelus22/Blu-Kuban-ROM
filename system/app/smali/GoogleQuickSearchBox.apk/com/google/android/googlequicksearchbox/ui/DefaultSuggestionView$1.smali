.class synthetic Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$1;
.super Ljava/lang/Object;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$googlequicksearchbox$ui$ListEntry$Grouping:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 146
    invoke-static {}, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->values()[Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$1;->$SwitchMap$com$google$android$googlequicksearchbox$ui$ListEntry$Grouping:[I

    :try_start_9
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$1;->$SwitchMap$com$google$android$googlequicksearchbox$ui$ListEntry$Grouping:[I

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->NONE:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$1;->$SwitchMap$com$google$android$googlequicksearchbox$ui$ListEntry$Grouping:[I

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->START_OF_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$1;->$SwitchMap$com$google$android$googlequicksearchbox$ui$ListEntry$Grouping:[I

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
