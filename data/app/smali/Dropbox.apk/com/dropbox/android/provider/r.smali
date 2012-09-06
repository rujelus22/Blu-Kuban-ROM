.class public Lcom/dropbox/android/provider/r;
.super Ljava/lang/Thread;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/dropbox/android/taskqueue/MetadataTask;

.field private c:Lcom/dropbox/android/taskqueue/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/dropbox/android/provider/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/android/taskqueue/MetadataTask;)V
    .registers 2
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dropbox/android/provider/r;->b:Lcom/dropbox/android/taskqueue/MetadataTask;

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 20
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->g()Lcom/dropbox/android/taskqueue/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/provider/r;->c:Lcom/dropbox/android/taskqueue/i;

    .line 24
    iget-object v0, p0, Lcom/dropbox/android/provider/r;->c:Lcom/dropbox/android/taskqueue/i;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/i;->c()V

    .line 25
    iget-object v0, p0, Lcom/dropbox/android/provider/r;->c:Lcom/dropbox/android/taskqueue/i;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/i;->a()V

    .line 27
    iget-object v0, p0, Lcom/dropbox/android/provider/r;->b:Lcom/dropbox/android/taskqueue/MetadataTask;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/MetadataTask;->c()Lcom/dropbox/android/taskqueue/m;

    .line 30
    iget-object v0, p0, Lcom/dropbox/android/provider/r;->c:Lcom/dropbox/android/taskqueue/i;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/i;->e()V

    .line 31
    return-void
.end method
