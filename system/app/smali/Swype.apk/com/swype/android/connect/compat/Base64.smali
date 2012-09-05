.class public Lcom/swype/android/connect/compat/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .registers 3
    .parameter "raw"

    .prologue
    const/4 v1, 0x0

    .line 19
    if-eqz p0, :cond_12

    .line 21
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    .line 30
    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    .line 24
    :try_start_a
    invoke-static {p0}, Lcom/swype/android/connect/compat/CompatBase64;->decode(Ljava/lang/String;)[B
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_8

    .line 26
    :catch_f
    move-exception v0

    move-object v0, v1

    goto :goto_8

    :cond_12
    move-object v0, v1

    .line 30
    goto :goto_8
.end method

.method public static final encodeToString([B)Ljava/lang/String;
    .registers 2
    .parameter "raw"

    .prologue
    .line 8
    if-eqz p0, :cond_e

    .line 10
    const/4 v0, 0x0

    :try_start_3
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    .line 15
    :goto_7
    return-object v0

    .line 12
    :catch_8
    move-exception v0

    invoke-static {p0}, Lcom/swype/android/connect/compat/CompatBase64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 15
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method
