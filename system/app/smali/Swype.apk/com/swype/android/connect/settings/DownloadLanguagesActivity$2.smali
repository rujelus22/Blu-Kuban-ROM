.class Lcom/swype/android/connect/settings/DownloadLanguagesActivity$2;
.super Ljava/lang/Object;
.source "DownloadLanguagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 78
    iput-object p1, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$2;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/swype/android/connect/settings/DownloadLanguagesActivity$2;->this$0:Lcom/swype/android/connect/settings/DownloadLanguagesActivity;

    invoke-virtual {v0}, Lcom/swype/android/connect/settings/DownloadLanguagesActivity;->finish()V

    .line 81
    return-void
.end method
