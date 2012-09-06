.class final LTp;
.super LTi;
.source "SingleFeedFilter.java"


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p2, p0, LTp;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LTi;-><init>(Ljava/lang/String;LTj;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 188
    if-nez p1, :cond_4

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "q"

    iget-object v2, p0, LTp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3
.end method
