.class public Lcom/google/android/apps/googlevoice/system/ShortcutManagerImpl;
.super Ljava/lang/Object;
.source "ShortcutManagerImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/ShortcutManager;


# static fields
.field private static final ACTION_UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"


# instance fields
.field private final context:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/proxy/ContextProxy;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/ShortcutManagerImpl;->context:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    .line 25
    return-void
.end method


# virtual methods
.method public getCreateShortcutIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent$ShortcutIconResource;)Landroid/content/Intent;
    .registers 6
    .parameter "shortcutIntent"
    .parameter "shortcutName"
    .parameter "shortcutIcon"

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v0, returnIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method

.method public removeShortcut(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5
    .parameter "shortcutIntent"
    .parameter "shortcutName"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/ShortcutManagerImpl;->context:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    return-void
.end method
