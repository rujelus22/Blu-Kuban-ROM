.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$19;
.super Ljava/lang/Object;
.source "FunctionTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;
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
    .line 1133
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$19;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 1135
    const-string v0, "secondary--->"

    const-string v1, "calling activity secondary test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$19;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/SecondaryTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1137
    const-string v1, "secondary--->"

    const-string v2, "calling activity secondary test1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$19;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-virtual {v1, v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->startActivity(Landroid/content/Intent;)V

    .line 1139
    return-void
.end method
