.class Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$1;
.super Ljava/lang/Object;
.source "SensorTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/AccImageTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;

    invoke-virtual {v1, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
