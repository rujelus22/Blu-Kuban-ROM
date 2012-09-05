.class Lcom/swype/android/settings/SwypeInputMethodSettings$1;
.super Ljava/lang/Object;
.source "SwypeInputMethodSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/SwypeInputMethodSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/SwypeInputMethodSettings;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/SwypeInputMethodSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/swype/android/settings/SwypeInputMethodSettings$1;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings$1;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettings;

    #getter for: Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;
    invoke-static {v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->access$000(Lcom/swype/android/settings/SwypeInputMethodSettings;)Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->deleteAllUserWords()V

    .line 334
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettings$1;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettings;

    #getter for: Lcom/swype/android/settings/SwypeInputMethodSettings;->core:Lcom/swype/android/jni/SwypeCore;
    invoke-static {v0}, Lcom/swype/android/settings/SwypeInputMethodSettings;->access$000(Lcom/swype/android/settings/SwypeInputMethodSettings;)Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->flushUserDatabase()V

    .line 335
    return-void
.end method
