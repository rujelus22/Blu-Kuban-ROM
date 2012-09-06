.class public Ldbxyzptlk/e/r;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# instance fields
.field private a:Lcom/dropbox/android/filemanager/LocalEntry;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Ldbxyzptlk/e/r;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 17
    iput-object p3, p0, Ldbxyzptlk/e/r;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected final varargs a(Landroid/content/Context;[Ljava/lang/Void;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/e/r;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, p0, Ldbxyzptlk/e/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 9
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/r;->a(Landroid/content/Context;[Ljava/lang/Void;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    return-void
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    check-cast p2, Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/r;->a(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    return-void
.end method
