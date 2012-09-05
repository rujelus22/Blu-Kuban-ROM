.class Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$1;
.super Ljava/lang/Object;
.source "MXToolBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->setUpButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->pressedUpButton()V

    .line 75
    return-void
.end method
