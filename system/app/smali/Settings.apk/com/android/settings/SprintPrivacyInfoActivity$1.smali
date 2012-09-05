.class Lcom/android/settings/SprintPrivacyInfoActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SprintPrivacyInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SprintPrivacyInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SprintPrivacyInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SprintPrivacyInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/SprintPrivacyInfoActivity$1;->this$0:Lcom/android/settings/SprintPrivacyInfoActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/SprintPrivacyInfoActivity$1;->this$0:Lcom/android/settings/SprintPrivacyInfoActivity;

    #getter for: Lcom/android/settings/SprintPrivacyInfoActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v0}, Lcom/android/settings/SprintPrivacyInfoActivity;->access$000(Lcom/android/settings/SprintPrivacyInfoActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SprintPrivacyInfoActivity$1;->this$0:Lcom/android/settings/SprintPrivacyInfoActivity;

    const v2, 0x7f0b0919

    invoke-virtual {v1, v2}, Lcom/android/settings/SprintPrivacyInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
