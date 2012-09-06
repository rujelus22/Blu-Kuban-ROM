.class Lcom/estrongs/android/pop/bt/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/bt/OBEXFtpServerService;

.field private final b:Lcom/estrongs/android/pop/bt/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/bt/OBEXFtpServerService;Lcom/estrongs/android/pop/bt/a;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/e;->a:Lcom/estrongs/android/pop/bt/OBEXFtpServerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/pop/bt/e;->b:Lcom/estrongs/android/pop/bt/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/e;->b:Lcom/estrongs/android/pop/bt/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/a;->b()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/e;->b:Lcom/estrongs/android/pop/bt/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/a;->c()V

    return-void
.end method

.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/e;->b:Lcom/estrongs/android/pop/bt/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/a;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
