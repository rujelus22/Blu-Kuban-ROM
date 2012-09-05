.class synthetic LF/H;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, LF/D;->values()[LF/D;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LF/H;->c:[I

    :try_start_9
    sget-object v0, LF/H;->c:[I

    sget-object v1, LF/D;->b:LF/D;

    invoke-virtual {v1}, LF/D;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_8f

    :goto_14
    :try_start_14
    sget-object v0, LF/H;->c:[I

    sget-object v1, LF/D;->a:LF/D;

    invoke-virtual {v1}, LF/D;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_8d

    :goto_1f
    invoke-static {}, LF/S;->values()[LF/S;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LF/H;->b:[I

    :try_start_28
    sget-object v0, LF/H;->b:[I

    sget-object v1, LF/S;->a:LF/S;

    invoke-virtual {v1}, LF/S;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_8b

    :goto_33
    :try_start_33
    sget-object v0, LF/H;->b:[I

    sget-object v1, LF/S;->b:LF/S;

    invoke-virtual {v1}, LF/S;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_89

    :goto_3e
    invoke-static {}, Lbc/q;->values()[Lbc/q;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LF/H;->a:[I

    :try_start_47
    sget-object v0, LF/H;->a:[I

    sget-object v1, Lbc/q;->a:Lbc/q;

    invoke-virtual {v1}, Lbc/q;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_52} :catch_87

    :goto_52
    :try_start_52
    sget-object v0, LF/H;->a:[I

    sget-object v1, Lbc/q;->c:Lbc/q;

    invoke-virtual {v1}, Lbc/q;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5d} :catch_85

    :goto_5d
    :try_start_5d
    sget-object v0, LF/H;->a:[I

    sget-object v1, Lbc/q;->b:Lbc/q;

    invoke-virtual {v1}, Lbc/q;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_83

    :goto_68
    :try_start_68
    sget-object v0, LF/H;->a:[I

    sget-object v1, Lbc/q;->d:Lbc/q;

    invoke-virtual {v1}, Lbc/q;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_81

    :goto_73
    :try_start_73
    sget-object v0, LF/H;->a:[I

    sget-object v1, Lbc/q;->e:Lbc/q;

    invoke-virtual {v1}, Lbc/q;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_7f

    :goto_7e
    return-void

    :catch_7f
    move-exception v0

    goto :goto_7e

    :catch_81
    move-exception v0

    goto :goto_73

    :catch_83
    move-exception v0

    goto :goto_68

    :catch_85
    move-exception v0

    goto :goto_5d

    :catch_87
    move-exception v0

    goto :goto_52

    :catch_89
    move-exception v0

    goto :goto_3e

    :catch_8b
    move-exception v0

    goto :goto_33

    :catch_8d
    move-exception v0

    goto :goto_1f

    :catch_8f
    move-exception v0

    goto :goto_14
.end method
