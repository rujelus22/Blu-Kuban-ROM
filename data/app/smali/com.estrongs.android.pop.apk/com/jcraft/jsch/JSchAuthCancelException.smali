.class Lcom/jcraft/jsch/JSchAuthCancelException;
.super Lcom/jcraft/jsch/JSchException;


# instance fields
.field method:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/jcraft/jsch/JSchException;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jcraft/jsch/JSchAuthCancelException;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/JSchAuthCancelException;->method:Ljava/lang/String;

    return-object v0
.end method
