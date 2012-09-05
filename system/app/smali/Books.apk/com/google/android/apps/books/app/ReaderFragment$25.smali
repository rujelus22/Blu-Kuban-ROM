.class synthetic Lcom/google/android/apps/books/app/ReaderFragment$25;
.super Ljava/lang/Object;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$apps$books$provider$BooksContract$Volumes$TtsPermission:[I

.field static final synthetic $SwitchMap$com$google$android$apps$books$widget$PageTurnView$TouchZone:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 3047
    invoke-static {}, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->values()[Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$widget$PageTurnView$TouchZone:[I

    :try_start_9
    sget-object v0, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$widget$PageTurnView$TouchZone:[I

    sget-object v1, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->LEFT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$widget$PageTurnView$TouchZone:[I

    sget-object v1, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->RIGHT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$widget$PageTurnView$TouchZone:[I

    sget-object v1, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->CENTER:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68

    .line 1470
    :goto_2a
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->values()[Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$provider$BooksContract$Volumes$TtsPermission:[I

    :try_start_33
    sget-object v0, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$provider$BooksContract$Volumes$TtsPermission:[I

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ALLOWED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_66

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$provider$BooksContract$Volumes$TtsPermission:[I

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ALLOWED_FOR_ACCESSIBILITY:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$provider$BooksContract$Volumes$TtsPermission:[I

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->NOT_ALLOWED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$provider$BooksContract$Volumes$TtsPermission:[I

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->UNKNOWN:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_5f

    :catch_62
    move-exception v0

    goto :goto_54

    :catch_64
    move-exception v0

    goto :goto_49

    :catch_66
    move-exception v0

    goto :goto_3e

    .line 3047
    :catch_68
    move-exception v0

    goto :goto_2a

    :catch_6a
    move-exception v0

    goto :goto_1f

    :catch_6c
    move-exception v0

    goto :goto_14
.end method
