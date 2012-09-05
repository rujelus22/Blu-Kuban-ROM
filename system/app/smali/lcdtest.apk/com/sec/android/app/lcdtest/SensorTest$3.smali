.class Lcom/sec/android/app/lcdtest/SensorTest$3;
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
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/SensorTest$3;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest$3;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    const-class v2, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest$3;->this$0:Lcom/sec/android/app/lcdtest/SensorTest;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/lcdtest/SensorTest;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
