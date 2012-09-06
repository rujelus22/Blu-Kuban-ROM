.class final synthetic Ldbxyzptlk/e/u;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 142
    invoke-static {}, Ldbxyzptlk/e/w;->values()[Ldbxyzptlk/e/w;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldbxyzptlk/e/u;->a:[I

    :try_start_9
    sget-object v0, Ldbxyzptlk/e/u;->a:[I

    sget-object v1, Ldbxyzptlk/e/w;->a:Ldbxyzptlk/e/w;

    invoke-virtual {v1}, Ldbxyzptlk/e/w;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Ldbxyzptlk/e/u;->a:[I

    sget-object v1, Ldbxyzptlk/e/w;->b:Ldbxyzptlk/e/w;

    invoke-virtual {v1}, Ldbxyzptlk/e/w;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
