.class public Lcom/sec/android/app/dlna/view/PopupDialogView;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "PopupDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;,
        Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;
    }
.end annotation


# static fields
.field private static deviceForMultiFiles:Lcom/samsung/api/DeviceItem;


# instance fields
.field private IconHandler:Landroid/os/Handler;

.field private final MAX_CHECKDEVICENAME_LENGTH:I

.field private Ok_Button:Landroid/widget/Button;

.field private PlayerIcon:Landroid/widget/ImageView;

.field private PlayerName:Landroid/widget/TextView;

.field private final SELECTED_DEVICE:Ljava/lang/String;

.field private ServerIcon:Landroid/widget/ImageView;

.field private ServerName:Landroid/widget/TextView;

.field private draw_playericon:Landroid/graphics/drawable/Drawable;

.field private draw_servericon:Landroid/graphics/drawable/Drawable;

.field private final myDevice_player:I

.field private final myDevice_server:I

.field private final other_player_name:I

.field private final other_server_name:I

.field private playerThread:Ljava/lang/Thread;

.field private serverThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dlna/view/PopupDialogView;->deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerIcon:Landroid/widget/ImageView;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerName:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerIcon:Landroid/widget/ImageView;

    .line 49
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerName:Landroid/widget/TextView;

    .line 51
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->Ok_Button:Landroid/widget/Button;

    .line 57
    const/16 v0, 0x320

    iput v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->myDevice_player:I

    .line 59
    const/16 v0, 0x321

    iput v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->myDevice_server:I

    .line 61
    const/16 v0, 0x322

    iput v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->other_server_name:I

    .line 63
    const/16 v0, 0x323

    iput v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->other_player_name:I

    .line 65
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_servericon:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_playericon:Landroid/graphics/drawable/Drawable;

    .line 69
    const-string v0, "Selected.Device"

    iput-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->SELECTED_DEVICE:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/sec/android/app/dlna/view/PopupDialogView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/view/PopupDialogView$1;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->IconHandler:Landroid/os/Handler;

    .line 244
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->MAX_CHECKDEVICENAME_LENGTH:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->IconHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/api/DeviceItem;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/sec/android/app/dlna/view/PopupDialogView;->deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dlna/view/PopupDialogView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->localGetServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_playericon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dlna/view/PopupDialogView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_playericon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_device_icon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_servericon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dlna/view/PopupDialogView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->draw_servericon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dlna/view/PopupDialogView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dlna/view/PopupDialogView;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "name"

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, sublen:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .local v1, sbuf:Ljava/lang/StringBuffer;
    if-nez p1, :cond_b

    .line 250
    const-string v3, ""

    .line 261
    :goto_a
    return-object v3

    .line 251
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_30

    const/16 v3, 0x19

    if-ge v2, v3, :cond_30

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2d

    .line 253
    add-int/lit8 v2, v2, 0x2

    .line 256
    :goto_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 255
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 258
    :cond_30
    const/16 v3, 0x18

    if-le v2, v3, :cond_4b

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4b
    move-object v3, p1

    .line 261
    goto :goto_a
.end method

.method private draw_device_icon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .parameter "iconUri"

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 212
    .local v4, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 213
    .local v2, entity:Lorg/apache/http/HttpEntity;
    const/4 v0, 0x0

    .line 216
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    if-eqz p1, :cond_2c

    .line 217
    :try_start_6
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v6, url:Ljava/net/URL;
    const-string v7, "DLNA_info"

    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 219
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 221
    .local v3, getRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 222
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 223
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 225
    const-string v7, "none"

    invoke-static {v4, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2b} :catch_4d

    move-result-object v1

    .line 230
    .end local v3           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #url:Ljava/net/URL;
    :cond_2c
    if-eqz v2, :cond_31

    .line 231
    :try_start_2e
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 233
    :cond_31
    if-eqz v0, :cond_36

    .line 234
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 236
    :cond_36
    if-eqz v4, :cond_3b

    .line 237
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_5e

    .line 241
    :cond_3b
    :goto_3b
    return-object v1

    .line 229
    :catchall_3c
    move-exception v7

    .line 230
    if-eqz v2, :cond_42

    .line 231
    :try_start_3f
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 233
    :cond_42
    if-eqz v0, :cond_47

    .line 234
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 236
    :cond_47
    if-eqz v4, :cond_4c

    .line 237
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4c} :catch_60

    .line 229
    :cond_4c
    :goto_4c
    throw v7

    .line 227
    :catch_4d
    move-exception v7

    .line 230
    if-eqz v2, :cond_53

    .line 231
    :try_start_50
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 233
    :cond_53
    if-eqz v0, :cond_58

    .line 234
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 236
    :cond_58
    if-eqz v4, :cond_3b

    .line 237
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5d} :catch_5e

    goto :goto_3b

    .line 238
    :catch_5e
    move-exception v7

    goto :goto_3b

    :catch_60
    move-exception v8

    goto :goto_4c
.end method

.method private localGetServerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public notifyActivityEvent(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 304
    packed-switch p1, :pswitch_data_10

    .line 313
    :goto_3
    :pswitch_3
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->notifyActivityEvent(I)V

    .line 314
    return-void

    .line 306
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->finish()V

    goto :goto_3

    .line 310
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->finish()V

    goto :goto_3

    .line 304
    nop

    :pswitch_data_10
    .packed-switch 0x2f2
        :pswitch_b
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->requestWindowFeature(I)Z

    .line 267
    const v1, 0x7f030013

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->setContentView(I)V

    .line 269
    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerName:Landroid/widget/TextView;

    .line 270
    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->PlayerIcon:Landroid/widget/ImageView;

    .line 271
    const v1, 0x7f07006e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerIcon:Landroid/widget/ImageView;

    .line 272
    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->ServerName:Landroid/widget/TextView;

    .line 273
    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/PopupDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->Ok_Button:Landroid/widget/Button;

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/view/PopupDialogView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Selected.Device"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 277
    .local v0, item:Ljava/io/Serializable;
    instance-of v1, v0, Lcom/samsung/api/DeviceItem;

    if-eqz v1, :cond_57

    .line 278
    check-cast v0, Lcom/samsung/api/DeviceItem;

    .end local v0           #item:Ljava/io/Serializable;
    sput-object v0, Lcom/sec/android/app/dlna/view/PopupDialogView;->deviceForMultiFiles:Lcom/samsung/api/DeviceItem;

    .line 281
    :cond_57
    new-instance v1, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/dlna/view/PopupDialogView$ServerIcon;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView;Lcom/sec/android/app/dlna/view/PopupDialogView$1;)V

    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->serverThread:Ljava/lang/Thread;

    .line 282
    new-instance v1, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/dlna/view/PopupDialogView$PlayerIcon;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView;Lcom/sec/android/app/dlna/view/PopupDialogView$1;)V

    iput-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->playerThread:Ljava/lang/Thread;

    .line 284
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->isStarted()Z

    move-result v1

    if-nez v1, :cond_84

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->playerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 296
    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->Ok_Button:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/dlna/view/PopupDialogView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/view/PopupDialogView$2;-><init>(Lcom/sec/android/app/dlna/view/PopupDialogView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void

    .line 288
    :cond_84
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 291
    :cond_93
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-nez v1, :cond_a7

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->isMyPlayerSelected()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 292
    :cond_a7
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/PopupDialogView;->playerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_79
.end method
