.class Lcom/sec/android/app/dlna/ui/AddinActivity$7;
.super Ljava/lang/Object;
.source "AddinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 851
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$7;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$7;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinActivity;->destroyAllShare()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$100(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$7;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    .line 855
    return-void
.end method
