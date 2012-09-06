.class Lcom/estrongs/android/pop/app/dd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_3d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;I)V

    :goto_37
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    goto :goto_11

    :cond_3d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;I)V

    goto :goto_37
.end method
