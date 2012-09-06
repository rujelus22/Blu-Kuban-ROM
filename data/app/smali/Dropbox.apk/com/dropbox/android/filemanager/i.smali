.class final Lcom/dropbox/android/filemanager/i;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/n;

.field final synthetic b:I

.field final synthetic c:Lcom/dropbox/android/filemanager/g;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/n;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/dropbox/android/filemanager/i;->c:Lcom/dropbox/android/filemanager/g;

    iput-object p2, p0, Lcom/dropbox/android/filemanager/i;->a:Lcom/dropbox/android/filemanager/n;

    iput p3, p0, Lcom/dropbox/android/filemanager/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dropbox/android/filemanager/i;->c:Lcom/dropbox/android/filemanager/g;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/i;->a:Lcom/dropbox/android/filemanager/n;

    iget v2, p0, Lcom/dropbox/android/filemanager/i;->b:I

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/filemanager/g;->a(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/n;I)V

    .line 259
    return-void
.end method
