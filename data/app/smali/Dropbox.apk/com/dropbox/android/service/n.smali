.class final Lcom/dropbox/android/service/n;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/service/r;

.field final synthetic b:Lcom/dropbox/android/service/l;


# direct methods
.method constructor <init>(Lcom/dropbox/android/service/l;Lcom/dropbox/android/service/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Lcom/dropbox/android/service/n;->b:Lcom/dropbox/android/service/l;

    iput-object p2, p0, Lcom/dropbox/android/service/n;->a:Lcom/dropbox/android/service/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/dropbox/android/service/n;->a:Lcom/dropbox/android/service/r;

    invoke-virtual {v0}, Lcom/dropbox/android/service/r;->a()V

    .line 947
    return-void
.end method
