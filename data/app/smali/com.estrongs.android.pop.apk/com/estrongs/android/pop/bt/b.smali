.class Lcom/estrongs/android/pop/bt/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/bt/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/bt/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/bt/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/b;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "OBEXFtpServer"

    const-string v1, "setProgressDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(I)V
    .registers 5

    const-string v0, "OBEXFtpServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setProgressMaximum: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "OBEXFtpServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(I)V
    .registers 5

    const-string v0, "OBEXFtpServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setProgressValue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
