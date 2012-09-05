.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$13;
.super Ljava/lang/Object;
.source "DLNAHomeScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 443
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$13;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$13;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->dismissDialog(I)V

    .line 446
    return-void
.end method
