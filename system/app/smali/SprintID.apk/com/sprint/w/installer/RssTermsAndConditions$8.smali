.class Lcom/sprint/w/installer/RssTermsAndConditions$8;
.super Landroid/webkit/WebViewClient;
.source "RssTermsAndConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssTermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssTermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sprint/w/installer/RssTermsAndConditions$8;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$8;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/RssTermsAndConditions;->mAgree:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    return-void
.end method
