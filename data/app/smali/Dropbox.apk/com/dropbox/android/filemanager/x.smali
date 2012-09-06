.class final Lcom/dropbox/android/filemanager/x;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/v;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/v;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dropbox/android/filemanager/x;->a:Lcom/dropbox/android/filemanager/v;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 150
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/filemanager/s;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/ap;

    .line 152
    iget-object v2, p0, Lcom/dropbox/android/filemanager/x;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v2}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/filemanager/v;)Lcom/dropbox/android/util/ad;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/android/util/ap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dropbox/android/util/ad;->b(Ljava/lang/String;)V

    goto :goto_10

    .line 154
    :cond_2a
    return-void
.end method
