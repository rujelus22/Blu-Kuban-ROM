.class public Lcom/sprint/dsa/data/InfoItem;
.super Ljava/lang/Object;
.source "InfoItem.java"


# static fields
.field public static final ACTION_FUNCTION:Ljava/lang/String; = "function"

.field public static final ACTION_WEB:Ljava/lang/String; = "web"

.field public static final URI_3G_TEST:Ljava/lang/String; = "3g_test"

.field public static final URI_4G_TEST:Ljava/lang/String; = "4g_test"

.field public static final URI_MEMORY_USAGE:Ljava/lang/String; = "memory_usage"

.field public static final URI_NOTIFICATION_TEST:Ljava/lang/String; = "notification_test"

.field public static final URI_POWER_CONFIGURATION:Ljava/lang/String; = "power_configuration"

.field public static final URI_POWER_USAGE:Ljava/lang/String; = "power_usage"

.field public static final URI_SDCARD_USAGE:Ljava/lang/String; = "sdcard_usage"

.field public static final URI_SETTING:Ljava/lang/String; = "setting"

.field public static final URI_WIFI_TEST:Ljava/lang/String; = "wifi_test"


# instance fields
.field private action:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sprint/dsa/data/InfoItem;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprint/dsa/data/InfoItem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/dsa/data/InfoItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sprint/dsa/data/InfoItem;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sprint/dsa/data/InfoItem;->action:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 2
    .parameter "desc"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sprint/dsa/data/InfoItem;->desc:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sprint/dsa/data/InfoItem;->title:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sprint/dsa/data/InfoItem;->uri:Ljava/lang/String;

    .line 57
    return-void
.end method
