.class final synthetic Lnm$1;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnm;
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
    .line 591
    invoke-static {}, Lfd$b;->values()[Lfd$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnm$1;->b:[I

    :try_start_9
    sget-object v0, Lnm$1;->b:[I

    sget-object v1, Lfd$b;->INT:Lfd$b;

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_f9

    :goto_14
    :try_start_14
    sget-object v0, Lnm$1;->b:[I

    sget-object v1, Lfd$b;->BIG_INTEGER:Lfd$b;

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_f6

    :goto_1f
    :try_start_1f
    sget-object v0, Lnm$1;->b:[I

    sget-object v1, Lfd$b;->BIG_DECIMAL:Lfd$b;

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_f3

    :goto_2a
    :try_start_2a
    sget-object v0, Lnm$1;->b:[I

    sget-object v1, Lfd$b;->FLOAT:Lfd$b;

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_f0

    :goto_35
    :try_start_35
    sget-object v0, Lnm$1;->b:[I

    sget-object v1, Lfd$b;->LONG:Lfd$b;

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_ed

    .line 182
    :goto_40
    invoke-static {}, Lfg;->values()[Lfg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnm$1;->a:[I

    :try_start_49
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->START_OBJECT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_ea

    :goto_54
    :try_start_54
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->END_OBJECT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_e7

    :goto_5f
    :try_start_5f
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_e5

    :goto_6a
    :try_start_6a
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->END_ARRAY:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_e3

    :goto_75
    :try_start_75
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_e1

    :goto_80
    :try_start_80
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_df

    :goto_8b
    :try_start_8b
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_dd

    :goto_96
    :try_start_96
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a2} :catch_db

    :goto_a2
    :try_start_a2
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->VALUE_TRUE:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ae} :catch_d9

    :goto_ae
    :try_start_ae
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->VALUE_FALSE:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_ba} :catch_d7

    :goto_ba
    :try_start_ba
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_c6} :catch_d5

    :goto_c6
    :try_start_c6
    sget-object v0, Lnm$1;->a:[I

    sget-object v1, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d2} :catch_d3

    :goto_d2
    return-void

    :catch_d3
    move-exception v0

    goto :goto_d2

    :catch_d5
    move-exception v0

    goto :goto_c6

    :catch_d7
    move-exception v0

    goto :goto_ba

    :catch_d9
    move-exception v0

    goto :goto_ae

    :catch_db
    move-exception v0

    goto :goto_a2

    :catch_dd
    move-exception v0

    goto :goto_96

    :catch_df
    move-exception v0

    goto :goto_8b

    :catch_e1
    move-exception v0

    goto :goto_80

    :catch_e3
    move-exception v0

    goto :goto_75

    :catch_e5
    move-exception v0

    goto :goto_6a

    :catch_e7
    move-exception v0

    goto/16 :goto_5f

    :catch_ea
    move-exception v0

    goto/16 :goto_54

    :catch_ed
    move-exception v0

    goto/16 :goto_40

    :catch_f0
    move-exception v0

    goto/16 :goto_35

    :catch_f3
    move-exception v0

    goto/16 :goto_2a

    :catch_f6
    move-exception v0

    goto/16 :goto_1f

    :catch_f9
    move-exception v0

    goto/16 :goto_14
.end method
