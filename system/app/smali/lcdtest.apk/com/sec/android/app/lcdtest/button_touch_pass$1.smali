.class Lcom/sec/android/app/lcdtest/button_touch_pass$1;
.super Ljava/util/TimerTask;
.source "button_touch_pass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/button_touch_pass;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/button_touch_pass;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/button_touch_pass;)V
    .registers 2
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/button_touch_pass$1;->this$0:Lcom/sec/android/app/lcdtest/button_touch_pass;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch_pass$1;->this$0:Lcom/sec/android/app/lcdtest/button_touch_pass;

    invoke-virtual {v0}, Lcom/sec/android/app/lcdtest/button_touch_pass;->finish()V

    .line 22
    return-void
.end method
