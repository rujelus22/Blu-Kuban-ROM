.class Lcom/sec/android/app/lcdtest/AccImageTest$1;
.super Ljava/util/TimerTask;
.source "AccImageTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/AccImageTest;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/AccImageTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/AccImageTest;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/AccImageTest$1;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest$1;->this$0:Lcom/sec/android/app/lcdtest/AccImageTest;

    #calls: Lcom/sec/android/app/lcdtest/AccImageTest;->updateGUI()V
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/AccImageTest;->access$000(Lcom/sec/android/app/lcdtest/AccImageTest;)V

    .line 68
    return-void
.end method
