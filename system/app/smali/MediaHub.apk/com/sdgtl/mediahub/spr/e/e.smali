.class public final Lcom/sdgtl/mediahub/spr/e/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/ec;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/e/b/a/a;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_1f

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MediaHub] responseMediaStore request is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-object v0

    :cond_20
    invoke-static {v1}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_47

    :cond_2e
    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_1f

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MediaHub] responseMediaStore response is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_47
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    goto :goto_1f
.end method

.method public static b(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/cs;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/e/b/a/a;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_1f

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MediaHub] responseCheckTime request is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-object v0

    :cond_20
    invoke-static {v1}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_47

    :cond_2e
    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_1f

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MediaHub] responseCheckTime response is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_47
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->y(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/cs;

    move-result-object v0

    goto :goto_1f
.end method
