.class final Lcom/mobfox/video/sdk/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobfox/video/sdk/bt;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/ak;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 9

    const/4 v6, 0x3

    const-string v0, "MOBFOX"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "###########TRACKING TIME VIDEO:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Lcom/mobfox/video/sdk/ak;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->i(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    iget-object v0, v0, Lcom/mobfox/video/sdk/cs;->z:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_39

    const/4 v1, 0x0

    move v2, v1

    :goto_33
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v2, v1, :cond_3a

    :cond_39
    return-void

    :cond_3a
    const-string v1, "MOBFOX"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v3, "MOBFOX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "Track url:"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    new-instance v3, Lcom/mobfox/video/sdk/cm;

    invoke-direct {v3}, Lcom/mobfox/video/sdk/cm;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/mobfox/video/sdk/cm;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/mobfox/video/sdk/cm;->b:J

    invoke-static {v3}, Lcom/mobfox/video/sdk/co;->a(Lcom/mobfox/video/sdk/cm;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_33
.end method
