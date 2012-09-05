.class synthetic LaP/b;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, LaP/j;->values()[LaP/j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LaP/b;->b:[I

    :try_start_9
    sget-object v0, LaP/b;->b:[I

    sget-object v1, LaP/j;->c:LaP/j;

    invoke-virtual {v1}, LaP/j;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_45

    :goto_14
    :try_start_14
    sget-object v0, LaP/b;->b:[I

    sget-object v1, LaP/j;->b:LaP/j;

    invoke-virtual {v1}, LaP/j;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_43

    :goto_1f
    invoke-static {}, LaP/c;->values()[LaP/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LaP/b;->a:[I

    :try_start_28
    sget-object v0, LaP/b;->a:[I

    sget-object v1, LaP/c;->a:LaP/c;

    invoke-virtual {v1}, LaP/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_41

    :goto_33
    :try_start_33
    sget-object v0, LaP/b;->a:[I

    sget-object v1, LaP/c;->b:LaP/c;

    invoke-virtual {v1}, LaP/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    goto :goto_3e

    :catch_41
    move-exception v0

    goto :goto_33

    :catch_43
    move-exception v0

    goto :goto_1f

    :catch_45
    move-exception v0

    goto :goto_14
.end method
