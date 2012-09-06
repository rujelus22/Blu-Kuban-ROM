.class Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$1;
.super Ljava/lang/Object;
.source "InputLanguageSelection.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$1;->this$0:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, goToMarket:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #goToMarket:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://search?q=ICS language pack"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .restart local v0       #goToMarket:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    :try_start_13
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$1;->this$0:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_18} :catch_1a

    .line 107
    :goto_18
    const/4 v1, 0x1

    return v1

    .line 104
    :catch_1a
    move-exception v1

    goto :goto_18
.end method
