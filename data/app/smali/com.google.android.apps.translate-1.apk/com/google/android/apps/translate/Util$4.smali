.class final Lcom/google/android/apps/translate/Util$4;
.super Ljava/lang/Thread;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/Util;->getLanguagesFromServerAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/google/android/apps/translate/Util$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/android/apps/translate/Util$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->getLanguagesFromServer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 912
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/Util$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/LanguagesFactory;->refreshLanguagesFromProfile(Landroid/content/Context;)V

    .line 913
    iget-object v0, p0, Lcom/google/android/apps/translate/Util$4;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.translate.broadcast.LANGUAGES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 915
    :cond_1d
    return-void
.end method
