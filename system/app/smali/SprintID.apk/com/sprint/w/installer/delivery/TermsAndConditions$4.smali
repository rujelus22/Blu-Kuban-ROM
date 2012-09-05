.class Lcom/sprint/w/installer/delivery/TermsAndConditions$4;
.super Landroid/webkit/WebViewClient;
.source "TermsAndConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/TermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$4;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$4;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mAgree:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    return-void
.end method
