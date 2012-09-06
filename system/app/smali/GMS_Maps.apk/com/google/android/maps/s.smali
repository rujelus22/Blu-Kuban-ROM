.class synthetic Lcom/google/android/maps/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2285
    invoke-static {}, Lcom/google/android/maps/B;->values()[Lcom/google/android/maps/B;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/maps/s;->b:[I

    :try_start_9
    sget-object v0, Lcom/google/android/maps/s;->b:[I

    sget-object v1, Lcom/google/android/maps/B;->b:Lcom/google/android/maps/B;

    invoke-virtual {v1}, Lcom/google/android/maps/B;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/maps/s;->b:[I

    sget-object v1, Lcom/google/android/maps/B;->c:Lcom/google/android/maps/B;

    invoke-virtual {v1}, Lcom/google/android/maps/B;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/maps/s;->b:[I

    sget-object v1, Lcom/google/android/maps/B;->d:Lcom/google/android/maps/B;

    invoke-virtual {v1}, Lcom/google/android/maps/B;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_75

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/maps/s;->b:[I

    sget-object v1, Lcom/google/android/maps/B;->e:Lcom/google/android/maps/B;

    invoke-virtual {v1}, Lcom/google/android/maps/B;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_73

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/maps/s;->b:[I

    sget-object v1, Lcom/google/android/maps/B;->f:Lcom/google/android/maps/B;

    invoke-virtual {v1}, Lcom/google/android/maps/B;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_71

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/maps/s;->b:[I

    sget-object v1, Lcom/google/android/maps/B;->g:Lcom/google/android/maps/B;

    invoke-virtual {v1}, Lcom/google/android/maps/B;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_6f

    .line 1324
    :goto_4b
    invoke-static {}, Lcom/google/android/maps/A;->values()[Lcom/google/android/maps/A;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/maps/s;->a:[I

    :try_start_54
    sget-object v0, Lcom/google/android/maps/s;->a:[I

    sget-object v1, Lcom/google/android/maps/A;->b:Lcom/google/android/maps/A;

    invoke-virtual {v1}, Lcom/google/android/maps/A;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/maps/s;->a:[I

    sget-object v1, Lcom/google/android/maps/A;->c:Lcom/google/android/maps/A;

    invoke-virtual {v1}, Lcom/google/android/maps/A;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_6b

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    goto :goto_6a

    :catch_6d
    move-exception v0

    goto :goto_5f

    .line 2285
    :catch_6f
    move-exception v0

    goto :goto_4b

    :catch_71
    move-exception v0

    goto :goto_40

    :catch_73
    move-exception v0

    goto :goto_35

    :catch_75
    move-exception v0

    goto :goto_2a

    :catch_77
    move-exception v0

    goto :goto_1f

    :catch_79
    move-exception v0

    goto :goto_14
.end method
