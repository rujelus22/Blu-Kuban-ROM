.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$10;
.super Ljava/lang/Object;
.source "FunctionTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$10;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$10;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$10;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivityForResult(Landroid/content/Intent;I)V

    .line 366
    return-void
.end method
