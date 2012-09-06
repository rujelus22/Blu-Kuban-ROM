.class Lcom/android/inputmethod/latin/Settings$5;
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$5;->this$0:Lcom/android/inputmethod/latin/Settings;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "arg0"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$5;->this$0:Lcom/android/inputmethod/latin/Settings;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/inputmethod/latin/Settings;->showKeyHeightDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Settings;->access$2(Lcom/android/inputmethod/latin/Settings;Ljava/lang/String;)V

    .line 582
    const/4 v0, 0x1

    return v0
.end method
