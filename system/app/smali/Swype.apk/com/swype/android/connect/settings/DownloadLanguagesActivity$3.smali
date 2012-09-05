.class Lcom/swype/android/connect/settings/DownloadLanguagesActivity$3;
.super Ljava/lang/Object;
.source "DownloadLanguagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->populateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/settings/DownloadLanguagesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$3;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$3;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-virtual {v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$3;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    #calls: Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->populateList()V
    invoke-static {v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->access$000(Lcom/swype/android/connect/settings/DownloadLanguagesActivity;)V

    .line 96
    :cond_d
    return-void
.end method
