.class synthetic LadX;
.super Ljava/lang/Object;
.source "GsonParser.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 169
    invoke-static {}, Lana;->values()[Lana;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LadX;->b:[I

    :try_start_9
    sget-object v0, LadX;->b:[I

    sget-object v1, Lana;->a:Lana;

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_a3

    :goto_14
    :try_start_14
    sget-object v0, LadX;->b:[I

    sget-object v1, Lana;->b:Lana;

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_a0

    :goto_1f
    :try_start_1f
    sget-object v0, LadX;->b:[I

    sget-object v1, Lana;->c:Lana;

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_9e

    :goto_2a
    :try_start_2a
    sget-object v0, LadX;->b:[I

    sget-object v1, Lana;->d:Lana;

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_9c

    :goto_35
    :try_start_35
    sget-object v0, LadX;->b:[I

    sget-object v1, Lana;->h:Lana;

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_9a

    :goto_40
    :try_start_40
    sget-object v0, LadX;->b:[I

    sget-object v1, Lana;->i:Lana;

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_98

    :goto_4b
    :try_start_4b
    sget-object v0, LadX;->b:[I

    sget-object v1, Lana;->f:Lana;

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_96

    :goto_56
    :try_start_56
    sget-object v0, LadX;->b:[I

    sget-object v1, Lana;->g:Lana;

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_94

    :goto_62
    :try_start_62
    sget-object v0, LadX;->b:[I

    sget-object v1, Lana;->e:Lana;

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_92

    .line 150
    :goto_6e
    invoke-static {}, LadT;->values()[LadT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LadX;->a:[I

    :try_start_77
    sget-object v0, LadX;->a:[I

    sget-object v1, LadT;->a:LadT;

    invoke-virtual {v1}, LadT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_82} :catch_90

    :goto_82
    :try_start_82
    sget-object v0, LadX;->a:[I

    sget-object v1, LadT;->c:LadT;

    invoke-virtual {v1}, LadT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8d} :catch_8e

    :goto_8d
    return-void

    :catch_8e
    move-exception v0

    goto :goto_8d

    :catch_90
    move-exception v0

    goto :goto_82

    .line 169
    :catch_92
    move-exception v0

    goto :goto_6e

    :catch_94
    move-exception v0

    goto :goto_62

    :catch_96
    move-exception v0

    goto :goto_56

    :catch_98
    move-exception v0

    goto :goto_4b

    :catch_9a
    move-exception v0

    goto :goto_40

    :catch_9c
    move-exception v0

    goto :goto_35

    :catch_9e
    move-exception v0

    goto :goto_2a

    :catch_a0
    move-exception v0

    goto/16 :goto_1f

    :catch_a3
    move-exception v0

    goto/16 :goto_14
.end method
