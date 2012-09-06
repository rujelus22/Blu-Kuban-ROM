.class Lcom/google/android/apps/translate/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/SettingsActivity;->setVoiceInputLanguageOnClickListener(Landroid/app/Dialog;Landroid/widget/ListView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SettingsActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/SettingsActivity;Ljava/lang/String;Landroid/widget/ListView;Landroid/app/Dialog;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/android/apps/translate/SettingsActivity$4;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    iput-object p2, p0, Lcom/google/android/apps/translate/SettingsActivity$4;->val$language:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/translate/SettingsActivity$4;->val$listView:Landroid/widget/ListView;

    iput-object p4, p0, Lcom/google/android/apps/translate/SettingsActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/apps/translate/SettingsActivity$4;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/translate/SettingsActivity$4;->val$language:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/translate/SettingsActivity$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/translate/Profile;->setVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/translate/SettingsActivity$4;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    #calls: Lcom/google/android/apps/translate/SettingsActivity;->setupVoiceInputPreferences()V
    invoke-static {v0}, Lcom/google/android/apps/translate/SettingsActivity;->access$200(Lcom/google/android/apps/translate/SettingsActivity;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/translate/SettingsActivity$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 276
    return-void
.end method
