.class public Lcom/samsung/swift/browser/SwiftWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SwiftWebViewClient.java"


# static fields
.field private static final MAILTO_PREFIX:Ljava/lang/String; = "mailto:"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/samsung/swift/browser/SwiftWebViewClient;->context:Landroid/content/Context;

    .line 115
    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .parameter "view"
    .parameter "url"

    .prologue
    .line 135
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 136
    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, emailIntent:Landroid/content/Intent;
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "android.intent.extra.EMAIL"

    const-string v2, "^mailto:"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/samsung/swift/browser/SwiftWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    .end local v0           #emailIntent:Landroid/content/Intent;
    :goto_2a
    const/4 v1, 0x1

    return v1

    .line 143
    :cond_2c
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2a
.end method
