.class public final Lcom/intangibleobject/securesettings/library/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "bundle extra %s appears to be null or empty.  It must be a non-empty string"

    sput-object v0, Lcom/intangibleobject/securesettings/library/a;->a:Ljava/lang/String;

    const-string v0, "bundle must contain extra %s"

    sput-object v0, Lcom/intangibleobject/securesettings/library/a;->b:Ljava/lang/String;

    const-string v0, "bundle must contain %d key(s), but currently contains %d keys: %s"

    sput-object v0, Lcom/intangibleobject/securesettings/library/a;->c:Ljava/lang/String;

    const-string v0, "bundle extra %s expected type %s but got something else"

    sput-object v0, Lcom/intangibleobject/securesettings/library/a;->d:Ljava/lang/String;

    const-class v0, Lcom/intangibleobject/securesettings/library/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/library/a;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Intent;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/intangibleobject/securesettings/library/a;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_3
.end method

.method public static a(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_3

    :catch_9
    move-exception v0

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    const/4 v0, 0x1

    goto :goto_3
.end method
