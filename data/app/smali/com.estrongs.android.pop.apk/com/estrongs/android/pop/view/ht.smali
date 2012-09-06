.class Lcom/estrongs/android/pop/view/ht;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/HelpActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/HelpActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ht;->a:Lcom/estrongs/android/pop/view/HelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ht;->a:Lcom/estrongs/android/pop/view/HelpActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/HelpActivity;->a(Lcom/estrongs/android/pop/view/HelpActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_f

    :goto_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_f
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ht;->a:Lcom/estrongs/android/pop/view/HelpActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/HelpActivity;->a(Lcom/estrongs/android/pop/view/HelpActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ht;->a:Lcom/estrongs/android/pop/view/HelpActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ht;->a:Lcom/estrongs/android/pop/view/HelpActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/HelpActivity;->b(Lcom/estrongs/android/pop/view/HelpActivity;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/HelpActivity;->a(Lcom/estrongs/android/pop/view/HelpActivity;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ht;->a:Lcom/estrongs/android/pop/view/HelpActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ht;->a:Lcom/estrongs/android/pop/view/HelpActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/HelpActivity;->b(Lcom/estrongs/android/pop/view/HelpActivity;)[I

    move-result-object v2

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/HelpActivity;->b(Lcom/estrongs/android/pop/view/HelpActivity;I)Z

    goto :goto_a

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
