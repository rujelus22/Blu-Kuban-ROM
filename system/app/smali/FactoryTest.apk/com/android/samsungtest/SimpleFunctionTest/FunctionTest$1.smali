.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$1;
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
    .line 209
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 211
    sput-boolean v1, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sft_status:Z

    .line 212
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->simpleFunctionTestStart(Z)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;Z)V

    .line 214
    return-void
.end method
