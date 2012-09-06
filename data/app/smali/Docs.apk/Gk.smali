.class public LGk;
.super Ldd;
.source "ClientFlagSynchronizerThread.java"


# instance fields
.field private final a:LGh;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LGh;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ldd;-><init>()V

    .line 26
    iput-object p1, p0, LGk;->a:LGh;

    .line 27
    iput-object p2, p0, LGk;->a:Ljava/lang/String;

    .line 28
    iput-object p3, p0, LGk;->b:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected c()V
    .registers 4

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, LGk;->a:LGh;

    iget-object v1, p0, LGk;->a:Ljava/lang/String;

    iget-object v2, p0, LGk;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LGh;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch LGi; {:try_start_0 .. :try_end_9} :catch_a

    .line 38
    :goto_9
    return-void

    .line 35
    :catch_a
    move-exception v0

    .line 36
    const-string v1, "ClientFlagSynchronizerThread"

    const-string v2, "Failed synchronizing client flags."

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
