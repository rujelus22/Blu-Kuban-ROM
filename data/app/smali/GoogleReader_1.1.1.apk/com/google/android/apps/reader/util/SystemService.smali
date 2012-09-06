.class public final Lcom/google/android/apps/reader/util/SystemService;
.super Ljava/lang/Object;
.source "SystemService.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getClipboardManager(Landroid/content/Context;)Landroid/text/ClipboardManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 50
    const-string v0, "clipboard"

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/util/SystemService;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/ClipboardManager;

    return-object p0
.end method

.method public static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 42
    const-string v0, "connectivity"

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/util/SystemService;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "input_method"

    invoke-static {p0, v0}, Lcom/google/android/apps/reader/util/SystemService;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private static getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
