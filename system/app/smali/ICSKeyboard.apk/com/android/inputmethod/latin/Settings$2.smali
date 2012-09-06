.class Lcom/android/inputmethod/latin/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Settings;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$2;->this$0:Lcom/android/inputmethod/latin/Settings;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preference"

    .prologue
    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 462
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$2;->this$0:Lcom/android/inputmethod/latin/Settings;

    .line 465
    const-string v2, "Select Picture"

    .line 464
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 465
    const/4 v3, 0x0

    .line 464
    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 466
    const/4 v1, 0x1

    return v1
.end method
