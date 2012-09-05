.class final synthetic Lih$1;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1030
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 538
    invoke-static {}, Lfd$b;->values()[Lfd$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lih$1;->b:[I

    :try_start_9
    sget-object v0, Lih$1;->b:[I

    sget-object v1, Lfd$b;->INT:Lfd$b;

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_a3

    :goto_14
    :try_start_14
    sget-object v0, Lih$1;->b:[I

    sget-object v1, Lfd$b;->LONG:Lfd$b;

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_a0

    .line 353
    :goto_1f
    invoke-static {}, Lfg;->values()[Lfg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lih$1;->a:[I

    :try_start_28
    sget-object v0, Lih$1;->a:[I

    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_9e

    :goto_33
    :try_start_33
    sget-object v0, Lih$1;->a:[I

    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_9c

    :goto_3e
    :try_start_3e
    sget-object v0, Lih$1;->a:[I

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_9a

    :goto_49
    :try_start_49
    sget-object v0, Lih$1;->a:[I

    sget-object v1, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_98

    :goto_54
    :try_start_54
    sget-object v0, Lih$1;->a:[I

    sget-object v1, Lfg;->VALUE_TRUE:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_96

    :goto_5f
    :try_start_5f
    sget-object v0, Lih$1;->a:[I

    sget-object v1, Lfg;->VALUE_FALSE:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_94

    :goto_6a
    :try_start_6a
    sget-object v0, Lih$1;->a:[I

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_92

    :goto_75
    :try_start_75
    sget-object v0, Lih$1;->a:[I

    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_81} :catch_90

    :goto_81
    :try_start_81
    sget-object v0, Lih$1;->a:[I

    sget-object v1, Lfg;->END_OBJECT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8d} :catch_8e

    :goto_8d
    return-void

    :catch_8e
    move-exception v0

    goto :goto_8d

    :catch_90
    move-exception v0

    goto :goto_81

    :catch_92
    move-exception v0

    goto :goto_75

    :catch_94
    move-exception v0

    goto :goto_6a

    :catch_96
    move-exception v0

    goto :goto_5f

    :catch_98
    move-exception v0

    goto :goto_54

    :catch_9a
    move-exception v0

    goto :goto_49

    :catch_9c
    move-exception v0

    goto :goto_3e

    :catch_9e
    move-exception v0

    goto :goto_33

    :catch_a0
    move-exception v0

    goto/16 :goto_1f

    :catch_a3
    move-exception v0

    goto/16 :goto_14
.end method
