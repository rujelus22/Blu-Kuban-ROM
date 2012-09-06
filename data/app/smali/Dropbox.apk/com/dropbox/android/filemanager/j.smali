.class final Lcom/dropbox/android/filemanager/j;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/n;

.field final synthetic b:Landroid/util/Pair;

.field final synthetic c:I

.field final synthetic d:Lcom/dropbox/android/filemanager/g;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/n;Landroid/util/Pair;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/dropbox/android/filemanager/j;->d:Lcom/dropbox/android/filemanager/g;

    iput-object p2, p0, Lcom/dropbox/android/filemanager/j;->a:Lcom/dropbox/android/filemanager/n;

    iput-object p3, p0, Lcom/dropbox/android/filemanager/j;->b:Landroid/util/Pair;

    iput p4, p0, Lcom/dropbox/android/filemanager/j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dropbox/android/filemanager/j;->d:Lcom/dropbox/android/filemanager/g;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/j;->a:Lcom/dropbox/android/filemanager/n;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/j;->b:Landroid/util/Pair;

    iget v3, p0, Lcom/dropbox/android/filemanager/j;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/android/filemanager/g;->a(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/n;Landroid/util/Pair;I)V

    .line 276
    return-void
.end method
