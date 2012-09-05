.class final Lcom/a/a/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/a/a/a/a/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/a/a/a/d;->a:Lcom/a/a/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a/a/d;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->a(Lcom/a/a/a/a/a/c;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "invokeThreadForLoad Exception ........"

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
