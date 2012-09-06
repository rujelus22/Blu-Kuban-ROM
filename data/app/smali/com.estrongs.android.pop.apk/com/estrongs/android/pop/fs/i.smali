.class public Lcom/estrongs/android/pop/fs/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/UserInfo;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/fs/i;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/pop/fs/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    const-string v0, "SFtp"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
