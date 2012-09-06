.class public Lcom/dropbox/android/service/DropboxNetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/dropbox/android/service/DropboxNetworkReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/service/DropboxNetworkReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/dropbox/android/service/DropboxNetworkReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting receiver enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-class v0, Lcom/dropbox/android/service/DropboxNetworkReceiver;

    invoke-static {p0, v0, p1}, Lcom/dropbox/android/util/aI;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-static {p0, p2}, Lcom/dropbox/android/util/h;->a(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 22
    :cond_1b
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/t;->c()V

    .line 24
    :cond_22
    return-void
.end method
