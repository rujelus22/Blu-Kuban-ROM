.class synthetic Lx/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 324
    invoke-static {}, Lx/m;->values()[Lx/m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lx/i;->b:[I

    :try_start_9
    sget-object v0, Lx/i;->b:[I

    sget-object v1, Lx/m;->a:Lx/m;

    invoke-virtual {v1}, Lx/m;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_86

    :goto_14
    :try_start_14
    sget-object v0, Lx/i;->b:[I

    sget-object v1, Lx/m;->b:Lx/m;

    invoke-virtual {v1}, Lx/m;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_84

    :goto_1f
    :try_start_1f
    sget-object v0, Lx/i;->b:[I

    sget-object v1, Lx/m;->c:Lx/m;

    invoke-virtual {v1}, Lx/m;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_82

    .line 241
    :goto_2a
    invoke-static {}, Lx/c;->values()[Lx/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lx/i;->a:[I

    :try_start_33
    sget-object v0, Lx/i;->a:[I

    sget-object v1, Lx/c;->d:Lx/c;

    invoke-virtual {v1}, Lx/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_80

    :goto_3e
    :try_start_3e
    sget-object v0, Lx/i;->a:[I

    sget-object v1, Lx/c;->c:Lx/c;

    invoke-virtual {v1}, Lx/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_7e

    :goto_49
    :try_start_49
    sget-object v0, Lx/i;->a:[I

    sget-object v1, Lx/c;->a:Lx/c;

    invoke-virtual {v1}, Lx/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_7c

    :goto_54
    :try_start_54
    sget-object v0, Lx/i;->a:[I

    sget-object v1, Lx/c;->b:Lx/c;

    invoke-virtual {v1}, Lx/c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_7a

    :goto_5f
    :try_start_5f
    sget-object v0, Lx/i;->a:[I

    sget-object v1, Lx/c;->e:Lx/c;

    invoke-virtual {v1}, Lx/c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_78

    :goto_6a
    :try_start_6a
    sget-object v0, Lx/i;->a:[I

    sget-object v1, Lx/c;->f:Lx/c;

    invoke-virtual {v1}, Lx/c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_76

    :goto_75
    return-void

    :catch_76
    move-exception v0

    goto :goto_75

    :catch_78
    move-exception v0

    goto :goto_6a

    :catch_7a
    move-exception v0

    goto :goto_5f

    :catch_7c
    move-exception v0

    goto :goto_54

    :catch_7e
    move-exception v0

    goto :goto_49

    :catch_80
    move-exception v0

    goto :goto_3e

    .line 324
    :catch_82
    move-exception v0

    goto :goto_2a

    :catch_84
    move-exception v0

    goto :goto_1f

    :catch_86
    move-exception v0

    goto :goto_14
.end method
