.class Lcom/google/android/apps/translate/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/SettingsActivity;->openAboutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/apps/translate/SettingsActivity$7;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 332
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/SettingsActivity$7;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->sendFeedback(Landroid/app/Activity;Z)V

    .line 335
    return-void
.end method
