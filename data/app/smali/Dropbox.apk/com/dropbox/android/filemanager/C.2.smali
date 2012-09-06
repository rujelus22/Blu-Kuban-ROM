.class final Lcom/dropbox/android/filemanager/C;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/B;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/B;)V
    .registers 2
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/dropbox/android/filemanager/C;->a:Lcom/dropbox/android/filemanager/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/dropbox/android/filemanager/C;->a:Lcom/dropbox/android/filemanager/B;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/B;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/v;->c(Lcom/dropbox/android/filemanager/v;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/util/aw;->g:Lcom/dropbox/android/util/aw;

    invoke-static {v0, v1}, Lcom/dropbox/android/service/NotificationService;->b(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V

    .line 940
    return-void
.end method
