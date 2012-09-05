.class Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$2;
.super Landroid/webkit/WebChromeClient;
.source "SnsDisclaimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$2;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$2;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->setProgress(I)V

    .line 180
    return-void
.end method
