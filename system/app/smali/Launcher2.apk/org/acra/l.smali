.class final Lorg/acra/l;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;)V
    .registers 2
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lorg/acra/l;->a:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 714
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 715
    invoke-static {}, Lorg/acra/ErrorReporter;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->n()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 716
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 717
    return-void
.end method
