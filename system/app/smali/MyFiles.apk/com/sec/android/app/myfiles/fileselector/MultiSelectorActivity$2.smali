.class Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$2;
.super Ljava/lang/Object;
.source "MultiSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->setResultAndFinish(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->access$000(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;Z)V

    .line 395
    return-void
.end method
