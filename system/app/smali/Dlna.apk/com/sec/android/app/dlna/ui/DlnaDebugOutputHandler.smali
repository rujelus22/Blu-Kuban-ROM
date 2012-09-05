.class public Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;
.super Ljava/lang/Object;
.source "DlnaDebugOutputHandler.java"

# interfaces
.implements Lcom/samsung/util/DebugOutputHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 14
    if-nez p1, :cond_4

    .line 15
    const-string p1, "DLNA"

    .line 16
    :cond_4
    if-nez p2, :cond_8

    .line 17
    const-string p2, "null msg "

    .line 19
    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 23
    :goto_b
    return-void

    .line 20
    :catch_c
    move-exception v0

    .line 21
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 26
    if-nez p1, :cond_4

    .line 27
    const-string p1, "DLNA"

    .line 28
    :cond_4
    if-nez p2, :cond_8

    .line 29
    const-string p2, "null msg "

    .line 31
    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 35
    :goto_b
    return-void

    .line 32
    :catch_c
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 38
    if-nez p1, :cond_4

    .line 39
    const-string p1, "DLNA"

    .line 40
    :cond_4
    if-nez p2, :cond_8

    .line 41
    const-string p2, "null msg "

    .line 43
    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 47
    :goto_b
    return-void

    .line 44
    :catch_c
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 50
    if-nez p1, :cond_4

    .line 51
    const-string p1, "DLNA"

    .line 52
    :cond_4
    if-nez p2, :cond_8

    .line 53
    const-string p2, "null msg "

    .line 55
    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 59
    :goto_b
    return-void

    .line 56
    :catch_c
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
