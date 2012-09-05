.class Lcom/android/mms/ui/CMASAlertFullScreen$2;
.super Ljava/lang/Object;
.source "CMASAlertFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASAlertFullScreen;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASAlertFullScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/mms/ui/CMASAlertFullScreen$2;->this$0:Lcom/android/mms/ui/CMASAlertFullScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/CMASAlertFullScreen$2;->this$0:Lcom/android/mms/ui/CMASAlertFullScreen;

    #calls: Lcom/android/mms/ui/CMASAlertFullScreen;->dismiss()V
    invoke-static {v0}, Lcom/android/mms/ui/CMASAlertFullScreen;->access$100(Lcom/android/mms/ui/CMASAlertFullScreen;)V

    .line 118
    return-void
.end method
