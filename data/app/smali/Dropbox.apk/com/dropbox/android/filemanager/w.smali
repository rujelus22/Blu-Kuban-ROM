.class final Lcom/dropbox/android/filemanager/w;
.super Ljava/util/TimerTask;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/v;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/v;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dropbox/android/filemanager/w;->a:Lcom/dropbox/android/filemanager/v;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/android/filemanager/w;->a:Lcom/dropbox/android/filemanager/v;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    .line 119
    return-void
.end method
