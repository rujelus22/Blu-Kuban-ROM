.class final Lcom/dropbox/android/filemanager/l;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldbxyzptlk/l/o;

.field final synthetic c:Lcom/dropbox/android/taskqueue/m;

.field final synthetic d:Lcom/dropbox/android/filemanager/g;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/g;Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/dropbox/android/filemanager/l;->d:Lcom/dropbox/android/filemanager/g;

    iput-object p2, p0, Lcom/dropbox/android/filemanager/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/android/filemanager/l;->b:Ldbxyzptlk/l/o;

    iput-object p4, p0, Lcom/dropbox/android/filemanager/l;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dropbox/android/filemanager/l;->d:Lcom/dropbox/android/filemanager/g;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/l;->b:Ldbxyzptlk/l/o;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/l;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/android/filemanager/g;->a(Lcom/dropbox/android/filemanager/g;Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V

    .line 382
    return-void
.end method
