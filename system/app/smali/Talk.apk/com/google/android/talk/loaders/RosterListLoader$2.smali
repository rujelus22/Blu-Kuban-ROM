.class synthetic Lcom/google/android/talk/loaders/RosterListLoader$2;
.super Ljava/lang/Object;
.source "RosterListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/loaders/RosterListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

.field static final synthetic $SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 187
    invoke-static {}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->values()[Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    :try_start_9
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_5f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_5d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$FilterMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5b

    .line 157
    :goto_2a
    invoke-static {}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->values()[Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I

    :try_start_33
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_59

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_57

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$2;->$SwitchMap$com$google$android$talk$loaders$RosterListLoader$SortMode:[I

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->RECENCY_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v1}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    goto :goto_54

    :catch_57
    move-exception v0

    goto :goto_49

    :catch_59
    move-exception v0

    goto :goto_3e

    .line 187
    :catch_5b
    move-exception v0

    goto :goto_2a

    :catch_5d
    move-exception v0

    goto :goto_1f

    :catch_5f
    move-exception v0

    goto :goto_14
.end method
