.class final Lcom/dropbox/android/widget/quickactions/b;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/b;->a:Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 23
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/b;->a:Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;

    iget-wide v1, v1, Lcom/dropbox/android/widget/quickactions/ButtonCancelUpload;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/filemanager/v;->a(J)V

    .line 24
    return-void
.end method
