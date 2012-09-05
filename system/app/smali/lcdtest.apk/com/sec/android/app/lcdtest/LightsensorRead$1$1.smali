.class Lcom/sec/android/app/lcdtest/LightsensorRead$1$1;
.super Ljava/lang/Object;
.source "LightsensorRead.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/LightsensorRead$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/lcdtest/LightsensorRead$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/LightsensorRead$1;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/LightsensorRead$1$1;->this$1:Lcom/sec/android/app/lcdtest/LightsensorRead$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead$1$1;->this$1:Lcom/sec/android/app/lcdtest/LightsensorRead$1;

    iget-object v0, v0, Lcom/sec/android/app/lcdtest/LightsensorRead$1;->this$0:Lcom/sec/android/app/lcdtest/LightsensorRead;

    #calls: Lcom/sec/android/app/lcdtest/LightsensorRead;->printCurrentLuxInfo()V
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->access$100(Lcom/sec/android/app/lcdtest/LightsensorRead;)V

    .line 87
    return-void
.end method
