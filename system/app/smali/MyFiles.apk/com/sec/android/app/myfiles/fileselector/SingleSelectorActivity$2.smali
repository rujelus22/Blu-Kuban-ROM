.class Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$2;
.super Ljava/lang/Object;
.source "SingleSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->setResultAndFinish(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->access$000(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;Z)V

    .line 402
    return-void
.end method
