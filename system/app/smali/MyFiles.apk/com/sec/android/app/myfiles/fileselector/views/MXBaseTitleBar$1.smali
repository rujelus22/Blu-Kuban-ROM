.class Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar$1;
.super Ljava/lang/Object;
.source "MXBaseTitleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;

.field final synthetic val$mThisView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar$1;->val$mThisView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;

    iput-object p3, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar$1;->val$path:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar$1;->val$mThisView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
