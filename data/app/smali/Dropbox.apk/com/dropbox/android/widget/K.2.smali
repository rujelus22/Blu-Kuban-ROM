.class final synthetic Lcom/dropbox/android/widget/K;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 988
    invoke-static {}, Lcom/dropbox/android/taskqueue/P;->values()[Lcom/dropbox/android/taskqueue/P;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/android/widget/K;->b:[I

    :try_start_9
    sget-object v0, Lcom/dropbox/android/widget/K;->b:[I

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->b:Lcom/dropbox/android/taskqueue/P;

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_ca

    :goto_14
    :try_start_14
    sget-object v0, Lcom/dropbox/android/widget/K;->b:[I

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->a:Lcom/dropbox/android/taskqueue/P;

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_c7

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/dropbox/android/widget/K;->b:[I

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->c:Lcom/dropbox/android/taskqueue/P;

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_c4

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/dropbox/android/widget/K;->b:[I

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->e:Lcom/dropbox/android/taskqueue/P;

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_c1

    :goto_35
    :try_start_35
    sget-object v0, Lcom/dropbox/android/widget/K;->b:[I

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->h:Lcom/dropbox/android/taskqueue/P;

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_bf

    :goto_40
    :try_start_40
    sget-object v0, Lcom/dropbox/android/widget/K;->b:[I

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->g:Lcom/dropbox/android/taskqueue/P;

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_bd

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/dropbox/android/widget/K;->b:[I

    sget-object v1, Lcom/dropbox/android/taskqueue/P;->d:Lcom/dropbox/android/taskqueue/P;

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_bb

    .line 325
    :goto_56
    invoke-static {}, Lcom/dropbox/android/widget/S;->values()[Lcom/dropbox/android/widget/S;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/android/widget/K;->a:[I

    :try_start_5f
    sget-object v0, Lcom/dropbox/android/widget/K;->a:[I

    sget-object v1, Lcom/dropbox/android/widget/S;->c:Lcom/dropbox/android/widget/S;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_b9

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/dropbox/android/widget/K;->a:[I

    sget-object v1, Lcom/dropbox/android/widget/S;->a:Lcom/dropbox/android/widget/S;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_b7

    :goto_75
    :try_start_75
    sget-object v0, Lcom/dropbox/android/widget/K;->a:[I

    sget-object v1, Lcom/dropbox/android/widget/S;->b:Lcom/dropbox/android/widget/S;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_b5

    :goto_80
    :try_start_80
    sget-object v0, Lcom/dropbox/android/widget/K;->a:[I

    sget-object v1, Lcom/dropbox/android/widget/S;->d:Lcom/dropbox/android/widget/S;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_b3

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/dropbox/android/widget/K;->a:[I

    sget-object v1, Lcom/dropbox/android/widget/S;->g:Lcom/dropbox/android/widget/S;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_b1

    :goto_96
    :try_start_96
    sget-object v0, Lcom/dropbox/android/widget/K;->a:[I

    sget-object v1, Lcom/dropbox/android/widget/S;->f:Lcom/dropbox/android/widget/S;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a1} :catch_af

    :goto_a1
    :try_start_a1
    sget-object v0, Lcom/dropbox/android/widget/K;->a:[I

    sget-object v1, Lcom/dropbox/android/widget/S;->e:Lcom/dropbox/android/widget/S;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ac} :catch_ad

    :goto_ac
    return-void

    :catch_ad
    move-exception v0

    goto :goto_ac

    :catch_af
    move-exception v0

    goto :goto_a1

    :catch_b1
    move-exception v0

    goto :goto_96

    :catch_b3
    move-exception v0

    goto :goto_8b

    :catch_b5
    move-exception v0

    goto :goto_80

    :catch_b7
    move-exception v0

    goto :goto_75

    :catch_b9
    move-exception v0

    goto :goto_6a

    .line 988
    :catch_bb
    move-exception v0

    goto :goto_56

    :catch_bd
    move-exception v0

    goto :goto_4b

    :catch_bf
    move-exception v0

    goto :goto_40

    :catch_c1
    move-exception v0

    goto/16 :goto_35

    :catch_c4
    move-exception v0

    goto/16 :goto_2a

    :catch_c7
    move-exception v0

    goto/16 :goto_1f

    :catch_ca
    move-exception v0

    goto/16 :goto_14
.end method
