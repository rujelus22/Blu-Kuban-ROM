.class public Lcom/dropbox/android/activity/Browser;
.super Lcom/dropbox/android/activity/BrowserWithHistoryStack;
.source "panda.py"


# static fields
.field private static final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/dropbox/android/activity/Browser;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/Browser;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a_()V
    .registers 5

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/dropbox/android/activity/Browser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_50

    invoke-static {v0}, Lcom/dropbox/android/util/Z;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 52
    sget-object v1, Lcom/dropbox/android/activity/Browser;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid uri passed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "invalid uri passed"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    sget-object v0, Lcom/dropbox/android/activity/Browser;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling activity w/ invalid uri was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/android/activity/Browser;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    .line 58
    :cond_50
    invoke-super {p0, v0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->a(Landroid/net/Uri;)V

    .line 59
    return-void
.end method

.method protected final f()Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/dropbox/android/activity/Browser;->a_()V

    .line 18
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/Browser;->setIntent(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/dropbox/android/activity/Browser;->a_()V

    .line 44
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->onNewIntent(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->onResume()V

    .line 25
    invoke-virtual {p0}, Lcom/dropbox/android/activity/Browser;->w()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 28
    :cond_f
    return-void
.end method
