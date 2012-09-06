.class Lcom/jcraft/jsch/Session$GlobalRequestReply;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/jcraft/jsch/Session;

.field private b:Ljava/lang/Thread;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/Session;)V
    .registers 3

    iput-object p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a:Lcom/jcraft/jsch/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b:Ljava/lang/Thread;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->b:Ljava/lang/Thread;

    return-object v0
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->c:I

    return-void
.end method
