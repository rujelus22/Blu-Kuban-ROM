.class final Lcom/dropbox/android/filemanager/k;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldbxyzptlk/l/o;

.field final synthetic d:Lcom/dropbox/android/filemanager/g;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/g;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/dropbox/android/filemanager/k;->d:Lcom/dropbox/android/filemanager/g;

    iput-object p2, p0, Lcom/dropbox/android/filemanager/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/android/filemanager/k;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/android/filemanager/k;->c:Ldbxyzptlk/l/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 371
    iget-object v0, p0, Lcom/dropbox/android/filemanager/k;->d:Lcom/dropbox/android/filemanager/g;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/k;->c:Ldbxyzptlk/l/o;

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/android/filemanager/g;->a(Lcom/dropbox/android/filemanager/g;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    .line 372
    return-void
.end method
