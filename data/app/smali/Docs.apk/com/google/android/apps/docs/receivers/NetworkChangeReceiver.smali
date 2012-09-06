.class public Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;
.super Lcom/google/android/apps/docs/GuiceBroadcastReceiver;
.source "NetworkChangeReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public a:LOh;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/docs/GuiceBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 43
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 44
    sget-object v0, Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected broadcast received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_24
    return-void

    .line 47
    :cond_25
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 49
    sget-object v1, Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;->a:Ljava/lang/String;

    const-string v2, "Network Change"

    invoke-static {v1, v2}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;->a:LOh;

    invoke-interface {v1, p1, v0}, LOh;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    goto :goto_24
.end method
