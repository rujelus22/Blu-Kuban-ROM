.class Lcom/estrongs/android/pop/fs/l;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/jcraft/jsch/Session;

.field b:Lcom/jcraft/jsch/ChannelSftp;

.field c:Ljava/lang/String;

.field d:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/fs/l;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/fs/l;)V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/fs/l;-><init>()V

    return-void
.end method
