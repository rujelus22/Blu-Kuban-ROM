.class public final Lcom/sdgtl/mediahub/spr/contentProvider/k;
.super Ljava/lang/Thread;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

.field private c:Landroid/os/Handler;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sput-object p1, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->d:Z

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_17

    const-string v0, "EN"

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/df;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/df;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/df;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/df;->a:Ljava/lang/String;

    goto :goto_16

    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->d:Z

    return-void
.end method

.method public final run()V
    .registers 13

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->c:Landroid/os/Bundle;

    const-string v0, "req_message"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->d:Z

    if-nez v0, :cond_3b

    :try_start_14
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    packed-switch v0, :pswitch_data_13fe

    :cond_28
    :goto_28
    :pswitch_28
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    packed-switch v0, :pswitch_data_142c

    :pswitch_2f
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3b
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_14 .. :try_end_3b} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_3b} :catch_148
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_3b} :catch_16a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3b} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_3b} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_3b} :catch_310
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_3cb

    :cond_3b
    :goto_3b
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->d:Z

    if-eqz v0, :cond_13fb

    const/4 v0, -0x1

    :goto_45
    iput v0, v2, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_50
    :try_start_50
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_58
    :goto_58
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(I)V
    :try_end_63
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_50 .. :try_end_63} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_50 .. :try_end_63} :catch_148
    .catch Ljava/net/UnknownHostException; {:try_start_50 .. :try_end_63} :catch_16a
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_63} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_63} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_63} :catch_310
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_63} :catch_3cb

    goto :goto_28

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/r;->printStackTrace()V

    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "retry_carrire_billing"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3b

    :pswitch_7f
    :try_start_7f
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    sget-object v3, Lcom/sdgtl/mediahub/spr/ar;->y:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v0, v3, :cond_58

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    sget-object v3, Lcom/sdgtl/mediahub/spr/ar;->z:Lcom/sdgtl/mediahub/spr/ar;

    if-ne v0, v3, :cond_28

    goto :goto_58

    :pswitch_98
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/e;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    if-eqz v0, :cond_140

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/ec;->a:I

    if-nez v2, :cond_140

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ec;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    sget-object v3, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v3

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/ec;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/lang/String;)V

    :goto_d9
    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->g:I

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(I)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->e(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->s(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->p:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ec;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r(Ljava/lang/String;)V

    :cond_140
    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_146
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_7f .. :try_end_146} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_7f .. :try_end_146} :catch_148
    .catch Ljava/net/UnknownHostException; {:try_start_7f .. :try_end_146} :catch_16a
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_146} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_146} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_7f .. :try_end_146} :catch_310
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_146} :catch_3cb

    goto/16 :goto_3b

    :catch_148
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "retry_carrire_billing"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :cond_15d
    :try_start_15d
    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ec;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/lang/String;)V
    :try_end_168
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_15d .. :try_end_168} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_15d .. :try_end_168} :catch_148
    .catch Ljava/net/UnknownHostException; {:try_start_15d .. :try_end_168} :catch_16a
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_168} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_15d .. :try_end_168} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_15d .. :try_end_168} :catch_310
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_168} :catch_3cb

    goto/16 :goto_d9

    :catch_16a
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_msg"

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    const v3, 0x7f0a011a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retry_carrire_billing"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_193
    :try_start_193
    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v0

    if-eqz v0, :cond_1c4

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->a:I

    if-nez v2, :cond_1c4

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/dg;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->q(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/dg;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/dg;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h(Ljava/lang/String;)V

    :cond_1c4
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1d1
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_193 .. :try_end_1d1} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_193 .. :try_end_1d1} :catch_148
    .catch Ljava/net/UnknownHostException; {:try_start_193 .. :try_end_1d1} :catch_16a
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_1d1} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_193 .. :try_end_1d1} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_193 .. :try_end_1d1} :catch_310
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1d1} :catch_3cb

    goto/16 :goto_3b

    :catch_1d3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "retry_carrire_billing"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13e5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13e5

    const-string v0, "error_code"

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_msg"

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    :pswitch_219
    if-eqz v2, :cond_302

    :try_start_21b
    const-string v0, "eula_typeCode"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/common/eula?access_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&shopId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&channelId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&typeCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&languageCode="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "eula"

    const/4 v6, 0x0

    invoke-static {v5, v0, v4, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    if-nez v0, :cond_2d5

    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_29f

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseMediaHubEula request is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29f
    const/4 v0, 0x0

    :goto_2a0
    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2a9
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_21b .. :try_end_2a9} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_21b .. :try_end_2a9} :catch_148
    .catch Ljava/net/UnknownHostException; {:try_start_21b .. :try_end_2a9} :catch_16a
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_2a9} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_21b .. :try_end_2a9} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_21b .. :try_end_2a9} :catch_310
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_2a9} :catch_3cb

    goto/16 :goto_3b

    :catch_2ab
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_msg"

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    const v3, 0x7f0a011a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retry_carrire_billing"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :cond_2d5
    :try_start_2d5
    invoke-static {v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e3

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2fd

    :cond_2e3
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_2fb

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseMediaHubEula response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2fb
    const/4 v0, 0x0

    goto :goto_2a0

    :cond_2fd
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->b(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dh;

    move-result-object v0

    goto :goto_2a0

    :cond_302
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_30e
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_2d5 .. :try_end_30e} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_2d5 .. :try_end_30e} :catch_148
    .catch Ljava/net/UnknownHostException; {:try_start_2d5 .. :try_end_30e} :catch_16a
    .catch Ljava/io/IOException; {:try_start_2d5 .. :try_end_30e} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_2d5 .. :try_end_30e} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_2d5 .. :try_end_30e} :catch_310
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_30e} :catch_3cb

    goto/16 :goto_3b

    :catch_310
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_msg"

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retry_carrire_billing"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_339
    if-eqz v2, :cond_421

    :try_start_33b
    const-string v0, "screen_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/common/help?access_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&shopId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&channelId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&screenId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&languageCode="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "help"

    const/4 v6, 0x0

    invoke-static {v5, v0, v4, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    if-nez v0, :cond_3f4

    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_3bf

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseHelp request is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3bf
    const/4 v0, 0x0

    :goto_3c0
    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3c9
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_33b .. :try_end_3c9} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_33b .. :try_end_3c9} :catch_148
    .catch Ljava/net/UnknownHostException; {:try_start_33b .. :try_end_3c9} :catch_16a
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_3c9} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_33b .. :try_end_3c9} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_33b .. :try_end_3c9} :catch_310
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_3c9} :catch_3cb

    goto/16 :goto_3b

    :catch_3cb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_msg"

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    const v3, 0x7f0a011a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retry_carrire_billing"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :cond_3f4
    :try_start_3f4
    invoke-static {v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_402

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_41c

    :cond_402
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_41a

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseHelp response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41a
    const/4 v0, 0x0

    goto :goto_3c0

    :cond_41c
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->d(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dc;

    move-result-object v0

    goto :goto_3c0

    :cond_421
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_42f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/e/c;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :pswitch_44b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/common/banner?access_token="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&shopId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&channelId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&ratingLevel="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&languageCode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4dc

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4dc

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&deviceUid="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4dc
    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_509

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_509

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&userId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_509
    const-string v6, "banner"

    const/4 v7, 0x0

    invoke-static {v6, v0, v5, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    if-nez v0, :cond_535

    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_529

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseBanner request is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_529
    const/4 v0, 0x0

    :goto_52a
    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_535
    invoke-static {v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_543

    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_55d

    :cond_543
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_55b

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseBanner response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55b
    const/4 v0, 0x0

    goto :goto_52a

    :cond_55d
    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sdgtl/mediahub/spr/common/dx;

    move-result-object v0

    goto :goto_52a

    :pswitch_563
    if-eqz v2, :cond_630

    const-string v0, "product_Type_Code"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/categories?access_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&shopId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&channelId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&productTypeCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&ratingLevel="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&languageCode="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "categories"

    const/4 v6, 0x0

    invoke-static {v5, v0, v4, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    if-nez v0, :cond_603

    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_5f7

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseCategoryList request is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f7
    const/4 v0, 0x0

    :goto_5f8
    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_603
    invoke-static {v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_611

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_62b

    :cond_611
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_629

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseCategoryList response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_629
    const/4 v0, 0x0

    goto :goto_5f8

    :cond_62b
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->e(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ej;

    move-result-object v0

    goto :goto_5f8

    :cond_630
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_63e
    if-eqz v2, :cond_751

    const-string v0, "productsRequest_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/category/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/products?access_token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&shopId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&channelId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&deviceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&categoryType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&ratingLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&languageCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&startNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&endNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sort="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "products"

    const/4 v7, 0x0

    invoke-static {v6, v0, v5, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    if-nez v0, :cond_722

    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_716

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseCategoryProducts request is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_716
    const/4 v0, 0x0

    :goto_717
    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_722
    invoke-static {v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_730

    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_74a

    :cond_730
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_748

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseCategoryProducts response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_748
    const/4 v0, 0x0

    goto :goto_717

    :cond_74a
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    goto :goto_717

    :cond_751
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_75f
    if-eqz v2, :cond_884

    const-string v0, "product_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/product/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "?access_token="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&shopId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&channelId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&deviceId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&ratingLevel="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&languageCode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_80a

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_80a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&userId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_80a
    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_82b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&deviceUid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_82b
    const-string v4, "product"

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    if-nez v0, :cond_857

    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_84b

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseProducts request is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84b
    const/4 v0, 0x0

    :goto_84c
    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_857
    invoke-static {v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_865

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_87f

    :cond_865
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_87d

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseProducts response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87d
    const/4 v0, 0x0

    goto :goto_84c

    :cond_87f
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->f(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    goto :goto_84c

    :cond_884
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_892
    if-eqz v2, :cond_993

    const-string v0, "category_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "start_num"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "end_num"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v4, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v6, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    sget-object v7, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/category/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/featured?access_token="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "&shopId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "&channelId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "&deviceId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "&ratingLevel="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "&languageCode="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "&startNum="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&endNum="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "featured"

    const/4 v3, 0x0

    invoke-static {v2, v0, v7, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    if-nez v0, :cond_964

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_958

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseCategoryFeatured request is : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_958
    const/4 v0, 0x0

    :goto_959
    invoke-static {v4, v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_964
    invoke-static {v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_972

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_98c

    :cond_972
    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_98a

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseCategoryFeatured response is : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98a
    const/4 v0, 0x0

    goto :goto_959

    :cond_98c
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v0, v2, v3}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    goto :goto_959

    :cond_993
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_9a1
    if-eqz v2, :cond_bbc

    const-string v0, "search_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const v8, 0xea60

    invoke-static {v7, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const v8, 0xea60

    invoke-static {v7, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/products/method/search"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "access_token"

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "shopId"

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "channelId"

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "deviceId"

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "productTypeCode"

    iget-object v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "keyword"

    iget-object v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "sort"

    iget-object v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "searchType"

    iget-object v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "ratingLevel"

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "languageCode"

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "startNum"

    iget v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "endNum"

    iget v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v9, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v9, :cond_b5f

    new-instance v9, Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/products/method/search;access_token = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";shopId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";channelId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";deviceId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";productTypeCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";keyword = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";sort = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";searchType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";ratingLevel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";languageCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";startNum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";endNum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "search"

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    invoke-static {v10, v9, v5, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    :cond_b5f
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v0, v8, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {}, Lcom/a/a/a/a/b/f;->a()Lcom/a/a/a/a/b/f;

    invoke-static {}, Lcom/a/a/a/a/b/f;->d()Lorg/apache/http/message/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b91

    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_bb5

    :cond_b91
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_ba9

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseSearchResult response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba9
    const/4 v0, 0x0

    :goto_baa
    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_bb5
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    goto :goto_baa

    :cond_bbc
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_bca
    if-eqz v2, :cond_cb5

    const-string v0, "product_Type_Code"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "end_num"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/products/all?access_token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&shopId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&channelId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&deviceId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&productTypeCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&ratingLevel="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&languageCode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "&endNum="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "products/all"

    const/4 v6, 0x0

    invoke-static {v2, v0, v5, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    if-nez v0, :cond_c88

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_c7c

    const-string v2, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseProductAll request is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7c
    const/4 v0, 0x0

    :goto_c7d
    invoke-static {v3, v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_c88
    invoke-static {v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c96

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_cb0

    :cond_c96
    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_cae

    const-string v2, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseProductAll response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cae
    const/4 v0, 0x0

    goto :goto_c7d

    :cond_cb0
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->g(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dq;

    move-result-object v0

    goto :goto_c7d

    :cond_cb5
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_cc3
    if-eqz v2, :cond_d10

    const-string v0, "search_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/e/b/b/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ce7

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_d0b

    :cond_ce7
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_cff

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseOspSearchResult response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cff
    const/4 v0, 0x0

    :goto_d00
    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_d0b
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->h(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    goto :goto_d00

    :cond_d10
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_d1e
    if-eqz v2, :cond_ee2

    const-string v0, "user_token"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const v5, 0xea60

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const v5, 0xea60

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/member/method/signIn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "access_token"

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "shopId"

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "channelId"

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "deviceId"

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "user_token"

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "deviceUid"

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "languageCode"

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v6, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v6, :cond_e3f

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/member/method/signIn;access_token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";shopId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";channelId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";deviceId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";user_token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";deviceUid = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";languageCode = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "signIn"

    const/4 v7, 0x0

    invoke-static {v6, v0, v2, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)V

    :cond_e3f
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {}, Lcom/a/a/a/a/b/f;->a()Lcom/a/a/a/a/b/f;

    invoke-static {}, Lcom/a/a/a/a/b/f;->d()Lorg/apache/http/message/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/message/HeaderGroup;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e6f

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_edd

    :cond_e6f
    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_e87

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MediaHub] responseSignIn response is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e87
    const/4 v0, 0x0

    :goto_e88
    if-eqz v0, :cond_ece

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/ei;->a:I

    if-nez v2, :cond_ece

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ei;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->m(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/ei;->d:I

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b(I)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ei;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->o(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ei;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->p(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ei;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/util/ArrayList;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    const-string v3, "hd_available_device"

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/ei;->g:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ece
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_edd
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->k(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v0

    goto :goto_e88

    :cond_ee2
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_ef0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/b/b/a;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f08

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_f2c

    :cond_f08
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v4, :cond_f20

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[MediaHub] responseCheckNewEpisode response is : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f20
    const/4 v0, 0x0

    :goto_f21
    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_f2c
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->l(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dk;

    move-result-object v0

    goto :goto_f21

    :pswitch_f31
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :pswitch_f4a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/b;->b(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :pswitch_f63
    if-eqz v2, :cond_f86

    const-string v0, "card_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;)Lcom/sdgtl/mediahub/spr/common/eg;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_f86
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_f94
    if-eqz v2, :cond_fbb

    const-string v0, "card_nick_name"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "user_payment_method_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;I)Lcom/sdgtl/mediahub/spr/common/eg;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_fbb
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_fc9
    if-eqz v2, :cond_ff6

    const-string v0, "redeem_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "product_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "price_type_code"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v4, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v6, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v6

    invoke-static {v6, v0, v3, v2}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;ILjava/lang/String;)Lcom/sdgtl/mediahub/spr/common/eg;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_ff6
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_1004
    if-eqz v2, :cond_1025

    const-string v0, "user_payment_method_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;I)Lcom/sdgtl/mediahub/spr/common/eg;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_1025
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_1033
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/b;->c(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/ep;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :pswitch_104c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/b;->d(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/eg;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :pswitch_1065
    if-eqz v2, :cond_1092

    const-string v0, "device_uid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "device_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_nickname"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v4, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v6, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v6

    invoke-static {v6, v0, v3, v2}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/eg;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_1092
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_10a0
    if-eqz v2, :cond_10c7

    const-string v0, "domain_method"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "domain_userid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lcom/sdgtl/mediahub/spr/e/b;->b(Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_10c7
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_10d5
    if-eqz v2, :cond_110d

    const-string v0, "delete_device_uid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "old_user_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ef;

    move-result-object v0

    if-eqz v0, :cond_10fe

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/ef;->a:I

    if-nez v2, :cond_10fe

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ef;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/util/ArrayList;)V

    :cond_10fe
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_110d
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_111b
    if-eqz v2, :cond_1142

    const-string v0, "product_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "price_type_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lcom/sdgtl/mediahub/spr/e/f;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;ILjava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_1142
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_1150
    if-eqz v2, :cond_1173

    const-string v0, "purchaseRequest_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/e/f;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_1173
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_1181
    if-eqz v2, :cond_11d2

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/cy;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/cy;-><init>()V

    const-string v3, "order_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/cy;->c:J

    const-string v3, "order_Item_Id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/cy;->d:J

    const-string v3, "product_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/cy;->a:I

    const-string v3, "video_attr_type_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cy;->b:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/e/f;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Lcom/sdgtl/mediahub/spr/common/cy;)Lcom/sdgtl/mediahub/spr/common/ds;

    move-result-object v0

    if-eqz v0, :cond_11c3

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->a:I

    if-nez v2, :cond_11c3

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ds;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n(Ljava/lang/String;)V

    :cond_11c3
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_11d2
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_11e0
    if-eqz v2, :cond_1203

    const-string v0, "purchaseRequest_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;)Lcom/sdgtl/mediahub/spr/common/de;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_1203
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_1211
    if-eqz v2, :cond_1238

    const-string v0, "order_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "directBilling_init_token"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v5, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-static {v2, v3, v4, v0}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;JLjava/lang/String;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_1238
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_1246
    if-eqz v2, :cond_126f

    const-string v0, "start_num"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "end_num"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;II)Lcom/sdgtl/mediahub/spr/common/et;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_126f
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_127d
    if-eqz v2, :cond_129e

    const-string v0, "order_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/sdgtl/mediahub/spr/e/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;J)Lcom/sdgtl/mediahub/spr/common/es;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_129e
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_12ac
    const-string v0, ""

    if-eqz v2, :cond_12b6

    const-string v0, "group_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12b6
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/e/f;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dj;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :pswitch_12cf
    if-eqz v2, :cond_1306

    const-string v0, "archive_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_12f8

    const-string v3, "archive_cmd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lcom/sdgtl/mediahub/spr/e/f;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/eg;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_12f8
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :cond_1306
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_1314
    if-eqz v2, :cond_1337

    const-string v0, "register_first_play_expiration_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/e/f;->a(Lcom/sdgtl/mediahub/spr/contentProvider/a;Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;)Lcom/sdgtl/mediahub/spr/common/eg;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_1337
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_1345
    if-eqz v2, :cond_1360

    const-string v0, "auth_code"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a;->a(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/cm;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_1360
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_136e
    if-eqz v2, :cond_138e

    const-string v0, "refresh_Token"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/a;->b(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/cm;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_138e
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_139c
    if-eqz v2, :cond_13be

    const-string v0, "directBilling_auth_url"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    sget-object v5, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/e/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3b

    :cond_13be
    const-string v0, "response_msg"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3b

    :pswitch_13cc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->b:Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/e/e;->b(Lcom/sdgtl/mediahub/spr/contentProvider/a;)Lcom/sdgtl/mediahub/spr/common/cs;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(JLjava/lang/Object;)Z

    const-string v0, "response_msg"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_13e3
    .catch Lcom/sdgtl/mediahub/spr/contentProvider/r; {:try_start_3f4 .. :try_end_13e3} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_3f4 .. :try_end_13e3} :catch_148
    .catch Ljava/net/UnknownHostException; {:try_start_3f4 .. :try_end_13e3} :catch_16a
    .catch Ljava/io/IOException; {:try_start_3f4 .. :try_end_13e3} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_3f4 .. :try_end_13e3} :catch_2ab
    .catch Ljava/lang/IllegalStateException; {:try_start_3f4 .. :try_end_13e3} :catch_310
    .catch Ljava/lang/Exception; {:try_start_3f4 .. :try_end_13e3} :catch_3cb

    goto/16 :goto_3b

    :cond_13e5
    const-string v0, "error_code"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "error_msg"

    sget-object v2, Lcom/sdgtl/mediahub/spr/contentProvider/k;->a:Landroid/content/Context;

    const v3, 0x7f0a011a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_13fb
    const/4 v0, 0x0

    goto/16 :goto_45

    :pswitch_data_13fe
    .packed-switch 0x10
        :pswitch_50
        :pswitch_28
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_28
        :pswitch_50
        :pswitch_28
        :pswitch_50
        :pswitch_28
        :pswitch_50
        :pswitch_50
        :pswitch_28
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_7f
        :pswitch_50
        :pswitch_50
    .end packed-switch

    :pswitch_data_142c
    .packed-switch 0x1
        :pswitch_98
        :pswitch_193
        :pswitch_219
        :pswitch_339
        :pswitch_42f
        :pswitch_44b
        :pswitch_563
        :pswitch_63e
        :pswitch_75f
        :pswitch_892
        :pswitch_9a1
        :pswitch_bca
        :pswitch_cc3
        :pswitch_d1e
        :pswitch_ef0
        :pswitch_f31
        :pswitch_f4a
        :pswitch_f63
        :pswitch_f94
        :pswitch_fc9
        :pswitch_1004
        :pswitch_1033
        :pswitch_104c
        :pswitch_1065
        :pswitch_10a0
        :pswitch_10d5
        :pswitch_2f
        :pswitch_111b
        :pswitch_1150
        :pswitch_1181
        :pswitch_11e0
        :pswitch_1211
        :pswitch_1246
        :pswitch_127d
        :pswitch_12ac
        :pswitch_12cf
        :pswitch_1314
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_1345
        :pswitch_136e
        :pswitch_139c
        :pswitch_13cc
    .end packed-switch
.end method
