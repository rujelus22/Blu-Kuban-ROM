.class Lcom/google/android/marvin/talkback/k;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lcom/google/android/marvin/utils/n;


# static fields
.field private static final a:Landroid/content/IntentFilter;


# instance fields
.field private final b:Lcom/google/android/marvin/talkback/l;

.field private final c:Lcom/google/android/marvin/talkback/n;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/marvin/talkback/k;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/marvin/talkback/l;Lcom/google/android/marvin/talkback/n;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/marvin/talkback/k;->b:Lcom/google/android/marvin/talkback/l;

    iput-object p2, p0, Lcom/google/android/marvin/talkback/k;->c:Lcom/google/android/marvin/talkback/n;

    return-void
.end method

.method public static a()Landroid/content/IntentFilter;
    .registers 1

    sget-object v0, Lcom/google/android/marvin/talkback/k;->a:Landroid/content/IntentFilter;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/google/android/marvin/talkback/k;->d:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/k;->d:Z

    if-nez v0, :cond_10

    const-class v0, Lcom/google/android/marvin/talkback/k;

    const/4 v1, 0x5

    const-string v2, "Service not initialized during broadcast."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/marvin/talkback/k;->b:Lcom/google/android/marvin/talkback/l;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/l;->a()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/k;->c:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/n;->a()V

    goto :goto_f
.end method
