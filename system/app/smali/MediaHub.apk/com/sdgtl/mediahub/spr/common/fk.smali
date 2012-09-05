.class public final Lcom/sdgtl/mediahub/spr/common/fk;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:J

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Lcom/sdgtl/mediahub/spr/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fk;->f:Ljava/lang/String;

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fk;->g:Lcom/sdgtl/mediahub/spr/c/a;

    return-void
.end method

.method public static a()I
    .registers 1

    sget v0, Lcom/sdgtl/mediahub/spr/common/fk;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V
    .registers 17

    if-nez p10, :cond_4d

    invoke-static {p0, p9}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "01"

    invoke-virtual {p8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "03"

    invoke-virtual {p8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_16
    if-eqz v0, :cond_4d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    invoke-direct {v1, p1, p3, p2}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p9, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)Lcom/sdgtl/mediahub/spr/common/a;

    :goto_2a
    return-void

    :cond_2b
    const-string v1, "02"

    invoke-virtual {p8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "04"

    invoke-virtual {p8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_3b
    if-eqz v0, :cond_4d

    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    invoke-direct {v1, p1, p3, p2}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p9, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_2a

    :cond_4d
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fk;->g:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v0, :cond_57

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fk;->g:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_57
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fk;->g:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p1, p2}, Lcom/sdgtl/mediahub/spr/c/a;->c(ILjava/lang/String;)J

    move-result-wide v0

    sput p1, Lcom/sdgtl/mediahub/spr/common/fk;->a:I

    sput-object p3, Lcom/sdgtl/mediahub/spr/common/fk;->b:Ljava/lang/String;

    sput-wide p4, Lcom/sdgtl/mediahub/spr/common/fk;->c:J

    sput-wide p6, Lcom/sdgtl/mediahub/spr/common/fk;->d:J

    sput-object p8, Lcom/sdgtl/mediahub/spr/common/fk;->e:Ljava/lang/String;

    sput-object p2, Lcom/sdgtl/mediahub/spr/common/fk;->f:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/common/fk;->g:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p1, p2}, Lcom/sdgtl/mediahub/spr/c/a;->d(ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_75

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(Z)V

    :cond_75
    :try_start_75
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "url"

    invoke-virtual {v2, v3, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "title_of_movie"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "paused_position"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "MediaHubAPP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "playContent - pausedPosition = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e7

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    const-string v0, "user_guid"

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appId"

    const-string v1, "gtd83co8hu"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "deviceUid"

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "order_id"

    const-string v1, "%011d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_e7
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_107

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/*"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_fc
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ff
    .catch Landroid/content/ActivityNotFoundException; {:try_start_75 .. :try_end_ff} :catch_101

    goto/16 :goto_2a

    :catch_101
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_2a

    :cond_107
    :try_start_107
    invoke-static {p9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/*"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_110
    .catch Landroid/content/ActivityNotFoundException; {:try_start_107 .. :try_end_110} :catch_101

    goto :goto_fc
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const v3, 0x7f0a010d

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "TMB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    :cond_20
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_5d

    const-string v1, "SAMSUNG-SGH-T849"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "SGH-T849"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "SAMSUNG-SGH-T959"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "SGH-T959"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_44
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_52
    const v1, 0x7f0a010e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    :goto_5c
    return-void

    :cond_5d
    const v0, 0x7f0a0110

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_6f
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const v0, 0x7f0a010f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_8d
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_9c
    if-nez p1, :cond_b4

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0a0111

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_5c

    :cond_b4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5c
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()J
    .registers 2

    sget-wide v0, Lcom/sdgtl/mediahub/spr/common/fk;->c:J

    return-wide v0
.end method

.method public static d()J
    .registers 2

    sget-wide v0, Lcom/sdgtl/mediahub/spr/common/fk;->d:J

    return-wide v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fk;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fk;->f:Ljava/lang/String;

    return-object v0
.end method
