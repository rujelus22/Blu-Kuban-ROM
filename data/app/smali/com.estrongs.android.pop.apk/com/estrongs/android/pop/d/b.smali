.class Lcom/estrongs/android/pop/d/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/d/a;

.field private final synthetic b:Lcom/estrongs/android/pop/d/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/d/a;Lcom/estrongs/android/pop/d/c;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/d/b;->a:Lcom/estrongs/android/pop/d/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/d/b;->b:Lcom/estrongs/android/pop/d/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/d/b;->b:Lcom/estrongs/android/pop/d/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/d/c;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method
