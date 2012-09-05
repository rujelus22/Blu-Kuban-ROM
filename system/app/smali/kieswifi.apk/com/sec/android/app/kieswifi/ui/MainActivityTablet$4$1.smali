.class Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4$1;
.super Ljava/lang/Object;
.source "MainActivityTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4$1;->this$1:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 167
    const/4 v0, 0x1

    const-string v1, "device change"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4$1;->this$1:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;

    iget-object v0, v0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$600(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;->notifyDataSetChanged()V

    .line 169
    return-void
.end method
