.class synthetic Lcom/google/googlenav/appwidget/friends/f;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/appwidget/friends/g;->values()[Lcom/google/googlenav/appwidget/friends/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    :try_start_9
    sget-object v0, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->h:Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_71

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6f

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->b:Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_6d

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->c:Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_6b

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->d:Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_69

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_67

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->f:Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_65

    :goto_56
    :try_start_56
    sget-object v0, Lcom/google/googlenav/appwidget/friends/f;->a:[I

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/friends/g;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_63

    :goto_62
    return-void

    :catch_63
    move-exception v0

    goto :goto_62

    :catch_65
    move-exception v0

    goto :goto_56

    :catch_67
    move-exception v0

    goto :goto_4b

    :catch_69
    move-exception v0

    goto :goto_40

    :catch_6b
    move-exception v0

    goto :goto_35

    :catch_6d
    move-exception v0

    goto :goto_2a

    :catch_6f
    move-exception v0

    goto :goto_1f

    :catch_71
    move-exception v0

    goto :goto_14
.end method
