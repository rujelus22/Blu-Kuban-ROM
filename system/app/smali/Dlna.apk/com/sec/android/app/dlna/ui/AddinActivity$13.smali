.class Lcom/sec/android/app/dlna/ui/AddinActivity$13;
.super Ljava/lang/Object;
.source "AddinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinActivity;->showInitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$13;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$13;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1091
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$13;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 1092
    const-string v1, "DLNA_Addin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showInitDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$13;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return-void
.end method