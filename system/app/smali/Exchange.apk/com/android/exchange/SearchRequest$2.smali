.class synthetic Lcom/android/exchange/SearchRequest$2;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

.field static final synthetic $SwitchMap$com$android$exchange$SearchRequest$QueryClass:[I

.field static final synthetic $SwitchMap$com$android$exchange$SearchRequest$StoreName:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 441
    invoke-static {}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->values()[Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    :try_start_9
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->PLAIN_TEXT:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_68

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->HTML:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_66

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->RTF:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_64

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$BodyPreferenceType:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->MIME:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_62

    .line 349
    :goto_35
    invoke-static {}, Lcom/android/exchange/SearchRequest$QueryClass;->values()[Lcom/android/exchange/SearchRequest$QueryClass;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$QueryClass:[I

    :try_start_3e
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$QueryClass:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$QueryClass;->EMAIL:Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$QueryClass;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_60

    .line 301
    :goto_49
    invoke-static {}, Lcom/android/exchange/SearchRequest$StoreName;->values()[Lcom/android/exchange/SearchRequest$StoreName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$StoreName:[I

    :try_start_52
    sget-object v0, Lcom/android/exchange/SearchRequest$2;->$SwitchMap$com$android$exchange$SearchRequest$StoreName:[I

    sget-object v1, Lcom/android/exchange/SearchRequest$StoreName;->MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v1}, Lcom/android/exchange/SearchRequest$StoreName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5d} :catch_5e

    :goto_5d
    return-void

    :catch_5e
    move-exception v0

    goto :goto_5d

    .line 349
    :catch_60
    move-exception v0

    goto :goto_49

    .line 441
    :catch_62
    move-exception v0

    goto :goto_35

    :catch_64
    move-exception v0

    goto :goto_2a

    :catch_66
    move-exception v0

    goto :goto_1f

    :catch_68
    move-exception v0

    goto :goto_14
.end method
