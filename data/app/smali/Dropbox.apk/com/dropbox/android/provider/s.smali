.class public Lcom/dropbox/android/provider/s;
.super Ljava/lang/Thread;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/dropbox/android/taskqueue/BulkMetadataTask;

.field private c:Lcom/dropbox/android/taskqueue/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/dropbox/android/provider/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;Lcom/dropbox/android/filemanager/U;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->a:Lcom/dropbox/android/taskqueue/m;

    iput-object v0, p0, Lcom/dropbox/android/provider/s;->c:Lcom/dropbox/android/taskqueue/m;

    .line 17
    new-instance v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;Lcom/dropbox/android/filemanager/U;)V

    iput-object v0, p0, Lcom/dropbox/android/provider/s;->b:Lcom/dropbox/android/taskqueue/BulkMetadataTask;

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dropbox/android/provider/s;->b:Lcom/dropbox/android/taskqueue/BulkMetadataTask;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->c()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/provider/s;->c:Lcom/dropbox/android/taskqueue/m;

    .line 27
    return-void
.end method
