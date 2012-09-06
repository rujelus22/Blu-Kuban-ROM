.class LEN;
.super Lwq;
.source "TrixJSVM.java"


# instance fields
.field final synthetic a:LEK;

.field private final a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LEK;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, LEN;->a:LEK;

    .line 299
    invoke-direct {p0}, Lwq;-><init>()V

    .line 300
    iput-object p2, p0, LEN;->a:Ljava/lang/Runnable;

    .line 301
    return-void
.end method


# virtual methods
.method public onApplicationInitialized(I)V
    .registers 3
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, LEN;->a:LEK;

    invoke-virtual {v0}, LEK;->a()V

    .line 306
    iget-object v0, p0, LEN;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 307
    return-void
.end method
