.class final Lcom/twitter/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/twitter/android/o;

.field private final d:Landroid/accounts/Account;

.field private e:Lcom/twitter/android/service/AuthTokenService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/o;Landroid/accounts/Account;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/n;->c:Lcom/twitter/android/o;

    iput-object p4, p0, Lcom/twitter/android/n;->d:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    check-cast p2, Lcom/twitter/android/service/a;

    invoke-virtual {p2}, Lcom/twitter/android/service/a;->a()Lcom/twitter/android/service/AuthTokenService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/n;->e:Lcom/twitter/android/service/AuthTokenService;

    iget-object v0, p0, Lcom/twitter/android/n;->e:Lcom/twitter/android/service/AuthTokenService;

    iget-object v1, p0, Lcom/twitter/android/n;->c:Lcom/twitter/android/o;

    iget-object v2, p0, Lcom/twitter/android/n;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/n;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/n;->d:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/service/AuthTokenService;->a(Lcom/twitter/android/service/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/n;->e:Lcom/twitter/android/service/AuthTokenService;

    return-void
.end method
