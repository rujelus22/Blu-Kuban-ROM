.class final Lcom/dropbox/android/filemanager/h;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/g;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/g;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/dropbox/android/filemanager/h;->a:Lcom/dropbox/android/filemanager/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dropbox/android/filemanager/h;->a:Lcom/dropbox/android/filemanager/g;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/g;->a(Lcom/dropbox/android/filemanager/g;)V

    .line 228
    return-void
.end method
