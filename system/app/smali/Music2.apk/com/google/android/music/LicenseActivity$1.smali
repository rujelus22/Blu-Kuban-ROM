.class Lcom/google/android/music/LicenseActivity$1;
.super Landroid/os/Handler;
.source "LicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LicenseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/LicenseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/music/LicenseActivity$1;->this$0:Lcom/google/android/music/LicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_11

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/LicenseActivity$1;->this$0:Lcom/google/android/music/LicenseActivity;

    #calls: Lcom/google/android/music/LicenseActivity;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/google/android/music/LicenseActivity;->access$000(Lcom/google/android/music/LicenseActivity;Ljava/lang/String;)V

    .line 115
    .end local v0           #text:Ljava/lang/String;
    :goto_10
    return-void

    .line 113
    :cond_11
    iget-object v1, p0, Lcom/google/android/music/LicenseActivity$1;->this$0:Lcom/google/android/music/LicenseActivity;

    #calls: Lcom/google/android/music/LicenseActivity;->showErrorAndFinish()V
    invoke-static {v1}, Lcom/google/android/music/LicenseActivity;->access$100(Lcom/google/android/music/LicenseActivity;)V

    goto :goto_10
.end method
