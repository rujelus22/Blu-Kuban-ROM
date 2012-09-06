.class synthetic LaB/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1193
    invoke-static {}, LaB/j;->values()[LaB/j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LaB/b;->b:[I

    :try_start_9
    sget-object v0, LaB/b;->b:[I

    sget-object v1, LaB/j;->c:LaB/j;

    invoke-virtual {v1}, LaB/j;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_45

    :goto_14
    :try_start_14
    sget-object v0, LaB/b;->b:[I

    sget-object v1, LaB/j;->b:LaB/j;

    invoke-virtual {v1}, LaB/j;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_43

    .line 1148
    :goto_1f
    invoke-static {}, LaB/c;->values()[LaB/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LaB/b;->a:[I

    :try_start_28
    sget-object v0, LaB/b;->a:[I

    sget-object v1, LaB/c;->a:LaB/c;

    invoke-virtual {v1}, LaB/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_41

    :goto_33
    :try_start_33
    sget-object v0, LaB/b;->a:[I

    sget-object v1, LaB/c;->b:LaB/c;

    invoke-virtual {v1}, LaB/c;->ordinal()I

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

    .line 1193
    :catch_43
    move-exception v0

    goto :goto_1f

    :catch_45
    move-exception v0

    goto :goto_14
.end method
