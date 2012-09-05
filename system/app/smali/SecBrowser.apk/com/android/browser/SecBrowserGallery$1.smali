.class Lcom/android/browser/SecBrowserGallery$1;
.super Ljava/lang/Object;
.source "SecBrowserGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecBrowserGallery;
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
    .line 150
    iput-object p1, p0, Lcom/android/browser/SecBrowserGallery$1;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$1;->this$0:Lcom/android/browser/SecBrowserGallery;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/SecBrowserGallery;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/android/browser/SecBrowserGallery;->access$002(Lcom/android/browser/SecBrowserGallery;Z)Z

    .line 154
    iget-object v0, p0, Lcom/android/browser/SecBrowserGallery$1;->this$0:Lcom/android/browser/SecBrowserGallery;

    invoke-virtual {v0}, Lcom/android/browser/SecBrowserGallery;->selectionChanged()V

    .line 155
    return-void
.end method
