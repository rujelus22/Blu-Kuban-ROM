.class synthetic Lcom/google/android/apps/plus/json/JsonReader$1;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/json/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$apps$plus$json$JsonScope:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 318
    invoke-static {}, Lcom/google/android/apps/plus/json/JsonScope;->values()[Lcom/google/android/apps/plus/json/JsonScope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_71

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6f

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_6d

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_6b

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->DANGLING_NAME:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_69

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_67

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_65

    :goto_56
    :try_start_56
    sget-object v0, Lcom/google/android/apps/plus/json/JsonReader$1;->$SwitchMap$com$google$android$apps$plus$json$JsonScope:[I

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->CLOSED:Lcom/google/android/apps/plus/json/JsonScope;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonScope;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_63

    :goto_62
    return-void

    :catch_63
    move-exception v0

    goto :goto_62

    :catch_65
    move-exception v0

    goto :goto_56

    :catch_67
    move-exception v0

    goto :goto_4b

    :catch_69
    move-exception v0

    goto :goto_40

    :catch_6b
    move-exception v0

    goto :goto_35

    :catch_6d
    move-exception v0

    goto :goto_2a

    :catch_6f
    move-exception v0

    goto :goto_1f

    :catch_71
    move-exception v0

    goto :goto_14
.end method
