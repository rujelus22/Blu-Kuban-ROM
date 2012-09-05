.class public Le/q;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LW/a;)Ljava/util/Map;
    .registers 11

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_9
    invoke-virtual {p0, v8}, LW/a;->i(I)I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {p0, v8, v0}, LW/a;->d(II)LW/a;

    move-result-object v4

    invoke-virtual {v4, v8}, LW/a;->g(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    :goto_18
    invoke-virtual {v4, v9}, LW/a;->i(I)I

    move-result v6

    if-ge v2, v6, :cond_2c

    invoke-virtual {v4, v9, v2}, LW/a;->c(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2f
    return-object v3
.end method
