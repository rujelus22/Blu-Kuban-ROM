.class Lcom/sec/android/app/lcdtest/SensorTest$2;
.super Ljava/lang/Object;
.source "SensorTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/SensorTest;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/SensorTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/SensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/SensorTest$2;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest$2;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    #calls: Lcom/sec/android/app/lcdtest/SensorTest;->gyroSelfTest()V
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/SensorTest;->access$000(Lcom/sec/android/app/lcdtest/SensorTest;)V

    .line 113
    return-void
.end method
