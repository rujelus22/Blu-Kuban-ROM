.class Lcom/android/browser/SecBrowserGallery$2;
.super Ljava/lang/Object;
.source "SecBrowserGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SecBrowserGallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SecBrowserGallery;


# direct methods
.method constructor <init>(Lcom/android/browser/SecBrowserGallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/android/browser/SecBrowserGallery$2;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$2;->this$0:Lcom/android/browser/SecBrowserGallery;

    #calls: Lcom/android/browser/SecBrowserGallery;->dispatchUnpress()V
    invoke-static {v0}, Lcom/android/browser/SecBrowserGallery;->access$300(Lcom/android/browser/SecBrowserGallery;)V

    .line 1251
    return-void
.end method
