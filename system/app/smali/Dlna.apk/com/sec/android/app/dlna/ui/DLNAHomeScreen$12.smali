.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$12;
.super Ljava/lang/Object;
.source "DLNAHomeScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$12;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$12;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->removeDialog(I)V

    .line 416
    return-void
.end method
