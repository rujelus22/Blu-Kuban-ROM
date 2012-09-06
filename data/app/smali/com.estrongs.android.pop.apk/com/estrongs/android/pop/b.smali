.class public Lcom/estrongs/android/pop/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()I
    .registers 1

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x3

    goto :goto_6
.end method
